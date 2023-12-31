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
    
    public partial class Mascota
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Mascota()
        {
            this.HistorialMedicos = new HashSet<HistorialMedico>();
        }
    
        public int Id { get; set; }
        public string CodigoMascota { get; set; }
        public string AliasMascota { get; set; }
        public string EspecieMascota { get; set; }
        public string RazaMascota { get; set; }
        public string ColorDePeloMascota { get; set; }
        public System.DateTime FechaDeNacAprox { get; set; }
        public double PesoMedio { get; set; }
        public double PesoActual { get; set; }
        public int FamiliaId { get; set; }
    
        public virtual Familia Familia { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<HistorialMedico> HistorialMedicos { get; set; }
    }
}
