package com.bitmascot.controller

import com.bitmascot.user.AuthenticationService
import com.bitmascot.user.UserService

class HomeController {
      AuthenticationService authenticationService
    UserService userService
    def index() { }

    def show(){
        Integer id = authenticationService.getUserId()
        def response  = userService.getById(id)
        if (!response){
            redirect(controller: "user", action: "index")
        }else {
            [user: response]
        }

    }
}
