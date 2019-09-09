package com.bitmascot.controller

import com.bitmascot.AppUtil
import com.bitmascot.user.AuthenticationService


class UserInterceptor {
    AuthenticationService authenticationService
    boolean before() {
        if (authenticationService.isAdministration()){
            return  true
        }
        flash.message = AppUtil.infoMessage("You are not Authorised for this action",false)
        redirect(controller: "home",action: "index")
    }


}
