package com.dockerforjavadevelopers.hello;


import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.RequestMapping;

import java.text.SimpleDateFormat;
import java.util.Date;


@RestController
public class HelloController {
    
    @RequestMapping("/hello")
    public String index() {
        Date dNow = new Date( );
        SimpleDateFormat ft =
                new SimpleDateFormat ("E yyyy.MM.dd 'at' hh:mm:ss a zzz");
        return "Welcome to world of EKS auto deployment. Current Date: "+ft.format(dNow);
    }
    
}
