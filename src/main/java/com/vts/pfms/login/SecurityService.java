package com.vts.pfms.login;

public interface SecurityService {
    String findLoggedInUsername();

    void autologin(String username, String password);
}
