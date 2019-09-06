package com.bitmascot

class User {
    Integer id
    String firstName
    String lastName
    String email
    String address
    String phone
    String birthdate
    String password
    String identityHash
    Long identityHashLastUpdate
    Boolean isActive =true

    Date dateCreated
    Date dateUpdated
    String memberType = GlobalConfig.USER_TYPE.REGULAR_USER

    static constraints = {
        email(email: true, nullable: false, unique: true, blank: false)
        password(blank: false)
        firstName(nullable: true)
        lastName(nullable: true)
        phone(nullable: true)
        address(nullable: true)
        birthdate(nullable: true)
        identityHash(nullable: true)
        identityHashLastUpdate(nullable: true)
    }

    def beforeInsert(){
        this.password = this.password.encodeAsMD5() ;
    }
    def beforeUpdate(){
        this.password = this.password.encodeAsMD5();
    }

}
