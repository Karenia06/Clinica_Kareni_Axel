using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Clinica_Kareni_Axel.Datos;

namespace Clinica_Kareni_Axel.Negoci
{
    class CrudMascota
    {
        public static Mobelo_ClinicaContainer db = new Mobelo_ClinicaContainer();

        public static List<Mascota> Listar()
        {
            return db.Mascotas.ToList();
        }

        public static int Agregar(Mascota M)
        {
            db.Mascotas.Add(M);
            return db.SaveChanges();
        }

        public static Mascota Buscar(int id)
        {
            return db.Mascotas.Find(id);
        }

        public static int Editar(Mascota M)
        {
            db.Entry(M).State = System.Data.Entity.EntityState.Modified;
            return db.SaveChanges();
        }

        public static int Eliminar(int id)
        {
            Mascota AEliminar = Buscar(id);
            db.Mascotas.Remove(AEliminar);
            return db.SaveChanges();
        }
    }
}
