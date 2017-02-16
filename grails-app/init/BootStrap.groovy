class BootStrap {

    def init = { servletContext ->

        def role = new newapp.Role(authority: "ROLE_USER")
        role.save()
    }
    def destroy = {
    }
}
