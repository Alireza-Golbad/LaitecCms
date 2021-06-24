using DataLayer.MyCmsDBTableAdapters;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataLayer.Services
{
  public  class GroupService
    {
        PageGroupTableAdapter pgta = new PageGroupTableAdapter();

        public bool DeleteGroup(int id)
        {
            try
            {
                pgta.DeleteQuery(id);
                return true;
            }
            catch (Exception e)
            {
                return false;
            }
        }

        public bool updateGroup(PageGroup pg)
        {
            try
            {
                pgta.UpdateQuery(pg.GroupTitle, pg.GroupID);
                return true;
            }
            catch (Exception e)
            {
                return false;
            }
        }

        public PageGroup getGropuById(int id)
        {
            var result = pgta.GetDataByID(id);
            PageGroup pg = new PageGroup();
            pg.GroupID = (int)result[0][0];
            pg.GroupTitle = result[0][1].ToString();
            return pg;
        }
        public List<PageGroup> getAll()
        {
            

            var result = pgta.GetData();
            List<PageGroup> lst = new List<PageGroup>();
            PageGroup p;
            foreach (var item in result)
            {
                p = new PageGroup()
                {
                    GroupID = item.GroupID,
                    GroupTitle = item.GroupTitle
                };
                lst.Add(p);
            }
            return lst;
        }
        public bool addGroup(PageGroup pg)
        {
            try
            {
                pgta.InsertQuery(pg.GroupTitle);
                return true;
            }
            catch (Exception)
            {

               return false;
            }
        }
        
    }
}
