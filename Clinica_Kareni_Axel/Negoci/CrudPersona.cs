using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Clinica_Kareni_Axel.Datos;

namespace Clinica_Kareni_Axel.Negoci
{
    class CrudPersona
    {
        public static Mobelo_ClinicaContainer db = new Mobelo_ClinicaContainer();

        public static List<Persona> Listar()
        {
            return db.Personas.ToList();
        }

        public static int Agregar(Persona P)
        {
            db.Personas.Add(P);
            return db.SaveChanges();
        }

        public static Persona Buscar(int id)
        {
            return db.Personas.Find(id);
        }

        public static int Editar(Persona P)
        {
            db.Entry(P).State = System.Data.Entity.EntityState.Modified;
            return db.SaveChanges();
        }

        public static int Eliminar(int id)
        {
            Persona AEliminar = Buscar(id);
            db.Personas.Remove(AEliminar);
            return db.SaveChanges();
        }
    }
}
