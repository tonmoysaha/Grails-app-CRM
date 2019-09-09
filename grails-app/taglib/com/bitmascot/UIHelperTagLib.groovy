package com.bitmascot

import com.bitmascot.user.AuthenticationService

class UIHelperTagLib {
    static namespace = "UIHelper"
    AuthenticationService authenticationService
    def memberActionMenu = { attrs, body ->
        out << '<li class="nav-item dropdown show">'
        out << g.link(class:"nav-link dropdown-toggle", "data-toggle":"dropdown"){authenticationService.getUserName()}
        out << '<div class="dropdown-menu">'
        out << g.link(controller: "authentication", action: "logout", class: "dropdown-item"){g.message(code:"logout")}
        out << "</div></li>"
    }
    def leftNavigation = { attrs, body ->
        List navigations = new LinkedList()

        if(authenticationService.isAdministration()){
            navigations.add([controller: "user", action: "index", name: "user"])
        }
        if (authenticationService.isRegularUser()){
            navigations.add([controller: "home", action: "show", name: "My Profile"])

        }

        navigations.each { menu ->
            out << '<li class="list-group-item">'
            out << g.link(controller: menu.controller, action: menu.action) { g.message(code: menu.name, args: ['']) }
            out << '</li>'
        }
    }

}
