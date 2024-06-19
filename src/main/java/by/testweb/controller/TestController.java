package by.testweb.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping
@RequiredArgsConstructor
public class TestController {

    @GetMapping
    public String hello() {
        return "Hello World";
    }
}
