using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model.Models
{
    public class UsersGrid
    {
        public Guid Uid { get; set; }
        public Guid UidRole { get; set; }
        public string Name { get; set; }
        public string RoleName { get; set; }
    }
}
