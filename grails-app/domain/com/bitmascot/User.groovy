package com.bitmascot

class User {
    Integer id
    String firstName
    String lastName
    String name = this.getFirstName() +" "+this.getLastName()
    String phone
    String address
    String email
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
        name(nullable: true)
        identityHash(nullable: true)
        birthdate(nullable: true)
        identityHashLastUpdate(nullable: true)
        phone(nullable: true)


    }

    def beforeInsert (){
        this.password = this.password.encodeAsMD5()
    }


    def beforeUpdate(){
        this.password = this.password.encodeAsMD5()
    }

}
