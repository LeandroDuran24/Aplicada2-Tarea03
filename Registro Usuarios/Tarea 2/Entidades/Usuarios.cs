using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Tarea_2.Entidades
{
   
    public class Usuarios
    {
        [Key]
        public int idUsuario { get; set; }
        public string nombres { get; set; }
        public string email { get; set; }
        public DateTime fecha { get; set; }
        public string tipoEmail { get; set; }
        public string clave { get; set; }
        public string confirmar { get; set; }

    }
}