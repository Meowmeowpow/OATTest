using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace CSSTestWebApp
{
    public class StudentResponse
    {
        public string IsGIS { get; set; }
        public string Scale { get; set; }
        public string Confidentiality { get; set; }
        public string Integrity { get; set; }
        public string Availability { get; set; }
        public string SignificanceLevel { get; set; }
        public string IsPD { get; set; }
        public string Subjects { get; set; }
        public string IsEmployee { get; set; }
        public string IsSpecial { get; set; }
        public string IsOther { get; set; }
        public string IsBio { get; set; }
        public string IsAll { get; set; }
        public string ThreatType { get; set; }
        public string ClassOf17 { get; set; }
        public string Uz { get; set; }
        //[Required(ErrorMessage = "Пожалуйста укажите свое имя")]
        public string Name { get; set; }
        //[Required(ErrorMessage = "Пожалуйста укажите свою фамилию")]
        public string Surname { get; set; }
        public string Patronymic { get; set; }
        //[Required(ErrorMessage = "Пожалуйста укажите адрес электронной почты")]
        public string Email { get; set; }
        //[Required(ErrorMessage = "Пожалуйста укажите свой номер телефона")]
        public string Phone { get; set; }
        public int Result { get; set; }
       
    }
}