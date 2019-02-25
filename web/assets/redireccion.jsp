<%
    HttpSession jj = request.getSession(false);
    String idr = (String) jj.getAttribute("user_nombre");
    if (idr == null) {
        response.sendRedirect("index.jsp");
    }

%>