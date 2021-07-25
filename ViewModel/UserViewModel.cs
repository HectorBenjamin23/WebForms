using Dapper;
using Data;
using Model.Entities;
using Model.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ViewModel
{
    public class UserViewModel
    {
        protected UserRepository UserDb { get; }

        public UserViewModel()
        {
            this.UserDb = new UserRepository();
        }

        public bool Agregar(string nombre, DateTime nacimiento)
        {
            var id = this.UserDb.Insert(new User() { Name = nombre, Birthday = nacimiento });

            if (id == null)
                return true;
            else
                return false;
        }

        public User ObtenerUsuario(Guid uid)
        {
            return this.UserDb.Get<User>(uid);
        }

        public IEnumerable<UsersGrid> ObtenerUsuarios(string nombre)
        {
            string query = $@"
select u.Uid,
       u.Name,
       u.UidRole,
       r.RoleName
from Users u
         inner join Rol r on r.Uid = u.UidRole";

            DynamicParameters parameters = new DynamicParameters();
            parameters.Add("@name", nombre);

            return this.UserDb.Query<UsersGrid>(query, parameters);
        }
    }
}