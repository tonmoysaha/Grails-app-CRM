package com.bitmascot.controller

import com.bitmascot.user.AuthenticationService
import com.bitmascot.user.UserService

class AuthenticationController {

    AuthenticationService authenticationService
    UserService userService
    def login(){
        if (authenticationService.isAuthenticated()){
            redirect(controller: "home", action: "index")
        }
    }
    def doLogin(){
        if (authenticationService.doLogin(params.email,params.password)){
            redirect(controller: "home" , action: "index")
        }else {
            redirect(controller: "authentication" , action: "login" )
        }
    }

    def logout(){
        session.invalidate()
        redirect(controller: "authentication" , action: "login")
    }
    def registration(){
        [user: flash.redirectParams]
    }
    def doRegistration(){
        def response = userService.save(params)

        if (response.isSuccess){
            authenticationService.setUserAuthentication(response.model)
            redirect(controller: "home" ,action: "index")
        }else{
            redirect(controller: "authentication" ,action: "registration")
        }
    }
}
