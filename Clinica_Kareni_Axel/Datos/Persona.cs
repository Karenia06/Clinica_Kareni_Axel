//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Clinica_Kareni_Axel.Datos
{
    using System;
    using System.Collections.Generic;
    
    public partial class Persona
    {
        public int Id { get; set; }
        public string CodigoPersona { get; set; }
        public string NombrePersaona { get; set; }
        public double CuentaBancaria { get; set; }
        public string DirrecionPersona { get; set; }
        public string TelefonoPersona { get; set; }
        public string DNI { get; set; }
    
        public virtual Familia Familia { get; set; }
    }
}
