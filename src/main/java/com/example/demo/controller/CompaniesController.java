package com.example.demo.controller;


import com.example.demo.dto.CompanyDto;
import com.example.demo.repository.AnswerRepository;
import com.example.demo.repository.QuestionRepository;
import com.example.demo.repository.UserRepository;
import com.example.demo.service.*;
import lombok.RequiredArgsConstructor;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;


@RequiredArgsConstructor
@RequestMapping("/companies")
@Controller
public class CompaniesController {
    private final CompanyService companyService;
    private final UserRepository userRepository;
    private final QuestionRepository questionRepository;
    private final AnswerRepository answerRepository;
    private final ClickService clickService;
    private final ApprovesService approvesService;

    @GetMapping()
    public String companies(Model model) {
        model.addAttribute("companies", companyService.getCompanies());
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        var user = userRepository.findUserByEmail(auth.getName()).orElse(null);
        model.addAttribute("user", user);
        return "companies";
    }

    @GetMapping("/{companyId}")
    public String company(Model model, @PathVariable int companyId) {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        var user = userRepository.findUserByEmail(auth.getName()).orElse(null);
        CompanyDto company = companyService.getCompanyById(companyId);
        model.addAttribute("user", user);
        model.addAttribute("company", company);
        int total = questionRepository.findQuestionByUserId(user.getId()).size() +
                answerRepository.findAnswerByUserId(user.getId()).size();
        if (total >= 3) {
            model.addAttribute("allowed", "allowed");
            if (clickService.isClicked(user.getId(), companyId)) {
                model.addAttribute("clicked", "clicked");
            }
        }
        model.addAttribute("approves", approvesService.getAllApproves());
        return "company";
    }

    @GetMapping("/click/{companyId}")
    public String click(@PathVariable int companyId) {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        var user = userRepository.findUserByEmail(auth.getName()).orElse(null);
        if (!clickService.isClicked(user.getId(), companyId)) {
            clickService.saveClick(user.getId(), companyId);
        }
        return "redirect:/companies/" + companyId;
    }
}
