package com.bitmascot.controller

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
            def response = authenticationService.userPassword().decodeMD5()

            if (!response) {
                redirect(controller: "user", action: "index")
            } else {
                [user: response]
            }
    }

    def updatepassword() {
        def response = authenticationService.getUser()
        response = userService.resetpassword(response, params.newPassword)
        if (!response.isSuccess){
            flash.redirectParams = response.model
            redirect(controller: "user", action: "edit")
        }else{
            redirect(controller: "user", action: "index")
        }

    }
}
