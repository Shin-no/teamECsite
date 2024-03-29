<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="./css/radish.css">
<link rel="stylesheet" type="text/css" href="./css/table.css">
<title>マイページ画面</title>
</head>
<body>
<jsp:include page="header.jsp"/>
<div id="contents">
	<div id="top">
		<h1>マイページ画面</h1>
	<s:if test="userInfoDTO!=null">
		<s:form action="PurchaseHistoryAction">
		<table class="importConfirmTable">

		<tr>
			<th scope="row"><s:label value="姓"/></th>
			<td><s:property value="userInfoDTO.familyName"/></td>
		</tr>
		<tr>
			<th scope="row"><s:label value="名"/></th>
			<td><s:property value="userInfoDTO.firstName"/></td>
		</tr>
		<tr>
			<th scope="row"><s:label value="ふりがな"/></th>
			<td><s:property value="userInfoDTO.familyNameKana"/>　<s:property value="userInfoDTO.firstNameKana"/></td>
		</tr>
		<tr>
			<th scope="row"><s:label value="性別"/></th>
			<td><s:if test="userInfoDTO.sex==1">女性</s:if><s:else>男性</s:else>
		</td>
		<tr>
			<th scope="row"><s:label value="メールアドレス"/></th>
			<td><s:property value="userInfoDTO.email"/></td>
		</tr>
		</table>
		<div class="submitBtnBox">
		<s:submit value="購入履歴" class="submitBtn"/>
		</div>
		</s:form>
		</s:if>
		<s:else>
			<div class="info">
			ユーザー情報がありません。
			</div>
		</s:else>
</div>
</div>
</body>
</html>