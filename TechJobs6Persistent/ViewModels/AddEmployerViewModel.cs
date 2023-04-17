

    using System;
    using System.ComponentModel.DataAnnotations;
    using TechJobs6Persistent.Models;

    namespace TechJobs6Persistent.ViewModels
    {
        public class AddEmployerViewModel
        {
            [Required(ErrorMessage = "Name required")]
            public string? Name { get; set; }

            [Required(ErrorMessage = "Location required")]
            public string? Location { get; set; }
        }
    }

