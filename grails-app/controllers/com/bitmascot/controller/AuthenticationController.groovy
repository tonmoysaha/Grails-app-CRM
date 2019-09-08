package com.bitmascot.controller

import com.bitmascot.user.AuthenticationService

class AuthenticationController {

    AuthenticationService authenticationService
    def login(){
        if (authenticationService.isAuthenticated()){
            redirect(controller: "home", action: "index")
        }
    }
    def doLogin(){
        if (authenticationService.doLogin(params.email,params.password)){
            redirect(controller: "home" , action: "index")
        }else {
            redirect(controller: "authentication" , action: long )
        }
    }

    def logout(){
        session.invalidate()
        redirect(controller: "authentication" , action: "login")
    }
}
