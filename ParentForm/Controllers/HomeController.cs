using Newtonsoft.Json;
using ParentForm.Database;
using ParentForm.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ParentForm.Controllers
{
    public class HomeController : Controller
    {
        // GET: Home
        ParentsEntities db;
        public HomeController()
        {
            db = new ParentsEntities();
        }
        public ActionResult Index()
        {
            ParentModel parent = new ParentModel();
            List<SelectListItem> gender = new List<SelectListItem>();
            gender.Add(new SelectListItem() { Text = "Male", Value = "Male" });
            gender.Add(new SelectListItem() { Text = "Female", Value = "Female" });
            ViewBag.gender = gender;
            ViewBag.classes = db.Classes.ToList().Select(x=>new SelectListItem() {Text=x.Name,Value=x.Id.ToString()}).ToList();
            ViewBag.count = parent.ChildrenList.Count;
            return View(parent);
        }
        public ActionResult Save(ParentModel obj)
        {
            var get1 = obj.Children.Split(',');
            var ds = JsonConvert.DeserializeObject<List<Child>>(obj.Children);
            Parent p = new Parent();
            p.Address = obj.Address;
            p.Email = obj.Email;
            p.LandMark = obj.LandMark;
            p.Name = obj.Name;
            p.Children = ds;
           // List<Children> list=(Session["children"] == null) ? new List<Children>() : (List<Children>)Session["children"];
            db.Parents.Add(p);
            db.SaveChanges();
            return Redirect("/Home/Index");
        }
        public ActionResult Children()
        {
            var all = db.Parents.ToList();
            return PartialView(all);
        }
        public ActionResult obj(Children obj)
        {
            List<Children> list;
            list = (Session["children"] == null) ? new List<Children>() : (List<Children>)Session["children"];
            list.Add(obj);
            Session["children"] = null;
            Session["children"] = list;
            return Json(list, JsonRequestBehavior.AllowGet);
        }
    }
}