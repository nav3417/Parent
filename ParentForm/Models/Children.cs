using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ParentForm.Models
{
    public class Children
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public Nullable<int> ClassId { get; set; }
        public string Gender { get; set; }
        public string School { get; set; }
        public string Age { get; set; }
        public Nullable<int> ParentId { get; set; }
    }
}