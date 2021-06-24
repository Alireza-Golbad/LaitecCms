using System;
using System.Collections.Generic;
using System.Text;

namespace DataLayer.Models
{
   public class PageComment
    {
        public int CommentID { get; set; }
        public int PageID { get; set; }
        public string FullName { get; set; }
        public string Email { get; set; }
        public string Comment { get; set; }
        public DateTime CreateDate { get; set; }
    }
}
