package cz.czechitas.java2webapps.ukol5.controller;

import jakarta.validation.Valid;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * Kontroler obsluhující registraci účastníků dětského tábora.
 */
@Controller
public class RegistraceController {

  @GetMapping("/")
  public Object index() {
    ModelAndView modelAndView = new ModelAndView("formular");
    modelAndView.addObject("form",new RegistraceForm());
    return modelAndView;
  }

  @PostMapping("/")
  public Object form(@Valid @ModelAttribute("form") RegistraceForm form, BindingResult bindingResult) {

    if (bindingResult.hasErrors()) {
      return "/formular";
    }

    return new ModelAndView("rekapitulace")
            .addObject("jmeno",form.getJmeno())
            .addObject("prijmeni",form.getPrijmeni())
            .addObject("birthDate",form.getBirthDate())
            .addObject("pohlavi",form.getPohlavi())
            .addObject("turnus",form.getTurnus())
            .addObject("email",form.getEmail())
            .addObject("telefon",form.getTelefon());
  }
}
