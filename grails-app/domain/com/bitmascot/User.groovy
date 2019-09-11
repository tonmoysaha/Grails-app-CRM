package com.bitmascot

import java.text.SimpleDateFormat
import java.time.LocalDate
import java.time.Period

class User {
    Integer id
    String firstName
    String lastName
    String phone
    String address
    String email
    Integer age
    String password
    String userType = GlobalConfig.USER_TYPE.REGULAR_USER
    String identityHash
    String birthdate
    Long identityHashLastUpdate
    Boolean isActive = true

    Date dateCreated
    Date lastUpdated

    static constraints = {
        email(email: true, nullable: false, unique: true, blank: false)
        password(blank: false)
        lastName(nullable: true)
        address(nullable: true)
        firstName(nullable: true)
        identityHash(nullable: true)
        birthdate(nullable: true)
        age(nullable: true)
        identityHashLastUpdate(nullable: true)
        phone(nullable: true)


    }

    def beforeInsert (){
        this.password = this.password.encodeAsMD5()
    }


    def beforeUpdate(){
        this.password = this.password.encodeAsMD5()
    }
    def userAge (){
        Date date1 = new SimpleDateFormat("dd/MM/yyyy").parse(this.birthdate)
        LocalDate today = LocalDate.now()
        LocalDate birthday = LocalDate.of(date1.year,date1.month,date1.day)
        Period period = Period.between(birthday,today)
        this.age = period.years
    }
}
