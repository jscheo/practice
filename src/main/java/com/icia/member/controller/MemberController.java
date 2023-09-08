package com.icia.member.controller;

import com.icia.member.dto.MemberDTO;
import com.icia.member.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class MemberController {
    @Autowired
    private MemberService memberService ;
    @GetMapping("/save")
    public String save(){
        return "memberSave";
    }
    @GetMapping("/login")
    public String login(){
        return "memberLogin";
    }

    @PostMapping("/save")
    public String save(@ModelAttribute MemberDTO memberDTO){
        memberService.save(memberDTO);
        return "memberLogin";
    }

    @PostMapping("/login")
    public String login (@ModelAttribute MemberDTO memberDTO, HttpSession session, Model model){
        MemberDTO memberDTO1= memberService.login(memberDTO);
        if(memberDTO1 != null){
            System.out.println("로그인 성공");
            session.setAttribute("loginEmail", memberDTO1.getMemberEmail());
            model.addAttribute("member", memberDTO1);
            return "memberMain";
        }else{
            System.out.println("로그인 실패");
            return "memberLogin";
        }

    }

    @GetMapping("/list")
    public String list(Model model){
        List<MemberDTO> memberDTOList= memberService.findAll();
        model.addAttribute("memberList", memberDTOList);
        return "memberList";
    }


}
