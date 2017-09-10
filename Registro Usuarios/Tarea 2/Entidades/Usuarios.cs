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
        public int id_usuario { get; set; }
        public string nombres { get; set; }
        public string email { get; set; }
        public string tipo_Email { get; set; }
        public string contrasena { get; set; }
       
    }
}