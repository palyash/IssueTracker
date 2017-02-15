package issuetracker

class RegisterController {
    def springSecurityService
    def index() {
        println(springSecurityService.currentUser?.username)
    }

    def saveUser(){

        String username = params.username
        String password = params.password
        def createRole = Role.findById(1)
        def createUser = new User(username: username , password: password).save()

        def saveUser = new UserRole(user: createUser , role: createRole)
        if(saveUser.save()){
            render 'saved'
        }
        else
            render 'not saved'

    }
}
