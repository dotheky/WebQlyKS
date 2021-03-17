using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Vntrip.vn.Models;
using Vntrip.vn.Content;

namespace Vntrip.vn.Controllers
{
    public class XemPhongController : Controller
    {
        vntripDataContext db = new vntripDataContext();
        // GET: XemPhong
        public ActionResult Index()
        {
            int _key =Convert.ToInt32( Request["key"]);
            var phong = (from p in db.Phongs
                         join ks in db.KhachSans on p.IDKhachSan equals ks.ID
                         join hap in db.HinhAnhPhongs on p.ID equals hap.IDPhong
                         where ks.ID == _key
                         select new xemphong
                         {
                             IDKS = ks.ID,
                             LinkKs=ks.LinkKS,
                             ID = p.ID,
                             TenPhong = p.TenPhong,
                             SoNguoi = p.SoNguoi,
                             LoaiPhong = p.LoaiPhong,
                             SoGiuong = p.SoGiuong,
                             MoTa = p.Mota,
                             Gia = p.Gia,
                             HinhAnhPhong = hap.link,
                             DienTich = (double)p.DienTich,
                             MoTaChiTiet = p.MoTaChiTiet,
                         }).Distinct();
            ViewBag.TenKhachSan = (from ks in db.KhachSans
                                   where ks.ID == _key
                                   select new xemphong
                                   {
                                       TenKhachSan = ks.TenKhachSan
                                   }).Distinct();

            ViewBag.DiaChi = (from ks in db.KhachSans
                              where ks.ID == _key
                              select new xemphong
                              {
                                  DiaChi = ks.DiaChi
                              }).Distinct();

            ViewBag.AnhKhachSan = (from ks in db.KhachSans
                                   join hak in db.HinhAnhKhachSans on ks.ID equals hak.IDKhachSan
                                   where ks.ID == _key
                                   select new xemphong
                                   {
                                       HinhAnhKhachSan = hak.link
                                   }).Distinct();
            ViewBag.ThongTin =  (from ks in db.KhachSans
                                   join tt in db.TinhThanhs on ks.IDTinhThanh equals tt.ID
                                   join dv in db.DanhSachDichVus on  ks.ID equals dv.IDKhachSan
                                   join tn in db.TienNghis on dv.IDTienNghi equals tn.ID 
                                   where ks.ID == _key
                                   select new xemphong
                                   {
                                       TenTinh = tt.TenTinhThanh,
                                       MoTaKs = ks.MoTaNgan,
                                       TienNghi = tn.TenTienNghi
                                   }).Distinct();
            ViewBag.TenTinhThanh = (from ks in db.KhachSans
                                   join tt in db.TinhThanhs on ks.IDTinhThanh equals tt.ID
                                   join dv in db.DanhSachDichVus on ks.ID equals dv.IDKhachSan
                                   join tn in db.TienNghis on dv.IDTienNghi equals tn.ID
                                   where ks.ID == _key
                                   group tt by tt.TenTinhThanh into ttt
                                   select new xemphong
                                   {
                                       TenTinh =ttt.Key
                                   }).Distinct();

            return View(phong);
        }
    }
}