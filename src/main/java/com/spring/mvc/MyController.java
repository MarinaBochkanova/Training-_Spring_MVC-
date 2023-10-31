package com.spring.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

@Controller
@RequestMapping("/employee")
public class MyController {
    @RequestMapping("/")
    public String showFirstView() {
        return "first-view";
    }

    @RequestMapping("/askDetails")
    public String askEmployeeDetails(Model model) {
        model.addAttribute("employee", new Employee());
        return "ask-emp-view";
    }

    //    @RequestMapping("/showDetails")
//    public String showDetails(){
//        return "show-emp-view";
//    }
//    @RequestMapping("/showDetails")
//    public String showDetails(HttpServletRequest request, Model model) {
//        String empName = request.getParameter("employeeName");
//        empName = "Mrs. " + empName;
//        model.addAttribute("nameAttribute", empName);
//        model.addAttribute("description", " -- specialist");
//        return "show-emp-view";
//    }

    @PostMapping( "/showDetails")
    public String showDetails(@Valid @ModelAttribute("employee") Employee emp,
                              BindingResult bindingResult) {
        int salary = emp.getSalary();
        emp.setSalary(salary * 10);
        if (bindingResult.hasErrors()) {
            return "ask-emp-view";
        } else {
            return "show-emp-view";
        }
    }

}

