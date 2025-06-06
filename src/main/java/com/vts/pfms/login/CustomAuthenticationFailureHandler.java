package com.vts.pfms.login;

import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.authentication.AuthenticationFailureHandler;
import org.springframework.stereotype.Component;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;

@Component
public class CustomAuthenticationFailureHandler implements AuthenticationFailureHandler {

    @Override
    public void onAuthenticationFailure(HttpServletRequest request, HttpServletResponse response,
                                        AuthenticationException exception) throws IOException, ServletException {
        HttpSession session = request.getSession();
        String loginPage = (String) session.getAttribute("loginPage");

        // Default failure redirect
        String failureUrl = "/login?error";

        if ("wr".equals(loginPage)) {
            failureUrl = "/wr?error";
        }

        // Redirect to the appropriate page based on loginPage flag
        response.sendRedirect(request.getContextPath() + failureUrl);
    }
}

