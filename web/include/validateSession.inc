<%


    // Validate the sesison
    SessionManager sessionManager = new SessionManager();
    String token = sessionManager.getSessionTokenFromRequest(request);
    if(!sessionManager.validate(token, "")){

        response.sendRedirect("index.jsp");
        return;
    }



%>
