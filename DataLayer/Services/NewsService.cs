using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DataLayer.Models;
using DataLayer.MyCmsDBTableAdapters;

namespace DataLayer.Services
{
    class NewsService
    {
        private MyCmsDBTableAdapters.PagesTableAdapter db = new PagesTableAdapter();

        public bool AddNews(Page p)
        {
            try
            {
                db.InsertNews(p.GroupID, p.NewsTitle, p.ShortDescription, p.FullText, p.Visit, p.ImageName,
                    p.ShowInSlider, p.CreateDate);
                return true;
            }
            catch (Exception e)
            {
                return false;
            }
        }
    }
}
