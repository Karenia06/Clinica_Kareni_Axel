using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Clinica_Kareni_Axel.Datos;

namespace Clinica_Kareni_Axel.Negoci
{
    class CrudVacuna
    {
        public static Mobelo_ClinicaContainer db = new Mobelo_ClinicaContainer();

        public static List<Vacuna> Listar()
        {
            return db.Vacunas.ToList();
        }

        public static int Agregar(Vacuna V)
        {
            db.Vacunas.Add(V);
            return db.SaveChanges();
        }

        public static Vacuna Buscar(int id)
        {
            return db.Vacunas.Find(id);
        }

        public static int Editar(Vacuna V)
        {
            db.Entry(V).State = System.Data.Entity.EntityState.Modified;
            return db.SaveChanges();
        }

        public static int Eliminar(int id)
        {
            Vacuna AEliminar = Buscar(id);
            db.Vacunas.Remove(AEliminar);
            return db.SaveChanges();
        }
    }
}
