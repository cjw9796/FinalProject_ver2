package com.kh.myproject.member.user.controller;


import com.kh.myproject.member.user.model.entity.Manager;
import com.kh.myproject.member.user.model.entity.User;
import com.kh.myproject.member.user.repository.UserRepository;
import com.kh.myproject.member.user.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@SessionAttributes("manager")
public class ManagerController {


    @Autowired
    UserService userService;


    // 매니저 뷰페이지는 크게 N가지로 나눈다.
    // 처음 메인 페이지를 보여주고
    // 그다음 여러개의 관리 페이지를 둔다.
    // 일정 게시글, 동행 , 렌트카 예약내역, 항공권 예약내역, 문의글 (답변 가능해야함)
    @GetMapping("/manager/managerHome")
    public ModelAndView managerHome(
            @ModelAttribute("check_manager") Manager check_manager,
            ModelAndView modelAndView,
            HttpSession session) {

        System.out.println(check_manager);

        if (check_manager.getManagerId() != null || session.getAttribute("manager") != null) {
            //세션값이 있거나 userCOntroller에서 로그인 요청이 들어왔다면

            modelAndView.setViewName("/member/manager/managerHome");
            List<User> userList = userService.getSomeUser();

            modelAndView.addObject("manager", check_manager);
            modelAndView.addObject("userList",userList);

            // 렌트카 테이블에서 상위 예약정보 몇개를 빼온다.
            // 항공편 테이블에서 상위 예약정보 몇개를 빼온다.
            // 게시글 목록에서 각 카ㅌ고리별 상위 게시글 1개씩 빼온다.

        } else {

            // url로 접속했을 경우 에러페이지로 이동시킨다.
            modelAndView.setViewName("redirect:/errorPage");

        }

        return modelAndView;
    }

    @GetMapping("/manager/manageUser")
    public String userList(Model model) {

        List<User> userList = userService.findAll();
        model.addAttribute("userList",userList);


        return "member/manager/manageUser";
    }
//    @GetMapping("/manager/managerHome")
//    public String homehome() {
//
//        return "member/manager/managerHome";
//    }

    @GetMapping("/manager/manageBoard")
    public String accompanyList() {

        return "member/manager/manageBoard";
    }


    @GetMapping("/manager/manageReservation")
    public String flightList() {

        return "member/manager/manageReservation";
    }


    @GetMapping("/manager/manageUserInfo")
    public String flightList(@RequestParam("userNumber") Long userNumber) {

        System.out.println(userNumber);

        return "member/manager/manageUserInfo";
    }


    @GetMapping("/manager/logout")
    public String flightList(SessionStatus sessionStatus) {

        sessionStatus.setComplete(); // 매니저 세션을 죽인다.

        return "redirect:/";
    }



//    @GetMapping("/manager/rentcarList")
//    public String rentcarList() {
//
//        return "managerRentcar";
//    }
//
//    @GetMapping("/manager/qnaList")
//    public String qnaList() {
//
//        return "manageBoard";
//    }



}
