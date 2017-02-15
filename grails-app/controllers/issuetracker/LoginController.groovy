package issuetracker

import uk.co.desirableobjects.oauth.scribe.OauthService

class LoginController {
    OauthService oauthService // or new OauthService() would work if you're not in a spring-managed class
    def facebookLoginService

    def index() { }

    def facebookSuccess(){

            String sessionKey = oauthService.findSessionKeyForAccessToken('twitter')
            def seccionKey = session[sessionKey]
            def fbData = facebookLoginService.serviceMethod(sessionKey)
            def finalData = JSON.parse(fbData)
            render fbData
    }
}
