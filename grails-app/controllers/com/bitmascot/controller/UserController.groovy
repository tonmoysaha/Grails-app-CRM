package com.bitmascot.controller

import com.bitmascot.User
import com.bitmascot.user.AuthenticationService
import com.bitmascot.user.UserService

class UserController {
    UserService userService
    AuthenticationService authenticationService

    def index() {
        def response = userService.list(params)
        [userList: response.list, total:response.count]
    }

    def details(Integer id) {
        def response = userService.getById(id)
        if (!response){
            redirect(controller: "user", action: "index")
        }else{
            [user: response]
        }
    }

    def show(){
       Integer id = authenticationService.getUserId()
        def response  = userService.getById(id)
        if (!response){
            redirect(controller: "user", action: "index")
        }else {
            [user: response]
        }

        }


    def create() {
        [user: flash.redirectParams]
    }

    def save() {
        def response = userService.save(params)
        if (!response.isSuccess) {
            flash.redirectParams = response.model
            redirect(controller: "user", action: "create")
        }else{
            redirect(controller: "user", action: "index")
        }
    }


    def edit(Integer id) {
        if (flash.redirectParams) {
            [user: flash.redirectParams]
        } else {
            def response = userService.getById(id)
            if (!response) {
                redirect(controller: "user", action: "index")
            } else {
                [user: response]
            }
        }
    }


    def update() {
        def response = userService.getById(params.id)
        if (!response){
            redirect(controller: "user", action: "index")
        }else{
            response = userService.update(response, params)
            if (!response.isSuccess){
                flash.redirectParams = response.model
                redirect(controller: "user", action: "edit")
            }else{
                redirect(controller: "user", action: "index")
            }
        }
    }

    def delete(Integer id) {
        def response = userService.getById(id)
        if (!response){
            redirect(controller: "user", action: "index")
        }else{
            response = userService.delete(response)
            redirect(controller: "user", action: "index")
        }
    }



}



