package com.bitmascot.user

import com.bitmascot.GlobalConfig
import com.bitmascot.User


class AppInitializationService {

    static initialize(){
        initUser()
    }
    private  static  initUser(){
        if (User.count() == 0){
            User user = new User()
            user.firstName = "ma"
            user.lastName="love"
            user.email="admin@localhost.local"
            user.password="1111"
            user.userType = GlobalConfig.USER_TYPE.ADMINISTRATOR
            user.save(flash: true)
        }
    }
}
