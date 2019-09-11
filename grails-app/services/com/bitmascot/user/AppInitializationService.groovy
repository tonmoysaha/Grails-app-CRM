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
            user.email="admin@localhost.local"
            user.password="admin"
            user.userType = GlobalConfig.USER_TYPE.ADMINISTRATOR

        }
    }
}
