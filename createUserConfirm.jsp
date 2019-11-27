<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="./css/radish.css">
<link rel="stylesheet" type="text/css" href="./css/table.css">
<title>ユーザー情報入力確認画面</title>
</head>
<body>
<jsp:include page="header.jsp"/>
<div id="contents">
	<div id="top">
		<h1>ユーザー情報入力確認画面</h1>
	</div>
	<div>
		<table class="importConfirmTable">
			<tr>
				<th scope="row"><s:label value="姓"/></th>
				<td><s:property value="familyName"/></td>
			</tr>
			<tr>
				<th scope="row"><s:label value="名"/></th>
				<td><s:property value="firstName"/></td>
			</tr>
			<tr>
				<th scope="row"><s:label value="姓ふりがな"/></th>
				<td><s:property value="familyNameKana"/></td>
			</tr>
			<tr>
				<th scope="row"><s:label value="名ふりがな"/></th>
				<td><s:property value="firstNameKana"/></td>
			</tr>
			<tr>
				<th scope="row"><s:label value="性別"/></th>
				<td><s:property value="sex"/></td>
			</tr>
			<tr>
				<th scope="row"><s:label value="メールアドレス"/></th>
				<td><s:property value="email"/></td>
			</tr>
			<tr>
				<th scope="row"><s:label value="ユーザーID"/>
				<td><s:property value="userId"/></td>
			</tr>
			<tr>
				<th scope="row"><s:label value="パスワード"/>
				<td><s:property value="password"/></td>
			</tr>
		</table>
		<s:form action="CreateUserCompleteAction">
			<div class="submitBtnBox">
				<s:submit value="登録" class="submitBtn" onclick="goCreateUserCompleteAction()"/>
			</div>
		</s:form>
		<s:form action="CreateUserAction">
			<div class="submitBtnBox">
				<s:submit value="戻る" class="submitBtn" />
			</div>
			<s:hidden id="backFlg" name="backFlag" value="1"/>
		</s:form>
	</div>
</div>
</body>
</html>