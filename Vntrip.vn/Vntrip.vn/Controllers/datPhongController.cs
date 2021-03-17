using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Vntrip.vn.Models;
using Vntrip.vn.Content;

namespace Vntrip.vn.Controllers
{
    public class datPhongController : Controller
    {
        vntripDataContext db = new vntripDataContext();
        // GET: datPhong
        public ActionResult Index()
        {

            int _keyKS = Convert.ToInt32(Request["keyks"]); 
            int _keyPhong = Convert.ToInt32(Request["keyp"]);
            ViewBag.keyks = _keyKS;
            ViewBag.keyp = _keyPhong;
            ViewBag.date = (DateTime.Now.ToString("dd/MM/yyyy"));
            var phong = (from p in db.Phongs
                         join ks in db.KhachSans on p.IDKhachSan equals ks.ID
                         where ks.ID == _keyKS
                         select new datphong
                         {
                             IDKS=ks.ID,
                             ID = p.ID,
                             TenPhong = p.TenPhong,
                             SoNguoi = p.SoNguoi,
                             LoaiPhong = p.LoaiPhong,
                             SoGiuong = p.SoGiuong,
                             MoTa = p.Mota,
                             Gia = p.Gia,
                             DienTich = (double)p.DienTich,
                             MoTaChiTiet = p.MoTaChiTiet,
                             DiaChi = ks.DiaChi,
                         }).Distinct();

            //Ảnh phòng
            ViewBag.AnhPhong = (from p in db.Phongs
                                join hap in db.HinhAnhPhongs on p.ID equals hap.IDPhong
                                where p.ID == _keyPhong
                                select new datphong
                                {
                                    linka = hap.link
                                }).Distinct();
            ViewBag.TenPhong = (from p in db.Phongs
                                where p.ID == _keyPhong
                                select new datphong
                                {
                                    TenPhong=p.TenPhong
                                }).Distinct();

            //Tên khách sạn
            ViewBag.TenKhachSan = (from ks in db.KhachSans
                                   where ks.ID == _keyKS
                                   select new datphong
                                   {
                                       TenKhachSan = ks.TenKhachSan
                                   }).Distinct();

            //Địa chỉ
            ViewBag.DiaChi = (from ks in db.KhachSans
                              where ks.ID == _keyKS
                              select new datphong
                              {
                                  DiaChi = ks.DiaChi
                              }).Distinct();

            //Số người
            ViewBag.SoNguoi = (from p in db.Phongs
                               where p.ID == _keyPhong
                               select new datphong
                               {
                                   SoNguoi = p.SoNguoi
                               }).Distinct();
            //Giá phòng
            ViewBag.GiaPhong = (from p in db.Phongs
                                where p.ID == _keyPhong
                                select new datphong
                                {
                                    Gia = p.Gia
                                }).Distinct();

            //Loại phòng
            ViewBag.LoaiPhong = (from p in db.Phongs
                                 where p.ID == _keyPhong
                                 select new datphong
                                 {
                                     LoaiPhong = p.LoaiPhong
                                 }).Distinct();

            return View(phong);
        }
        public ActionResult XuLy()
        {
            //Lấy ra tên người đặt phòng
            string tennguoidat = Request["tennguoidat"];
            ViewBag.tennguoidat = tennguoidat;

            //Kiểm tra giới tính
            string gtnguoidat = Request["gtnguoidat"];
            if (gtnguoidat == "1")
            {
                ViewBag.gtnguoidat = "Anh";
            }
            else
                if (gtnguoidat == "2")
            {
                ViewBag.gtnguoidat = "Chị";
            }
            else
                if (gtnguoidat == "3")
            {
                ViewBag.gtnguoidat = "Khác";
            }

            //Lấy ra checkbox
            string check = Request["Checkbox1"];

            //lấy ra sdt người đặt
            string sdtnguoidat = (Request["sdtnguoidat"]);
            ViewBag.sdtnguoidat = sdtnguoidat;

            //email người đặt
            string emailnguoidat = (Request["emailnguoidat"]);
            ViewBag.emailnguoidat = emailnguoidat;

            //tên người nhận
            string tennguoinhan = Request["tennguoinhan"];

            //sdt người nhận
            string sdtnguoinhan = (Request["sdtnguoinhan"]);

            //Kiểm tra check box
            if (check == "true")
            {
                ViewBag.tennguoinhan = tennguoidat;
                ViewBag.sdtnguoinhan = sdtnguoidat;
            }
            else
            {
                ViewBag.tennguoinhan = tennguoinhan;
                ViewBag.sdtnguoinhan = sdtnguoinhan;
            }


            int _keyKS = Convert.ToInt32(Request["keyks"]);
            int _keyPhong = Convert.ToInt32(Request["keyp"]);
            var phong = (from p in db.Phongs
                         join ks in db.KhachSans on p.IDKhachSan equals ks.ID
                         where ks.ID == _keyKS
                         select new datphong
                         {
                             ID = p.ID,
                             TenPhong = p.TenPhong,
                             SoNguoi = p.SoNguoi,
                             LoaiPhong = p.LoaiPhong,
                             SoGiuong = p.SoGiuong,
                             MoTa = p.Mota,
                             Gia = p.Gia,
                             DienTich = (double)p.DienTich,
                             MoTaChiTiet = p.MoTaChiTiet,
                             DiaChi = ks.DiaChi,
                         }).Distinct();

            //Ảnh phòng
            ViewBag.AnhPhong = (from p in db.Phongs
                                join hap in db.HinhAnhPhongs on p.ID equals hap.IDPhong
                                where p.ID == _keyPhong
                                select new datphong
                                {
                                    linka = hap.link
                                }).Distinct();

            //Tên khách sạn
            ViewBag.TenKhachSan = (from ks in db.KhachSans
                                   where ks.ID == _keyKS
                                   select new datphong
                                   {
                                       TenKhachSan = ks.TenKhachSan
                                   }).Distinct();

            //Địa chỉ
            ViewBag.DiaChi = (from ks in db.KhachSans
                              where ks.ID == _keyKS
                              select new datphong
                              {
                                  DiaChi = ks.DiaChi
                              }).Distinct();
            ViewBag.TenPhong = (from p in db.Phongs
                                where p.ID == _keyPhong
                                select new datphong
                                {
                                    TenPhong = p.TenPhong
                                }).Distinct();


            //Số người
            ViewBag.SoNguoi = (from p in db.Phongs
                               where p.ID == _keyPhong
                               select new datphong
                               {
                                   SoNguoi = p.SoNguoi
                               }).Distinct();
            //Giá phòng
            ViewBag.GiaPhong = (from p in db.Phongs
                                where p.ID == _keyPhong
                                select new datphong
                                {
                                    Gia = p.Gia
                                }).Distinct();

            //Loại phòng
            ViewBag.LoaiPhong = (from p in db.Phongs
                                 where p.ID == _keyPhong
                                 select new datphong
                                 {
                                     LoaiPhong = p.LoaiPhong
                                 }).Distinct();


            return View(phong);
        }
    }
}