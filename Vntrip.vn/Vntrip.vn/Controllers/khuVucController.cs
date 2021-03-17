using PagedList;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Vntrip.vn.Models;

namespace Vntrip.vn.Controllers
{
    public class khuVucController : Controller
    {
        vntripDataContext db = new vntripDataContext();
        // GET: khuVuc
        public ActionResult Index(int? page)
        {
            var khuVuc = from kv in db.KhuVucs select kv;
            return View(khuVuc.ToPagedList(page ?? 1,10));
        }
        public ActionResult Create()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Create(FormCollection collection, KhuVuc khuvuc)
        {
            // Tạo biến CB_Loaitin và gán giá trị của người dùng nhập vào từ
            //form trong trang Create.aspx
            var TenKhuVuckhuvuc = khuvuc.TenKhuVuc;
            //Nếu CB_Loaitin có giá trị == null ( để trống) 
            if (string.IsNullOrEmpty(TenKhuVuckhuvuc))
            {
                ViewData["error"] = " Tên khu vực không được để trống ";
            }
            else
            {
                khuvuc.TenKhuVuc = TenKhuVuckhuvuc;
                db.KhuVucs.InsertOnSubmit(khuvuc);
                //Thực hiện tạo mới
                db.SubmitChanges();
                return RedirectToAction("Index");
            }
            return this.Create();
        }
        public ActionResult Edit(int id)
        {
            var kv = db.KhuVucs.First(m => m.ID == id);
            return View(kv);
        }

        [HttpPost]
        public ActionResult Edit(int id, FormCollection collection, KhuVuc khuvuc)
        {
            // Tạo một biến Ltin gán với đối tượng có id=id truyền vào
            //var Ltin = data.Theloaitins.First(m => m.IDLoai == id);
            var kv = db.KhuVucs.First(m => m.ID == id);
            //var E_Loaitin = collection["TenKhuVuctheloai"];
            var TenKhuVuckhuvuc = khuvuc.TenKhuVuc;
            //vì ta sửa đối tượng lên Id của biến Ltin = Id chuyền vào .
            kv.ID = id;
            // Nếu người dùng để phần Loại Tin trống báo lỗi
            if (string.IsNullOrEmpty(TenKhuVuckhuvuc))
            {
                ViewData["Loi"] = " Tên khu vực không được để trống ";
            }
            // Ngược lại gán các trường của biến Ltin bằng các giá trị 
            //của người dùng nhập vào
            else
            {
                kv.TenKhuVuc = TenKhuVuckhuvuc;
                // Thực hiện updat
                UpdateModel(kv);
                db.SubmitChanges();
                return RedirectToAction("Index");
            }
            return this.Edit(id);
        }
        public ActionResult Delete(int id)
        {
            var kv = db.KhuVucs.First(m => m.ID == id);
            return View(kv);
        }

        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection, KhuVuc khuvuc)
        {
            // Tạo biến D_Tin gán với dối dượng có ID bằng với ID tham số
            var kv = db.KhuVucs.Where(m => m.ID == id).First();
            //xóa
            db.KhuVucs.DeleteOnSubmit(kv);
            db.SubmitChanges();
            return RedirectToAction("Index");
        }
    }
}