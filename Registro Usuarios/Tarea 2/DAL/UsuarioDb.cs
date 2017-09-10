using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace Tarea_2.DAL
{
    public class UsuarioDb : DbContext
    {
        public UsuarioDb() : base("Server=tcp:leandroduran.database.windows.net,1433;Initial Catalog=Proyecto;Persist Security Info=False;User ID=leandroDuran24;Password=Leandro24;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;")
        {


        }
        public DbSet<Entidades.Usuarios> user { get; set; }
    }
}