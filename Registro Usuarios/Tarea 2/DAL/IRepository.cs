using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Tarea_2.DAL
{
    interface IRepository<TEntity> : IDisposable where TEntity : class
    {
        TEntity Guardar(TEntity nuevo);

    }

}
