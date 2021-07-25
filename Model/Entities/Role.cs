using Dapper;
using System;

namespace Model.Entities
{
    [Table("Rol")]
    public class Role
    {
        [Key]
        public Guid Uid { get; set; }
        public string Name { get; set; }
    }
}
