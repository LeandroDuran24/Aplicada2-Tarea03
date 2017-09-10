using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace Tarea_2.DAL
{
    public class Repositorio<TEntity> : IRepository<TEntity> where TEntity : class
    {
        UsuarioDb context = null;

        public Repositorio()
        {
            context = new UsuarioDb();
        }
        private DbSet<TEntity> EntitySet
        {
            get
            {
                return context.Set<TEntity>();
            }
        }

        public void Dispose()
        {
            throw new NotImplementedException();
        }

        public TEntity Guardar(TEntity nuevo)
        {
            TEntity retorno = null;
            try
            {
                EntitySet.Add(nuevo);
                context.SaveChanges();
                retorno = nuevo;

            }
            catch (Exception)
            {

                throw;
            }
            return retorno;
        }

    }
}