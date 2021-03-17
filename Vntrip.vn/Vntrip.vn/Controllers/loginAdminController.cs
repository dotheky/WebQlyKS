using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Vntrip.vn.Models;

namespace Vntrip.vn.Controllers
{
    public class loginAdminController : Controller
    {
        vntripDataContext db = new vntripDataContext();
        // GET: loginAdmin
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult Xuly()
        {
            var username = Request["UserName"];
            var password = Request["PassWord"];

            var tk = db.TaiKhoans.First(m => m.UserName == username && m.Password == password);
            if (tk == null)
            {
                ViewData["error"] = " Username hoặc Password sai ";
            }
            else
            {
                return RedirectToAction("Index","Admin");
            }
            return View();
        }
    }
}