using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ParentForm.Models
{
    public class ParentModel
    {
        public ParentModel()
        {
            ChildrenList = new List<Children>() {
                new Models.Children {  ClassId=1, Gender="Male",Age="23",Name="Name"}
            };
        }
        public int Id { get; set; }
        public string Name { get; set; }
        public string Email { get; set; }
        public string LandMark { get; set; }
        public string MobileNUmber { get; set; }
        public string Address { get; set; }
        public string Children { get; set; }

        public virtual List<Children> ChildrenList { get; set; }
    }
}