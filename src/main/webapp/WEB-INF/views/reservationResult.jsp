<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="${path.js}/sangyoon2.js"></script>
</head>
<body>

<button id="gangnam">강남CGV</button>
<button id="gangbook">강북CGV</button>
<button id="hongde">홍대CGV</button>
<button id="shinchon">신촌CGV</button>
<button id="myungdong">명동CGV</button>

<button style="margin-right: 100px;" type="button"class="btn-next">다음페이지이동</button>

</body>
<script>
sangyoon2.main.init('${path.ctx}');
</script>
</html>