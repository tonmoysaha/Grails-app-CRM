package com.bitmascot

class GlobalConfig {
    public static final def USER_TYPE = [
        ADMINISTRATOR: 'ADMINISTRATOR',
        REGULAR_USER: 'REGULAR_USER',
    ]
    public static Integer itemPerPage(){
        return 5;
    }
}
