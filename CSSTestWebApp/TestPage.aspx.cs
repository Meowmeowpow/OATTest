using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.ModelBinding;

namespace CSSTestWebApp
{
    public partial class TestPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (nameInput.Value != "" && surnameInput.Value !="" && lastnameInput.Value !="" && phoneInput.Value!="")
            {
                if (IsPostBack)
                {
                    //StudentResponse rsvp = new StudentResponse();

                    //if (TryUpdateModel(rsvp, new FormValueProvider(ModelBindingExecutionContext)))
                    //{
                    //    ResponseRepository.GetRepository().AddResponse(rsvp);
                    //    Response.Redirect("seeyouthere.html");                   
                    //}
                    var studentAnswers = new StudentResponse();
                    studentAnswers.Result = 0;
                    if (checkboxGIS.Checked)
                    {
                        studentAnswers.IsGIS = "Да";
                    }
                    else
                    {
                        studentAnswers.IsGIS = "Нет";
                        studentAnswers.Result++;
                    }

                    studentAnswers.Scale = systemScaleSelect.Value;

                    if (studentAnswers.Scale == "Объектовый")
                    {
                        studentAnswers.Result++;
                    }

                    studentAnswers.Confidentiality = confidentialSelect.Value;

                    if (studentAnswers.Confidentiality == "Низкая степень ущерба")
                    {
                        studentAnswers.Result++;
                    }

                    studentAnswers.Integrity = integritySelect.Value;

                    if (studentAnswers.Integrity == "Низкая степень ущерба")
                    {
                        studentAnswers.Result++;
                    }

                    studentAnswers.Availability = availabilitySelect.Value;

                    if (studentAnswers.Availability == "Низкая степень ущерба")
                    {
                        studentAnswers.Result++;
                    }

                    studentAnswers.SignificanceLevel = significanceLvlSelect.Value;

                    if (studentAnswers.SignificanceLevel == "3")
                    {
                        studentAnswers.Result++;
                    }

                    if (checkboxPD.Checked)
                    {
                        studentAnswers.IsPD = "Да";
                        studentAnswers.Result++;
                    }
                    else
                    {
                        studentAnswers.IsPD = "Нет";
                    }

                    studentAnswers.Subjects = subjectSelect.Value;

                    if (studentAnswers.Subjects == "Менее 100 000 субъектов")
                    {
                        studentAnswers.Result++;
                    }

                    if (checkboxEmp.Checked)
                    {
                        studentAnswers.IsEmployee = "Да";
                    }
                    else
                    {
                        studentAnswers.IsEmployee = "Нет";
                        studentAnswers.Result++;
                    }

                    if (checkboxSpec.Checked)
                    {
                        studentAnswers.IsSpecial = "Да";
                    }
                    else
                    {
                        studentAnswers.IsSpecial = "Нет";
                        studentAnswers.Result++;
                    }

                    if (checkboxOther.Checked)
                    {
                        studentAnswers.IsOther = "Да";
                        studentAnswers.Result++;
                    }
                    else
                    {
                        studentAnswers.IsOther = "Нет";
                    }

                    if (checkboxBio.Checked)
                    {
                        studentAnswers.IsBio = "Да";
                    }
                    else
                    {
                        studentAnswers.IsBio = "Нет";
                        studentAnswers.Result++;
                    }

                    if (checkboxAll.Checked)
                    {
                        studentAnswers.IsAll = "Да";
                        studentAnswers.Result++;
                    }
                    else
                    {
                        studentAnswers.IsAll = "Нет";
                    }

                    studentAnswers.ThreatType = threatTypeSelector.Value;

                    if (studentAnswers.ThreatType == "3")
                    {
                        studentAnswers.Result++;
                    }

                    studentAnswers.ClassOf17 = classSelector.Value;

                    if (studentAnswers.ClassOf17 == "3")
                    {
                        studentAnswers.Result++;
                    }

                    studentAnswers.Uz = secLvlSelector.Value;

                    if (studentAnswers.Uz == "4")
                    {
                        studentAnswers.Result++;
                    }

                    studentAnswers.Name = nameInput.Value;
                    studentAnswers.Surname = surnameInput.Value;
                    studentAnswers.Patronymic = lastnameInput.Value;
                    studentAnswers.Phone = phoneInput.Value;
                    if (emailInput.Value == "")
                    {
                        studentAnswers.Email = "-";
                    }
                    else
                    {
                        studentAnswers.Email = emailInput.Value;
                    }
                    
                    ResponseRepository.GetRepository().AddResponse(studentAnswers);
                    Response.Redirect("seeyouthere.html");
                }
            }


        }


    }
}