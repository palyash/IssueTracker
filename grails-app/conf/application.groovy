

// Added by the Spring Security Core plugin:
grails.plugin.springsecurity.userLookup.userDomainClassName = 'issuetracker.User'
grails.plugin.springsecurity.userLookup.authorityJoinClassName = 'issuetracker.UserRole'
grails.plugin.springsecurity.authority.className = 'issuetracker.Role'

grails.plugin.springsecurity.auth.loginFormUrl = '/login/index'
grails.plugin.springsecurity.successHandler.alwaysUseDeault = true
grails.plugin.springsecurity.successHandler.alwaysUseDeaultTargetUrl = true
grails.plugin.springsecurity.logout.postOnly = false
grails.plugin.springsecurity.logout.alwaysUseDefaultTargetUrl=true
grails.plugin.springsecurity.logout.afterLogoutUrl='/login/index'
grails.plugin.springsecurity.failureHandler.defaultFailureUrl='/login/index?msg=Invalid Username or Password'

grails.plugin.springsecurity.controllerAnnotations.staticRules = [
	[pattern: '/',               access: ['permitAll']],
	[pattern: '/error',          access: ['permitAll']],
	[pattern: '/index',          access: ['permitAll']],
	[pattern: '/index.gsp',      access: ['permitAll']],
	[pattern: '/shutdown',       access: ['permitAll']],
	[pattern: '/assets/**',      access: ['permitAll']],
	[pattern: '/**/js/**',       access: ['permitAll']],
	[pattern: '/**/css/**',      access: ['permitAll']],
	[pattern: '/**/images/**',   access: ['permitAll']],
	[pattern: '/**/favicon.ico', access: ['permitAll']],
	[pattern: '/issue/**', 	 access: ['ROLE_USER']],
	[pattern: '/register/**' , access: ['permitAll']],
	[pattern: '/oauth/**' , access: ['permitAll']]

]

grails.plugin.springsecurity.filterChain.chainMap = [
	[pattern: '/assets/**',      filters: 'none'],
	[pattern: '/**/js/**',       filters: 'none'],
	[pattern: '/**/css/**',      filters: 'none'],
	[pattern: '/**/images/**',   filters: 'none'],
	[pattern: '/**/favicon.ico', filters: 'none'],
	[pattern: '/**',             filters: 'JOINED_FILTERS']
]
oauth{
	providers{
		facebook{
			api= "org.scribe.builder.api.FacebookApi"
			key= "218497378618893"
			secret="16ca66025c18179c53dad3e163f803e5"
			successUri= "/login/facebookSuccess/"
			failureUri= "/login/index/"
			callback=  "http://localhost:8080/oauth/facebook/callback"
		}
	}
}
