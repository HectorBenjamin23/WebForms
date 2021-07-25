using Dapper;
using Model.Entities.Common;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model.Entities
{
    public class User 
    {
        [Key]
        public Guid Uid { get; set; }

        public Guid UidRole { get; set; }

        public string Name { get; set; }

        public DateTime Birthday { get; set; }

        public DateTime CreatedDate { get; set; }
    }
}
