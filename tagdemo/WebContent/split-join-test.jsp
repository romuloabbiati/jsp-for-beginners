<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<html>

<body>

<c:set var="cities" value="Montes Claros,Uberlandia,Campinas,London" />

<c:set var="citiesArray" value="${fn:split(cities, ',')}" />

<c:forEach var="tempCity" items="${citiesArray}">

	${tempCity} <br/>

</c:forEach>

<c:set var="joinCities" value="${fn:join(citiesArray, '*')}" />

 Result of joining: ${joinCities}

</body>

</html>