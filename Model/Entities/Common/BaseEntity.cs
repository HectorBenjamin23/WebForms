using Dapper;
using System;

namespace Model.Entities.Common
{
    public class BaseEntity : IBaseEntity
    {
        [Key]
        public Guid Id { get; set; }
    }

    public interface IBaseEntity : IBaseEntity<Guid>
    {

    }

    public interface IBaseEntity<TKey>
    {
        TKey Id { get; set; }
    }
}
