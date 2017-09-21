﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;
using Tarea_2.Entidades;

namespace Tarea_2.DAL
{
    interface IRepository<TEntity> : IDisposable where TEntity : class
    {
        TEntity Guardar(TEntity nuevo);
        bool Eliminar(TEntity Id);
        bool Modificar(TEntity criterio);
        TEntity Buscar(Expression<Func<TEntity, bool>> Id);
        List<TEntity> GetListTodo();
        List<TEntity> GetList(Expression<Func<TEntity, bool>> buscar);

    }

}
