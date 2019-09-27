package com.caigicungco.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ElectronicController {

    @GetMapping(value = "/admin/electronic/ae")
    public String viewAE(Model model, @RequestParam(name = "type",defaultValue = "add") String type){
        if(type.equalsIgnoreCase("add")){

        }else{

        }
        return "electronic/add-edit";
    }

    @PostMapping(value = "/admin/electronic/ae")
    public String aeElectronic(){

        return "redirect:/admin/electronic/ae";
    }

}
