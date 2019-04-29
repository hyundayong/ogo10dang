<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "vo.survey.BodyInfo" %>
<%
	BodyInfo bodyInfoList = (BodyInfo) request.getAttribute("bodyInfoList");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, intial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.6/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script>
<!-- Bootstrap4 -->
<link rel="stylesheet" href="../css/mainPageStyle.css">
<link rel="stylesheet" href="./css/surveyFormStyle.css">
<title>체형 정보 입력 페이지 - 남자</title>

</head>
<body>
   <jsp:include page="../menubar.jsp"></jsp:include>
    <div class="contents" id="surveyFormBackColor">
         <form class="mansurveyForm" action="manSurveyFormResult.pre" method="POST">
            <br><fieldset>
               <legend id="legendwid">기본 정보</legend>
               <table>
                  <tr><td class="labelwidth"><label for="name">이름</label></td>
                  <td><input type="text" name="name" id="name" value='<%=bodyInfoList.getName()%>' required /></td></tr>
                  <tr><td class="labelwidth"><label for="gender">성별</label></td>
                  <td><input type="radio" name="gender" value="man" checked> 남자&nbsp;&nbsp;
                  <input type="radio" name="gender" value="woman" disabled> 여자</td></tr>
                  <tr><td class="labelwidth"><label for="age">나이</label></td>
                  <td><input type="number" name="age" id="age" min="1" max="150" value='<%=bodyInfoList.getAge()%>' required/></td></tr>
                  <tr><td class="labelwidth"><label for="height">키</label></td>
                  <td><input type="number" name="height" id="height" min="0" style="display: inline;" value='<%=bodyInfoList.getHeight()%>' required /></td>
                  <td>&nbsp;( cm )</td></tr>
                  <tr><td class="labelwidth"><label for="weight">몸무게</label></td>
                  <td><input type="number" name="weight" id="weight" min="0" value='<%=bodyInfoList.getWeight()%>' required/></td>
                  <td>&nbsp;( kg )</td></tr>
               </table>
            </fieldset><br>
            
            <fieldset>
               <legend id="legendwid">건강 & 운동 정보</legend>
                  <table>
                  <tr><td class="labelwidth"><label for="smoke">흡연 유무</label></td>
                     <td><input type="radio" name="smoke" value="y" checked/> 흡연</td>
                     <td><input type="radio" name="smoke" value="n" /> 비흡연</td></tr>
                  <tr><td class="labelwidth"><label for="drink">음주 횟수</label></td>
                     <td><input type="radio" name="drink" value="1" checked/> 한달 0 ~ 2회</td>
                     <td><input type="radio" name="drink" value="2" /> 한달 3 ~ 5회</td>
                     <td><input type="radio" name="drink" value="3" /> 일주일 2 ~ 3회</td>
                     <td><input type="radio" name="drink" value="4" /> 매일</td></tr>
                  <tr><td rowspan="4" class="labelwidth"><label for="exercise">운동 능력</label></td>
                     <td><input type="radio" name="exercise" value="1" checked/> 활동 적음 </td>
                     <td>(일반적인 하루 활동)</td></tr>
                  <tr><td><input type="radio" name="exercise" value="2" /> 약간 활동적 </td>
                     <td colspan="3">(적당한 운동 하루 30~60분)</td></tr>
                  <tr><td><input type="radio" name="exercise" value="3" /> 활동적 </td>
                     <td colspan="3">(적당한 운동 60분 이상)</td></tr>
                  <tr><td><input type="radio" name="exercise" value="4" /> 매우 활동적</td>
                     <td colspan="3">(고강도 운동 60분 이상)</td></tr>
                  <tr><td class="labelwidth"><label for="purpose">운동 목적</label></td>
                     <td><input type="radio" name="purpose" value="diet" checked/> 다이어트</td>
                     <td><input type="radio" name="purpose" value="health" /> 체력증진</td>
                     <td><input type="radio" name="purpose" value="muscle" /> 근력증가</td>
                  </tr>
 				</table>
            </fieldset><br>
            
            <fieldset>
               <legend id="legendwid">체형 정보</legend>
               <table>
                  <tr><td class="labelwidth"><label for="arm">팔</label></td>
                     <td><input type="radio" name="arm" value="1" checked/> 마름</td>
                     <td><input type="radio" name="arm" value="2" /> 보통</td>
                     <td><input type="radio" name="arm" value="3" /> 지방형</td>
                     <td><input type="radio" name="arm" value="4" /> 근육형</td></tr>
                  <tr><td class="labelwidth"><label for="chest">가슴</label></td>
                     <td><input type="radio" name="chest" value="1" checked/> 마름</td>
                     <td><input type="radio" name="chest" id="chest2" value="2" /> <label for="chest2">보통</label></td>
                     <td><input type="radio" name="chest" value="3" /> 지방형</td>
                     <td><input type="radio" name="chest" value="4" /> 근육형</td></tr>
                  <tr><td class="labelwidth"><label for="shoulder">어깨</label></td>
                     <td><input type="radio" name="shoulder" value="1" checked/> 좁은편</td>
                     <td><input type="radio" name="shoulder" value="2" /> 보통</td>
                     <td><input type="radio" name="shoulder" value="3" /> 넓은편</td></tr>
                  <tr><td class="labelwidth"><label for="belly">복부</label></td>
                     <td><input type="radio" name="belly" value="1" checked/> 마름</td>
                     <td><input type="radio" name="belly" value="2" /> 보통</td>
                     <td><input type="radio" name="belly" value="3" /> 지방형</td>
                     <td><input type="radio" name="belly" value="4" /> 근육형</td></tr>
                  <tr><td class="labelwidth"><label for="leg">하체</label></td>
                     <td><input type="radio" name="leg" value="1" checked/> 마름</td>
                     <td><input type="radio" name="leg" value="2" /> 보통</td>
                     <td><input type="radio" name="leg" value="3" /> 지방형</td>
                     <td><input type="radio" name="leg" value="4" /> 근육형</td></tr>
               </table>
             </fieldset><br>
             <div class="buttons">
                <input id="submitButton" type="submit" value="제출">&nbsp;&nbsp;
                <input id="resetButton" type="reset" value="다시쓰기"/>
             </div><br>
         </form>
   </div>
  <jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>