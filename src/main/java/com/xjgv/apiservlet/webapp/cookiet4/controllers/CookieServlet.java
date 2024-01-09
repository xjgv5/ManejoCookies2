package com.xjgv.apiservlet.webapp.cookiet4.controllers;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.Arrays;
import java.util.Optional;

@WebServlet("/cambiar-color")
public class CookieServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Cookie[] cookies = req.getCookies() != null ? req.getCookies() : new Cookie[0];
        Optional<String> cookieOptional = Arrays.stream(cookies)
                .filter(c -> "color".equals(c.getName()))
                .map(Cookie::getValue)
                .findAny();
    }
}
