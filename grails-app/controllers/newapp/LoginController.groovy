package newapp

import uk.co.desirableobjects.oauth.scribe.OauthService

class LoginController {
    OauthService oauthService
    FBLoginService fbLoginService
    def index() {

    }
    def facebookSuccess(){

        String sessionKey = oauthService.findSessionKeyForAccessToken('facebook')
        def seccionKey = session[sessionKey]
        def fbData = facebookLoginService.serviceMethod(sessionKey)
        def finalData = JSON.parse(fbData)
        render fbData
    }
}
