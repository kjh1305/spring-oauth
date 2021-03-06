create table test.oauth_client_details (
                                           client_id VARCHAR(256) PRIMARY KEY,
                                           resource_ids VARCHAR(256),
                                           client_secret VARCHAR(256),
                                           scope VARCHAR(256),
                                           authorized_grant_types VARCHAR(256),
                                           web_server_redirect_uri VARCHAR(256),
                                           authorities VARCHAR(256),
                                           access_token_validity INTEGER,
                                           refresh_token_validity INTEGER,
                                           additional_information VARCHAR(4096),
                                           autoapprove VARCHAR(256)
);

create table test.oauth_client_token (
                                         token_id VARCHAR(256),
                                         token BLOB,
                                         authentication_id VARCHAR(256) PRIMARY KEY,
                                         user_name VARCHAR(256),
                                         client_id VARCHAR(256)
);

create table test.oauth_access_token (
                                         token_id VARCHAR(256),
                                         token BLOB,
                                         authentication_id VARCHAR(256) PRIMARY KEY,
                                         user_name VARCHAR(256),
                                         client_id VARCHAR(256),
                                         authentication BLOB,
                                         refresh_token VARCHAR(256)
);

create table test.oauth_refresh_token (
                                          token_id VARCHAR(256),
                                          token BLOB,
                                          authentication BLOB
);

create table test.oauth_code (
                                 code VARCHAR(256),
                                 authentication BLOB
);

create table test.oauth_approvals (
                                      userId VARCHAR(256),
                                      clientId VARCHAR(256),
                                      scope VARCHAR(256),
                                      status VARCHAR(10),
                                      expiresAt TIMESTAMP,
                                      lastModifiedAt TIMESTAMP
);



INSERT INTO test.oauth_client_details(client_id, client_secret, scope, authorized_grant_types, authorities, access_token_validity, refresh_token_validity, autoapprove) VALUES("test", "test", "read,write", "refresh_token,password", "CLIENT", 1000, 30000, 1)

create table test.user(
                          id integer primary key auto_increment,
                          userId VARCHAR(256) not null ,
                          password VARCHAR(256) not null
);

INSERT INTO test.user(userId, password) VALUES("test", "{noop}1234")