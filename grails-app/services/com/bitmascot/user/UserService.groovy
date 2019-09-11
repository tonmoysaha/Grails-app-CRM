package com.bitmascot.user

import com.bitmascot.AppUtil
import com.bitmascot.GlobalConfig
import com.bitmascot.User
import grails.web.servlet.mvc.GrailsParameterMap

import java.time.LocalDate
import java.time.Period
import java.time.format.DateTimeFormatter

class UserService {

    def save(GrailsParameterMap params) {
        User user = new User(params)

        DateTimeFormatter dateTimeFormatter = DateTimeFormatter.ofPattern("dd/MM/yyyy")
        LocalDate oldDate = LocalDate.parse(user.birthdate, dateTimeFormatter)
        LocalDate today = LocalDate.now()
        Period period = Period.between(oldDate, today)

        user.age = period.getYears()
        user.name = user.firstName + user.lastName

        def response = AppUtil.saveResponse(false, user)
        if (user.validate()) {
            user.save(flush: true)
            if (!user.hasErrors()) {
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
            if (!user.hasErrors()) {
                response.isSuccess = true
            }
        }
        return response
    }


    def getById(Serializable id) {
        return User.get(id)
    }

    def resetpassword(User user, params) {
        user.password = params
        def response = AppUtil.saveResponse(false, user)
        if (user.validate()) {
            user.save(flush: true)
            if (!user.hasErrors()) {
                response.isSuccess = true
            }
        }
        return response
    }


    def list(GrailsParameterMap params) {
        params.max = params.max ?: GlobalConfig.itemsPerPage()
        List<User> userList = User.createCriteria().list(params) {
            if (params.query) {
                ilike("name", "%${params.query}%")
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
