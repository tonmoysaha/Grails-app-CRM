package com.bitmascot

import java.text.ParseException
import java.time.LocalDate
import java.time.Period
import java.time.format.DateTimeFormatter

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


    def beforeUpdate() {
        this.password = this.password.encodeAsMD5()
    }

    def beforeInsertAge() throws ParseException{
        DateTimeFormatter dateTimeFormatter = DateTimeFormatter.ofPattern("dd/MM/yyyy")
        LocalDate oldDate = LocalDate.parse(this.birthdate,dateTimeFormatter)
        LocalDate today = LocalDate.now()
        Period period = Period.between(oldDate,today)
        this.age = period.getYears()
    }

}
