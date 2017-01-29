<%--
  Created by IntelliJ IDEA.
  User: deutsch
  Date: 29/01/17
  Time: 13:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %><%-- Created by IntelliJ IDEA. --%>
<%@ page import="java.util.LinkedList" %>
<%@ page import="ShopServlets.*" %>


<html>
<head>
    <title>TestShop</title>
    <link type="text/css" rel="stylesheet" href="../css/materialize/css/materialize.css"  media="screen,projection"/>
    <link type="text/css" rel="stylesheet" href="../css/shop.css"  media="screen,projection"/>
</head>
<body>
    <div id="container">
        <%
            LinkedList<PackView> ListPack = (LinkedList<PackView>) request.getAttribute("listPack");
            LinkedList<BoostView> ListBoost = (LinkedList<BoostView>) request.getAttribute("listBoost");
            LinkedList<SkinMapView> ListMap = (LinkedList<SkinMapView>) request.getAttribute("listMap");
            LinkedList<SkinCartonView> ListCarton = (LinkedList<SkinCartonView>) request.getAttribute("listCarton");


            String affichageOffresPack = "<tr id=pack>";
            String affichageOffresBoost = "<tr id=boost>";
            String affichageOffresMap = "<tr id=map>";
            String affichageOffresCarton = "<tr id=carton>";


            out.println("<table border=1>");

            for (PackView p : ListPack) {
                affichageOffresPack.concat("<td><image src="+p.getImage()+"/></td>");
            }
            affichageOffresPack.concat("</tr>");

            for (BoostView p : ListBoost) {
                affichageOffresBoost.concat("<td><image src="+p.getImage()+"/></td>");
            }
            affichageOffresBoost.concat("</tr>");

            for (SkinMapView p : ListMap) {
                affichageOffresMap.concat("<td><image src="+p.getImage()+"/></td>");
            }
            affichageOffresMap.concat("</tr>");

            for (SkinCartonView p : ListCarton) {
                affichageOffresCarton.concat("<td><image src="+p.getImage()+"/></td>");
            }
            affichageOffresCarton.concat("</tr>");


            out.print(affichageOffresPack);
            out.print(affichageOffresBoost);
            out.print(affichageOffresMap);
            out.print(affichageOffresCarton);

            out.println("</table");

        %>


    </div>
</body>
</html>
