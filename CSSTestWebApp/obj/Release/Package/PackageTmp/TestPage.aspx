<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TestPage.aspx.cs" 
    Inherits="CSSTestWebApp.TestPage" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Задание для стажировки</title>

        <link rel="stylesheet" href="style.css">
    </head>

    <body style="position:relative">

        <header style="display: flex;justify-content: center;height: 90px;align-items: center;border-bottom: 2px solid orange;">
            <img style="max-width: 200px;" src="/Content/logo.svg" />
        </header>

        <form id="rsvpform" runat="server">
        <section class="container">
            <p class="title">Одним из базовых этапов разработки системы защиты информационной безопасности является классификация информационных систем. Для государственной информационной системы (то есть созданной с целью выполнения задач государственных учреждений), порядок классификации определен Приказом ФСТЭК №17. Также данную классификацию можно использовать для негосударственных систем, но в этом случае она не будет являться обязательной. Если в информационной системе обрабатываются персональные данные, необхдимо выполнить также классификацию согласно ПП РФ №1119.</p>
            <p class="taskText">Задание: ниже представлена информация об информационной системе. Внимательно прочитайте ее описание. Заполните необходимые пункты в блоках ниже и на их основании сделайте выводы о классе системы. Под кнопкой "?" скрыты подсказки и примеры, а также ссылки на пункты в нормативно-правовых актах.</p>
            
            <div>
                <fieldset>
                    <legend>Информация о системе</legend>

                    <p>Сайт ИП "Рога и Копыта" создан ИТ-отделом компании для продвижения своей продукции и осуществления продаж оптовым и розничным клиентам различных предметов мебели.</p>
                    <p>Для осуществления заказа покупатель должен внести в форму свои фамилию, имя, отчество (при наличии), адрес доставки, контактный номер телефона и адрес электронной почты. Оборот у фирмы маленький, не больше 2 заказов в неделю. Каждый год база данных, содержащая данные клиента, очищается, а информация отправляется в архив, для которого создана отдельная информационная система.</p>
                    <p>Сайт хостится на 1 сервере, расположенном в главном офисе компании.</p>
                    <p>Рабочие места администраторов расположены в главном офисе компании. Администраторы системы осуществляют свою работу с АРМ, на которых установлена ОС Windows 10 в редакции "Корпоративная", имеющая сертификат ФСТЭК России. Все программные продукты, установленные на АРМ, имеют сертификаты ФСТЭК России или прошли проверку соответствия требованиям информационной безопасности.</p>
                </fieldset>
            </div>

            <div class="taskContainer">
                <div class="boxOne">
                    <fieldset>
                        <legend>ИС</legend>

                        <div class="containerBtn">
                            <label for="checkboxGIS">
                                <input type="checkbox" name="checkboxGIS" id="checkboxGIS" runat="server">
                                <span>Информационная система является государственной</span>
                            </label>
                            
                            <button type="button" onclick=" window.open('https://fstec.ru/normotvorcheskaya/akty/53-prikazy/702-prikaz-fstek-rossii-ot-11-fevralya-2013-g-n-17','_blank')">Приказ ФСТЭК России №17</button>
                        </div>
    
                        <div class="task">
                            <p>Масштаб информационной системы</p>
    
                            <button type="button" class="taskBtn" title="Масштаб информационной системы можно определить, обратив внимание на то, где расположены технические средства рассматриваемого сегмента системы. Например, если сервера системы расположены в разных городах в разных областях страны, она будет иметь федеральный масштаб">?</button>
    
                            <select name="systemScaleSelect" id="systemScaleSelect" runat="server">
                                <option value="Не определено" selected="selected">Не определено</option>
                                <option value="Объектовый">Объектовый</option>
                                <option value="Региональный">Региональный</option>
                                <option value="Федеральный">Федеральный</option>
                            </select>
                        </div>
    
                        <div class="task">
                            <p>Степень ущерба информации</p>
    
                            <button type="button" class="taskBtn" title="Подумайте, на сколько сильный ущерб может быть причинен системе в случае нарушения одного из свойств информации, хранящейся в ней" >?</button>
                        </div>
    
                        <div class="task">
                            <p>Конфиденциальность</p>
    
                            <button type="button" class="taskBtn" title="Сможет ли организация продолжать работу, если данные утекут?">?</button>
    
                            <select name="confidentialSelect" id="confidentialSelect" runat="server">
                                <option value="Не определено" selected="selected">Не определено</option>
                                <option value="Неприменимо">Неприменимо</option>
                                <option value="Низкая степень ущерба">Низкая степень ущерба</option>
                                <option value="Средняя степень ущерба">Средняя степень ущерба</option>
                                <option value="Высокая степень ущерба">Высокая степень ущерба</option>
                            </select>
                        </div>

                        <div class="task">
                            <p>Целостность</p>
    
                            <button type="button" class="taskBtn" title="Сможет ли организация продолжать работу, если данные подменят?">?</button>
    
                            <select name="integritySelect" id="integritySelect" runat="server">
                                <option value="Не определено" selected="selected">Не определено</option>
                                <option value="Неприменимо">Неприменимо</option>
                                <option value="Низкая степень ущерба">Низкая степень ущерба</option>
                                <option value="Средняя степень ущерба">Средняя степень ущерба</option>
                                <option value="Высокая степень ущерба">Высокая степень ущерба</option>
                            </select>
                        </div>
     
                        <div class="task">
                            <p>Доступность</p>
    
                            <button type="button" class="taskBtn" title="Сможет ли организация продолжать работу, если система перестанет функционировать?">?</button>
    
                            <select name="availabilitySelect" id="availabilitySelect" runat="server">
                                <option value="Не определено" selected="selected">Не определено</option>
                                <option value="Неприменимо">Неприменимо</option>
                                <option value="Низкая степень ущерба">Низкая степень ущерба</option>
                                <option value="Средняя степень ущерба">Средняя степень ущерба</option>
                                <option value="Высокая степень ущерба">Высокая степень ущерба</option>
                            </select>
                        </div>
    
                        <div class="task">
                            <p>Уровень значимости информации</p>
    
                            <button type="button" class="taskBtn" title="Сделайте вывод на основании своих ответов выше. Принцип отнесения к классу системы указан в п. 2 Приказа ФСТЭК №17">?</button>
    
                            <select name="significanceLvlSelect" id="significanceLvlSelect" runat="server">
                                <option value="Не определено" selected="selected">Не определено</option>
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                            </select>
                        </div>
                    </fieldset>
                </div>

                <div class="boxTwo">
                    <fieldset>
                        <legend>ПДн</legend>

                        <div class="containerBtn">
                            <label for="checkboxPD">
                                <input type="checkbox" name="checkboxPD" id="checkboxPD" runat="server">
                                <span>В информационной системе обрабатываются персональные данные</span>
                            </label>

                            <div class="wrapper">
                                <button type="button" onclick=" window.open('http://www.consultant.ru/document/cons_doc_LAW_137356/','_blank')">Постановление Правительства РФ №1119</button>
                            </div>
                            
                        </div>
                        <div class="task">
                            <p>Количество субъектов ПДн</p>

                            <button type="button" class="taskBtn" title="Данные о скольких пользователях единовременно хранятся в системе?">?</button>

                            <select name="subjectSelect" id="subjectSelect" runat="server">
                                <option value="Не определено" selected="selected">Не определено</option>
                                <option value="Более 100 000 субъектов">Более 100 000 субъектов</option>
                                <option value="Менее 100 000 субъектов">Менее 100 000 субъектов</option>
                            </select>
                        </div>

                        <label for="checkboxEmp">
                            <input type="checkbox" name="checkboxEmp" id="checkboxEmp" runat="server">
                            <span>Обрабатываются данные только сотрудников оператора</span>
                        </label>

                        <div class="task">
                            <p>Категория персональных данных</p>

                            <button type="button" class="taskBtn" title="Какая именно информация хранится в базе данных системы? Описание каждой категории приведено в п.5 Требований к защите персональных данных при их обработке в информационных системах персональных данных ПП РФ №1119">?</button>

                            <div class="containerInputTask">
                                    <label for="checkboxSpec">
                                        <input type="checkbox" name="checkboxSpec" id="checkboxSpec" runat="server">
                                        <span>Специальные</span>
                                    </label>
                                    
                                    <label for="checkboxOther">
                                        <input type="checkbox" name="checkboxOther" id="checkboxOther" runat="server">
                                        <span>Иные</span>
                                    </label>

                                    <label for="checkboxBio">
                                        <input type="checkbox" name="checkboxBio" id="checkboxBio" runat="server">
                                        <span>Биометрические</span>
                                    </label>
    
                                    <label for="checkboxAll">
                                        <input type="checkbox" name="checkboxAll" id="checkboxAll" runat="server">
                                        <span>Общедоступные</span>
                                    </label>
                            </div>
                        </div>

                        <div class="task">
                            <p>Тип угроз</p>

                            <button type="button" class="taskBtn" title="Описание типов угроз приведено в п. 6 Требований к защите персональных данных при их обработке в информационных системах персональных данных ПП РФ №1119">?</button>

                            <select name="threatTypeSelector" id="threatTypeSelector" runat="server">
                                <option value="Не определено" selected="selected">Не определено</option>
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                            </select>
                        </div>
                    </fieldset>
                </div>
            </div>

            <div class="resume">
                <fieldset>
                    <legend>Вывод</legend>

                    <div class="resumeContainer">
                        <div class="boxOne">
                            <div class="task">
                                <p>Класс защищенности</p>
        
                                <button type="button" class="taskBtn" title="Порядок определения класса защищенности приведен в Приложении №1 к Требованиям о защите информации, не составляющей госудрарственную тайну, содержащейся в государственных информационных системах Приказа ФСТЭК №17 ">?</button>
        
                                <select name="classSelector" id="classSelector" runat="server">
                                    <option value="Не определено" selected="selected">Не определено</option>
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                </select>
                            </div>
                        </div>
    
                        <div class="boxTwo">
                            <div class="task">
                                <p>Уровень защищенности</p>
        
                                <button type="button" class="taskBtn" title="Порядок определения уровня защищенности персональных данных описан в п. 8-12 ПП РФ №1119" >?</button>
        
                                <select name="secLvlSelector" id="secLvlSelector" runat="server">
                                    <option value="Не определено" selected="selected">Не определено</option>
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                </select>
                            </div>
                        </div>
                    </div>
                </fieldset>
            </div>

            <div class ="contact">
                <fieldset>
                    <legend>Контактная информация</legend>

                    <%--<asp:ValidationSummary ID="validationSummary" runat="server" ShowModelStateErrors="true" />--%>

                    <div class="contactContainer">
                        <div class="task">
                            <p>Фамилия*</p>
                             <input name="surnameInput" id="surnameInput" placeholder="Иванов" type="text" size="40" runat="server" >
                            <p>Имя*</p>
                             <input name="nameInput" id="nameInput" placeholder="Иван" type="text" size="40" runat="server" >
                            <p>Отчество*</p>
                             <input name="lastnameInput" id="lastnameInput" placeholder="Иванович" type="text" size="40" runat="server" >
                        </div>
                        <div class="task">
                            <p>Контактный номер телефона*</p>
                             <input name="phoneInput" id="phoneInput" placeholder="X(XXX)XXX-XX-XX" type="text" size="40" runat="server" minlength="11" maxlength="12">
                            <p>Адрес электронной почты</p>
                             <input name="emailInput" id="emailInput" placeholder="XXXXXXXXXX@XXXX" type="text" size="40" runat="server" >
                        </div>
                    </div>
                </fieldset>
           </div>


            <button class="sendBtn" type="submit"  OnClick="btnLogin_Click">Отправить</button>
        </section>
            </form>

        <footer style="display: flex;justify-content: center;height: 45px;align-items: center;border-top: 2px solid orange;background-color: #7700FF;position: absolute;bottom: 0;left: 0;width: 100%;">
            <p style="color:white;">2021 © Отдел Аттестации и Комплаенс ООО «СОЛАР СЕКЬЮРИТИ»</p>
        </footer>

    </body>
</html>