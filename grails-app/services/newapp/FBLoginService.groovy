package newapp
import org.scribe.model.Token
import grails.transaction.Transactional
import uk.co.desirableobjects.oauth.scribe.OauthService


@Transactional
class FBLoginService {
    OauthService oauthService
    def serviceMethod(Token facebookToken) {

        def finalToken = oauthService.getFacebookResource(facebookToken , 'https://graph.facebook.com/v2.2/me').body
        return finalToken


    }
}
