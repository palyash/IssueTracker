package newapp

class RegisterController {

    def index() {
    }

    def saveUser(){
        String errorMsg = 'Username already exist please try again with a different one'
        String userName = params.username
        String password = params.password
        println(userName+password)

        def user = new User(username: userName, password: password)
        user.save()
        println(user)
        def role = Role.findById(1)
        println(role)
        def createUserRole = new UserRole(user: user, role: role)
        println(createUserRole)
        if(createUserRole.save())
        {
            redirect(controller:'login' , action:'index')
        }
        else
            redirect(controller: 'register' , action: 'index' , params:[errorMsg:errorMsg])
    }
}
