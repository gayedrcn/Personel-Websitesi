using PersonelMVCUI.Models.EntityFreamework;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PersonelMVCUI.ViewModels
{
    public class PersonelFormViewModel
    {
        public List<Departman> Departmanlar { get; internal set; }
        public Personel Personel { get; set; }
    }
}