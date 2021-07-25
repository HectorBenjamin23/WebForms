using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Data.Connections
{
    public static class DbConnections
    {
        private static readonly string host = @"DESKTOP-F06LGUD\SQLEXPRESS";
        private static readonly string database = "va_quere";
        private static readonly string username = "sa";
        private static readonly string password = "admin123";

        public static string VaQuereDbConnection = $"Data Source={host};Initial Catalog={database};User ID={username};Password={password}";
    }
}
