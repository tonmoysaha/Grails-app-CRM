package com.bitmascot.controller

import com.bitmascot.User
import com.bitmascot.user.AuthenticationService
import com.bitmascot.user.UserService

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
}
