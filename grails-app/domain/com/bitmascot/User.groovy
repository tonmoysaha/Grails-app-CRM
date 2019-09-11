package com.bitmascot

import java.text.ParseException
import java.time.LocalDate
import java.time.Period
import java.time.format.DateTimeFormatter

class User {
    Integer id
    String firstName
    String lastName
    String name
    String phone
    String address
    String email
    Integer age
    String password
    String userType = GlobalConfig.USER_TYPE.REGULAR_USER
    String birthdate
    Boolean isActive = true


    static constraints = {
        email(email: true, nullable: false, unique: true, blank: false)
        password(blank: false)
        lastName(nullable: true)
        address(nullable: true)
        firstName(nullable: true)
        birthdate(nullable: true)
        age(nullable: true)
        name(nullable:  true)
        phone(nullable: true)


    }

    def beforeInsert (){
        this.password = this.password.encodeAsMD5()
    }


    def beforeUpdate() {
        this.password = this.password.encodeAsMD5()
    }


}
