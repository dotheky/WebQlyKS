using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Vntrip.vn.Models;
using System.Data;
using PagedList;

namespace Vntrip.vn.Controllers
{
    public class khachSanClientController : Controller
    {
        vntripDataContext db = new vntripDataContext();
        // GET: khachSanAdmin
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult TimKiem(int? page)
        {

            string _key = Request["key"];

            ViewBag.abc = (from ks in db.KhachSans
                            join tt in db.TinhThanhs on ks.IDTinhThanh equals tt.ID
                            where tt.TenTinhThanh == _key
                            select new timkiem
                            {
                                ID = ks.ID,
                                DiaChi=ks.DiaChi,
                                TenTinhThanh=tt.TenTinhThanh,
                                TenKhachSan = ks.TenKhachSan,
                                HinhAnhKS = ks.HinhAnhKS,
                                LoaiKhachSan = ks.LoaiKhachSan,
                                LinkKs = ks.LinkKS
                            }).Distinct();
            var khachsan = (from ks in db.KhachSans
                            join tt in db.TinhThanhs on ks.IDTinhThanh equals tt.ID
                            where tt.TenTinhThanh == _key
                            select new Khachsan
                            {
                                ID = ks.ID,
                                DiaChi = ks.DiaChi,
                                TenKhachSan = ks.TenKhachSan,
                                HinhAnhKS = ks.HinhAnhKS,
                                loaiKhachSan = ks.LoaiKhachSan
                            }).Distinct();
            ViewBag.LoaiKS = (from ks in db.KhachSans
                            join tt in db.TinhThanhs on ks.IDTinhThanh equals tt.ID
                            where tt.TenTinhThanh == _key
                              group ks by ks.LoaiKhachSan into kss
                              select new timkiem
                            {
                               
                                LoaiKhachSan = kss.Key,
                                
                            }).Distinct();
            ViewBag.SoLuongP = (from ks in db.KhachSans
                                join tt in db.TinhThanhs on ks.IDTinhThanh equals tt.ID
                                join p in db.Phongs on ks.ID equals p.IDKhachSan
                                where tt.TenTinhThanh == _key
                                group ks by ks.ID into kss
                                select new timkiem
                                {
                                    ID = kss.Key,
                                    SoLuongPhong = kss.Count()
                                });
            ViewBag.Gia = (from ks in db.KhachSans
                           join tt in db.TinhThanhs on ks.IDTinhThanh equals tt.ID
                           join p in db.Phongs on ks.ID equals p.IDKhachSan
                           where tt.TenTinhThanh == _key
                           group p by p.IDKhachSan into ph
                           select new timkiem
                           {
                               ID = (int)ph.Key,
                               Gia = ph.Min(g => g.Gia)
                           });
            ViewBag.QuanHuyen = (from ks in db.KhachSans
                                join tt in db.TinhThanhs on ks.IDTinhThanh equals tt.ID
                                join qh in db.QuanHuyens on tt.ID equals qh.IDTinhThanh
                                 where tt.TenTinhThanh == _key
                                 select new timkiem
                                {
                                    TenQuanHuyen = qh.TenQuanHuyen
                                }).Distinct();
            ViewBag.KhuVuc = (from ks in db.KhachSans
                                 join tt in db.TinhThanhs on ks.IDTinhThanh equals tt.ID
                                 join qh in db.QuanHuyens on tt.ID equals qh.IDTinhThanh
                                 join kv in db.KhuVucs on qh.ID equals kv.IDQuanHuyen
                              where tt.TenTinhThanh == _key
                              select new timkiem
                                 {
                                     TenKhuVuc = kv.TenKhuVuc
                                 }).Distinct(); ;
            ViewBag.TienNghi = (from ks in db.KhachSans
                                 join tt in db.TinhThanhs on ks.IDTinhThanh equals tt.ID
                                 join dv in db.DanhSachDichVus on ks.ID equals dv.IDKhachSan
                                 join tn in db.TienNghis on dv.IDTienNghi equals tn.ID
                                where tt.TenTinhThanh == _key
                                select new timkiem
                                 {
                                     TenTienNghi = tn.TenTienNghi
                                 }).Distinct();
            ViewBag.TinhThanh = _key ;
            ViewBag.SoLuongKS = (from ks in db.KhachSans
                                join tt in db.TinhThanhs on ks.IDTinhThanh equals tt.ID
                                where tt.TenTinhThanh == _key
                                select new timkiem
                                {
                                    TenKhachSan=ks.TenKhachSan
                                }).Distinct().Count();
            
            ViewBag.thongbaoks = "có " + ViewBag.SoLuongKS + " khách sạn đang sẵn phòng tại đây!";
            ViewBag.dem = khachsan.Count();
            return View(khachsan.ToPagedList(page ?? 1, 3));
        }
    }
}