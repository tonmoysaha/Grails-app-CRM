package com.bitmascot.controller

import com.bitmascot.User
import com.bitmascot.user.AuthenticationService
import com.bitmascot.user.UserService

import java.time.LocalDate
import java.time.Period
import java.time.format.DateTimeFormatter

class HomeController {
    AuthenticationService authenticationService
    UserService userService

    def index() {}

    def show() {

        def response = authenticationService.getUser()
        if (!response) {
            redirect(controller: "home", action: "index")
        } else {
            [user: response]
        }

    }

    def editpassword() {
            def response = authenticationService.getUser()

            if (!response) {
                redirect(controller: "user", action: "index")
            } else {
                [user: response]
            }
    }

    def updatepassword() {
        def response = authenticationService.getUser()
        String password = params.password
        password=password.encodeAsMD5()
        if (authenticationService.getUserPassword() == password){
            response = userService.resetpassword(response,params.newPassword)
            if (!response.isSuccess){
                redirect(controller: "home", action: "editpassword")
            }else{
                redirect(controller: "home", action: "index")
            }
        }
        else {
            redirect(controller: "home", action: "editpassword")
        }


    }

    def age(){
        User user = authenticationService.getUser()

        DateTimeFormatter dateTimeFormatter = DateTimeFormatter.ofPattern("dd/MM/yyyy")
        LocalDate oldDate = LocalDate.parse(user.getBirthdate(),dateTimeFormatter)
        LocalDate today = LocalDate.now()
        Period period = Period.between(oldDate,today)
        User user1 = new User();
        user1.setAge(period.getYears())
    }
}
