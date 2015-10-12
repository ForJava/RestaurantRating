<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<head>
    <meta charset="utf-8">
    <title>Home Page</title>
    <meta name="description" content="HomePage">
    <link href="../resources/css/bootstrap-theme.min.css" rel="stylesheet">
    <link href="../resources/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<%@include file="../jspf/header.jspf" %>
<div class="container" style="width: 96%">
    <div id="googleMap" style="width: 100%; height: 90%; background-color: #CCC;"></div>
</div>
</body>
<%@include file="../jspf/footer.jspf" %>
<script type="text/javascript">
    $(function () {
        initialize();
    });

    function initialize() {
        navigator.geolocation.getCurrentPosition(function (position) {
            var currentLatitude = position.coords.latitude;
            var currentLongitude = position.coords.longitude;

            var mapCanvas = document.getElementById("googleMap");
            var center = new google.maps.LatLng(currentLatitude, currentLongitude);
            var mapProperties = {
                center: center,
                zoom: 13,
                mapTypeId: google.maps.MapTypeId.ROADMAP
            };

            var map = new google.maps.Map(mapCanvas, mapProperties);

            var currentPosition = new google.maps.Marker({
                position: center,
                animation: google.maps.Animation.BOUNCE
            });

            var marker = new google.maps.Marker({
                position: new google.maps.LatLng(46.479394, 30.739456)
            });

            currentPosition.setMap(map);
            marker.setMap(map);
        });

    }
</script>
</html>
