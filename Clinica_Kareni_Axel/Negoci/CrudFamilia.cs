using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Clinica_Kareni_Axel.Datos;

namespace Clinica_Kareni_Axel.Negoci
{
    class CrudFamilia
    {
        public static Mobelo_ClinicaContainer db = new Mobelo_ClinicaContainer(); 

        public static List<Familia> Listar()
        {
            return db.Familias.ToList();
        }

        public static int Agregar(Familia F)
        {
            db.Familias.Add(F);
            return db.SaveChanges();
        }

        public static Familia Buscar(int id)
        {
            return db.Familias.Find(id);
        }

        public static int Editar(Familia F)
        {
            db.Entry(F).State = System.Data.Entity.EntityState.Modified;
            return db.SaveChanges();
        }

        public static int Eliminar(int id)
        {
            Familia AEliminar = Buscar(id);
            db.Familias.Remove(AEliminar);
            return db.SaveChanges();
        }
    }
}
