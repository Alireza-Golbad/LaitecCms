using System;
using System.Collections.Generic;
using System.Text;

namespace DataLayer.Models
{
   public class Page
    {
        public int PageID { get; set; }
        public string GroupName { get; set; }
        public int GroupID { get; set; }
        public string NewsTitle { get; set; }
        public string ShortDescription { get; set; }
        public string FullText { get; set; }
        public int Visit { get; set; }
        public string ImageName { get; set; }
        public bool ShowInSlider { get; set; }
        public DateTime CreateDate { get; set; }

    }
}
