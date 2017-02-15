class BootStrap {

    def init = { servletContext ->
        def role =  new issuetracker.Role(authority:'ROLE_USER', enabled:'true')
        role.save()
    }
    def destroy = {
    }
}
