using PagedList;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Vntrip.vn.Models;

namespace Vntrip.vn.Controllers
{
    public class taiKhoanController : Controller
    {
        vntripDataContext db = new vntripDataContext();
        // GET: taiKhoan
        public ActionResult Index(int? page)
        {
            var taiKhoan = from tk in db.TaiKhoans select tk;
            return View(taiKhoan.ToPagedList(page ?? 1, 10));

        }
        public ActionResult Create()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Create(FormCollection collection, TaiKhoan taikhoan)
        {
            // Tạo biến CB_Loaitin và gán giá trị của người dùng nhập vào từ
            //form trong trang Create.aspx
            var username = taikhoan.UserName;
            var password = taikhoan.Password;
            var confirm = Request["confirmpassword"];
            var role = taikhoan.loaitk;
            //Nếu CB_Loaitin có giá trị == null ( để trống) 
            if (string.IsNullOrEmpty(username) || string.IsNullOrEmpty(password))
            {
                ViewData["error"] = " Không để trống username hoặc password ";
            }
            else
            {
                if (password != confirm)
                {
                    ViewData["error"] = " Xác nhận mật khẩu sai ";
                }
                else
                {
                    taikhoan.UserName = username;
                    taikhoan.Password = password;
                    taikhoan.loaitk = role;
                    db.TaiKhoans.InsertOnSubmit(taikhoan);
                    //Thực hiện tạo mới
                    db.SubmitChanges();
                    return RedirectToAction("Index");
                }
            }
            return this.Create();
        }
        public ActionResult Edit(int id)
        {
            var tk = db.TaiKhoans.First(m => m.ID == id);
            return View(tk);
        }

        [HttpPost]
        public ActionResult Edit(int id, FormCollection collection, TaiKhoan taikhoan)
        {
            // Tạo một biến Ltin gán với đối tượng có id=id truyền vào
            //var Ltin = data.Theloaitins.First(m => m.IDLoai == id);
            var tk = db.TaiKhoans.First(m => m.ID == id);
            //var E_Loaitin = collection["Tentheloai"];
            var username = taikhoan.UserName;
            var password = taikhoan.Password;
            var confirm = Request["confirmpassword"];
            var isadmin = taikhoan.loaitk;
            //vì ta sửa đối tượng lên Id của biến Ltin = Id chuyền vào .
            tk.ID = id;
            // Nếu người dùng để phần Loại Tin trống báo lỗi
            if (string.IsNullOrEmpty(username) || string.IsNullOrEmpty(password))
            {
                ViewData["error"] = " Không để trống username hoặc password ";
            }
            else
            {
                if (password != confirm)
                {
                    ViewData["error"] = " Xác nhận mật khẩu sai ";
                }
                else
                {
                    tk.UserName = username;
                    tk.Password = password;
                    tk.loaitk = isadmin;
                    // Thực hiện updat
                    UpdateModel(tk);
                    db.SubmitChanges();
                    return RedirectToAction("Index");
                }
            }
            return this.Edit(id);
        }
        public ActionResult Delete(int id)
        {
            var tk = db.TaiKhoans.First(m => m.ID == id);
            return View(tk);
        }

        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection, TaiKhoan taikhoan)
        {
            // Tạo biến D_Tin gán với dối dượng có ID bằng với ID tham số
            var tk = db.TaiKhoans.Where(m => m.ID == id).First();
            //xóa
            db.TaiKhoans.DeleteOnSubmit(tk);
            db.SubmitChanges();
            return RedirectToAction("Index");
        }
    }
}