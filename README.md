# spring-oauth

# WebConfig
## configure

passwordEncoder 주의
{
auth.inMemoryAuthentication()
.passwordEncoder(passwordEncoder)
.withUser("user")
.password(passwordEncoder().encode("1234")) //인코더 후
.roles("USER");
}


HTTP body 
username : user
password : 1234
grant_type : password

# POST /oauth/token
## AuthorizationServer
.withClient("test")
.secret("{noop}test")
.authorities("ROLE_USER")
.authorizedGrantTypes("refresh_token", "password")

HTTP header Authorization : Basic dGVzdDp0ZXN0
dGVzdDp0ZXN0 = base64 (test:test) 

grant_type : password
username : user
password : 1234


ex)

{

    "access_token": "c1e31348-d198-4665-a8f7-b20811a9b450",
    "token_type": "bearer",
    "refresh_token": "97ddbc2b-d637-4a09-9d08-ecb626643767",
    "expires_in": 999,
    "scope": "read write"
    
}

### grant_type : refresh_token
UserDetailsService is required. //없어서

# GET /user
## ResourceServer

HomeController GET /user
return "user"

config
.antMatchers("/user/**").authenticated();

HTTP header Authorization : Bearer 576790cf-5800-4284-9fd3-0de300c2d2d6 (access token)

# '/oauth'
/oauth/token   //토큰발급
 
/oauth/token_key

/oauth/check_token

