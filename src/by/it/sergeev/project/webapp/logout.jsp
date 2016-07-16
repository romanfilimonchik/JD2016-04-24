<%@ page language="java" pageEncoding="UTF-8" %>
<%@ include file="include/begin-html.jsp" %>

<form class="form-horizontal" action="do?command=LOGOUT" method="POST">

   <fieldset>
        <!-- Button -->
        <div class="form-group">
            <label class="col-md-4 control-label" for="LogoutButton"></label>
            <div class="col-md-4">
                <button id="LogoutButton" name="LogoutButton" value="1" class="btn btn-success">Log out</button>
                <span class="help-block">Вы точно желаете выйти?</span>
            </div>
        </div>

    </fieldset>
</form>

<%@ include file="include/end-html.jsp" %>
