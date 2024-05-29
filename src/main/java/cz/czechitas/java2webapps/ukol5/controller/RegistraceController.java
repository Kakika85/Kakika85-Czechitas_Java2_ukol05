package cz.czechitas.java2webapps.ukol5.controller;

import jakarta.validation.Valid;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.time.LocalDate;
import java.time.Period;

@Controller
@RequestMapping("/")
public class RegistraceController {
    RegistraceForm registraceForm = new RegistraceForm();

    @GetMapping("")
    public ModelAndView showForm() {
        ModelAndView result = new ModelAndView("/formular");
        result.addObject("registraceForm", new RegistraceForm());


        return result;
    }

    @PostMapping("")
    public Object processForm(@Valid @ModelAttribute("registraceForm") RegistraceForm form, BindingResult bindingResult, Model model) {

     /*   if (bindingResult.hasErrors()) {
            return "/error";
        }*/

        Period period = form.getDatumNarozeni().until(LocalDate.now());
        int vek = period.getYears();

        if (vek < 9 || vek > 15) {
            bindingResult.rejectValue("datumNarozeni", "error.datumNarozeni", "Věk musí být mezi 9 a 15 lety");
            return "/formular";
        }

        model.addAttribute("registraceForm", form);
        return "/registr";
    }
/*        return new ModelAndView("/registr")
                .addObject("email", form.getEmailRodice());
         return "redirect:/";*/
}