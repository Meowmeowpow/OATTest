<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Summary.aspx.cs" Inherits="CSSTestWebApp.Summary" %>
<%@ Import Namespace="CSSTestWebApp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="summHead" runat="server">
    <title>Результаты</title>
    <link rel="stylesheet" href="style.css" />
</head>
<body>
    <h2>Результаты</h2>

    <table style="display:flex">
        <thead>
            <tr style="display: flex;flex-direction: column;align-items: flex-start;">
                <th>Является ГИС?</th>
                <th>Масштаб системы</th>
                <th>Конфиденциальность</th>
                <th>Целостность</th>
                <th>Доступность</th>
                <th>Уровень значимости</th>
                <th>Является ИСПДн?</th>
                <th>Количество субъектов</th>
                <th>Обрабатываются данные только работников?</th>
                <th>Специальная категория</th>
                <th>Иные ПДн</th>
                <th>Биометрические ПДн</th>
                <th>Общедоступные ПДн</th>
                <th>Тип угроз</th>
                <th>Класс</th>
                <th>Уровень защищенности</th>
                <th>Имя</th>
                <th>Фамилия</th>
                <th>Отчество</th>
                <th>Номер телефона</th>
                <th>Адрес электронной почты</th>
                <th>Результат</th>
            </tr>
        </thead>
        <tbody style="display: flex; ">
            <% var yesData = ResponseRepository.GetRepository().GetAllResponses();
                foreach (var rsvp in yesData) {
                    string htmlString = String.Format("<tr style='display: flex;flex-direction: column;align-items: flex-start;padding: 0 30px;'><td>{0}</td><td>{1}</td><td>{2}</td><td>{3}</td><td>{4}</td><td>{5}</td><td>{6}</td><td>{7}</td><td>{8}</td><td>{9}</td><td>{10}</td><td>{11}</td><td>{12}</td><td>{13}</td><td>{14}</td><td>{15}</td><td>{16}</td><td>{17}</td><td>{18}</td><td>{19}</td><td>{20}</td><td>{21}/16</td>",
                        rsvp.IsGIS, rsvp.Scale, rsvp.Confidentiality, rsvp.Integrity, rsvp.Availability, rsvp.SignificanceLevel, rsvp.IsPD, rsvp.Subjects, rsvp.IsEmployee, rsvp.IsSpecial, rsvp.IsOther, rsvp.IsBio, rsvp.IsAll, rsvp.ThreatType, rsvp.ClassOf17, rsvp.Uz, rsvp.Name, rsvp.Surname, rsvp.Patronymic, rsvp.Phone, rsvp.Email,rsvp.Result);
                    Response.Write(htmlString);
                } %>
        </tbody>
    </table>
</body>
</html>
