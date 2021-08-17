package com.security.oauth2.ex.api;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/")
public class HomeContoller {

    @GetMapping
    public String home(){
        return "hello";
    }

    @GetMapping("/user")
    public String user(){
        return "user";
    }
}

