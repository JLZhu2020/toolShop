package com.seproject.controllers;

import com.seproject.service.ToolService;
import net.sf.json.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;


@Controller
public class ToolController {

    @Autowired
    ToolService toolService;

    @RequestMapping("/tools")
    public String home(){
        return "tools";
    }

    @RequestMapping("/mycart")
    public String cart(){
        return "mycart";
    }

    @RequestMapping("/allTools")
    public String allTools(Model model ){
        model.addAttribute("allTools",JSONArray.fromObject(toolService.findAll()).toString());
        return "allTools";
    }

    @RequestMapping(value = "/popular", method = RequestMethod.GET)
    @ResponseBody
    public String popular(){
        return JSONArray.fromObject(toolService.findPopular()).toString();
    }

    @RequestMapping(value = "/search", method = RequestMethod.GET)
    @ResponseBody
    public String search(@RequestParam(value="item") String item){
        System.out.println("hello");
        System.out.println(JSONArray.fromObject(toolService.find(item)).toString());
        return JSONArray.fromObject(toolService.find(item)).toString();
    }
}
