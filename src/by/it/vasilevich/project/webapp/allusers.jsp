<%@ page language="java" pageEncoding="UTF-8" %>
<%@ include file="include/begin-html.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


   <div class="row">
    <b>
        <div class=col-md-1>ID</div>
        <div class=col-md-2>Имя</div>
        <div class=col-md-2>Пароль</div>
        <div class=col-md-7>Email</div>
    </b>
   </div>
   <br>
   <!-- Коллекцию listUser мы получаем по get из команды сервлета UserForm -->
   <c:forEach items="${users}" var="user">
        <div class="row">
        <form class="form-user-${user.id}" action="do?command=AllUsers" method=POST>
            <div class=col-md-1>
                <input id="user_id_${user.id}" name="ID" type="text"
                value="${user.id}" class="form-control input-md">
            </div>
            <div class=col-md-2>
                <input id="textinput" name="Login" type="text"
                value="${user.login}" class="form-control input-md">
            </div>
            <div class=col-md-2>
                <input id="textinput" name="Password" type="text"
                value="${user.password}" class="form-control input-md">
            </div>
            <div class=col-md-2>
                <input id="textinput" name="Email" type="text"
                value="${user.email}" class="form-control input-md">
            </div>

            <div class=col-md-2>
                    <select id="role" name="FK_Role" class="form-control">
                        <c:forEach items="${roles}" var="role">
                            <option value="${role.id}" role=${role.id} ${role.id==user.FK_Role?"selected":""}>
                                 ${role.role}
                            </option>
                        </c:forEach>
                    </select>
            </div>

            <div class=col-md-1>
                <button id="singlebutton" name="singlebutton" class="btn btn-success">
                    Обновить
                </button>
            </div>

            <div class=col-md-1>
                <button id="singlebutton" name="singlebutton" class="btn btn-danger"
                onclick="document.getElementById('user_id_${user.id}').value=-document.getElementById('user_id_${user.id}').value;"
                >
                    Удалить
                </button>
            </div>

        </form>
        </div>
   <br>
   </c:forEach>
   и т.д.

<%@ include file="include/end-html.jsp" %>
