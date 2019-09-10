package com.bitmascot.user

import com.bitmascot.AppUtil
import com.bitmascot.GlobalConfig
import com.bitmascot.User


class AuthenticationService {
public static final String AUTHORIZED = "AUTHORIZED";
    def setUserAuthentication(User user){
        def authorization = [isLoggedIn : true , user: user]
        AppUtil.getAppSession()[AUTHORIZED] = authorization
    }

    def doLogin(String email , String password){
        password = password.encodeAsMD5()
        User user = User.findByEmailAndPassword(email,password)
        if (user){
            setUserAuthentication(user)
            return  true
        }
        return false
    }

    def isAuthenticated(){
        def authorization = AppUtil.getAppSession()[AUTHORIZED]
        if (authorization && authorization.isLoggedIn){
            return  true
        }
        return  false
    }

    def getUser(){
        def authorization = AppUtil.getAppSession()[AUTHORIZED]
        return  authorization?.user
    }
    def getUserName(){
        def user = getUser()
        return "${user.firstName} ${user.lastName} ${user.id}"
    }
  
    def isAdministration(){
        def user = getUser()
        if (user && user.userType == GlobalConfig.USER_TYPE.ADMINISTRATOR){
            return  true
        }
        return  false
    }
    def isRegularUser(){
        def user = getUser()
        if (user && user.userType == GlobalConfig.USER_TYPE.REGULAR_USER){
            return  true
        }
        return  false
    }
    def getUserPassword(){
        def user = getUser()
        return "${user.password}"
    }


}
