using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Tarea_2.Entidades;

namespace Tarea_2.BLL
{
    public class UsuarioBll
    {
        public static Usuarios Guardar(Usuarios nuevo)
        {
            Usuarios retorno = null;
            using (var conn = new DAL.Repositorio<Usuarios>())
            {
                retorno = conn.Guardar(nuevo);
            }
            return retorno;
        }
    }
}