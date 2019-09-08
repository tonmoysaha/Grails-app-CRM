package com.bitmascot.controller

import com.bitmascot.user.AuthenticationService


class SecurityInterceptor {

    AuthenticationService authenticationService

    SecurityInterceptor() {
        matchAll().excludes(controller: "authentication")
    }

    boolean before() {
        if (!authenticationService.isAuthenticated()){
            redirect(controller: "authentication" , action: "login")
            return false
        }
        return  true
    }


}
