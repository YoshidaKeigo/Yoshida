CREATE TABLE USER (
  ID            INTEGER AUTO_INCREMENT PRIMARY KEY,
  USER_NAME     VARCHAR(128) NOT NULL UNIQUE,
  PASSWORD      VARCHAR(128) NOT NULL,
  AUTHORITY     VARCHAR(128) NOT NULL,
  CREATED_TIME  TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  MODIFIED_TIME TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;

INSERT INTO USER (ID, USER_NAME, PASSWORD, AUTHORITY, CREATED_TIME, MODIFIED_TIME)
VALUES (1, 'revie-admin', '$2a$10$e6GX4jpDPnpqk/UqEMX8B.Gye5J8SOdWFs9Plkzn0doeoMuAMXANS', 'ROLE_ADMIN', now(), now());