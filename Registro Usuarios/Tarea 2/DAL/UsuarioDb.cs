using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace Tarea_2.DAL
{
    public class UsuarioDb : DbContext
    {
        public UsuarioDb() : base("ConStr")
        {


        }
        public DbSet<Entidades.Usuarios> user { get; set; }
    }
}