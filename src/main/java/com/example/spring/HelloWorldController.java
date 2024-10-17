package com.example.spring;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Date;

@RestController
public class HelloWorldController {

    @GetMapping(value = "/")
    public Welcome getWelcomeMessage() {
        Welcome welcome = new Welcome();
        welcome.setMessage("Welcome to GCP course");
        welcome.setTimestamp(new Date());

        return welcome;
    }
}
