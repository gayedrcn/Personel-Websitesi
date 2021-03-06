using System.Collections.Generic;
using PersonelMVCUI.Models.EntityFreamework;

namespace PersonelMVCUI.Controllers
{
    internal class PersonenelFormViewModel
    {
        public PersonenelFormViewModel()
        {
        }

        public List<Departman> Departmanlar { get; set; }
    }
}