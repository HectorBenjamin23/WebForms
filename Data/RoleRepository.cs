using Data.Common;
using Data.Connections;
using Model.Entities;
using Model.Models.Common;
using System;
using System.Collections.Generic;
using System.Data.Common;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Data
{
    public class RoleRepository : BaseDapperRepository<Role>
    {
        public RoleRepository() : base(DbConnections.VaQuereDbConnection)
        {

        }

        public IEnumerable<BaseListBox> Todos()
        {
            string query = "select Uid, Name from Rol";
            return this.Query<BaseListBox>(query, null);
        }
    }
}
