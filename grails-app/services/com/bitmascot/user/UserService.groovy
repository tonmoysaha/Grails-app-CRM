package com.bitmascot.user

import com.bitmascot.AppUtil
import com.bitmascot.GlobalConfig
import com.bitmascot.User
import grails.web.servlet.mvc.GrailsParameterMap

class UserService {

    def save(GrailsParameterMap params) {
        User user = new User(params)
        def response = AppUtil.saveResponse(false, user)
        if (user.validate()) {
            user.save(flush: true)
            if (!user.hasErrors()){
                response.isSuccess = true
            }
        }
        return response
    }


    def update(User user, GrailsParameterMap params) {
        user.properties = params
        def response = AppUtil.saveResponse(false, user)
        if (user.validate()) {
            user.save(flush: true)
            if (!user.hasErrors()){
                response.isSuccess = true
            }
        }
        return response
    }


    def getById(Serializable id) {
        return User.get(id)
    }

    def resetpassword(User user, params){
        user.password = params
        def response = AppUtil.saveResponse(false, user)
        if (user.validate()) {
            user.save(flush: true)
            if (!user.hasErrors()){
                response.isSuccess = true
            }
        }
        return response
    }



    def list(GrailsParameterMap params) {
        params.max = params.max ?: GlobalConfig.itemsPerPage()
        List<User> userList = User.createCriteria().list(params) {
            if (params.query){
                ilike("firstName", "%${params.query}%")
            }
            if (!params.sort) {
                order("id", "desc")
            }
        }
        return [list: userList, count: User.count()]
    }


    def delete(User user) {
        try {
            user.delete(flush: true)
        } catch (Exception e) {
            println(e.getMessage())
            return false
        }
        return true
    }

}
