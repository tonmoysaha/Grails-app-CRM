package bitmascot

import com.bitmascot.user.AppInitializationService

class BootStrap {
    AppInitializationService appInitializationService
    def init = { servletContext ->
        appInitializationService.initialize()
    }
    def destroy = {
    }
}
