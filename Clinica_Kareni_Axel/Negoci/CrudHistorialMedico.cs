using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Clinica_Kareni_Axel.Datos;


namespace Clinica_Kareni_Axel.Negoci
{
    class CrudHistorialMedico
    {
        public static Mobelo_ClinicaContainer db = new Mobelo_ClinicaContainer();

        public static List<HistorialMedico> Listar()
        {
            return db.HistorialMedicos.ToList();
        }

        public static int Agregar(HistorialMedico H)
        {
            db.HistorialMedicos.Add(H);
            return db.SaveChanges();
        }

        public static HistorialMedico Buscar(int id)
        {
            return db.HistorialMedicos.Find(id);
        }

        public static int Editar(HistorialMedico H)
        {
            db.Entry(H).State = System.Data.Entity.EntityState.Modified;
            return db.SaveChanges();
        }

        public static int Eliminar(int id)
        {
            HistorialMedico AEliminar = Buscar(id);
            db.HistorialMedicos.Remove(AEliminar);
            return db.SaveChanges();
        }
    }
}
