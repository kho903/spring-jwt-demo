DROP table if exists USER_AUTHORITY ;
DROP table if exists AUTHORITY ;
DROP table if exists USER ;
-- auto-generated definition
create table USER
(
    USER_ID   BIGINT auto_increment
        primary key,
    ACTIVATED BOOLEAN,
    NICKNAME  VARCHAR(50),
    PASSWORD  VARCHAR(100),
    USERNAME  VARCHAR(50)
        constraint UK
            unique
);

-- auto-generated definition
create table AUTHORITY
(
    AUTHORITY_NAME VARCHAR(50) not null
        primary key
);

-- auto-generated definition
create table USER_AUTHORITY
(
    USER_ID        BIGINT      not null,
    AUTHORITY_NAME VARCHAR(50) not null,
    primary key (USER_ID, AUTHORITY_NAME),
    constraint FK_AUTHOR_NAME
        foreign key (AUTHORITY_NAME) references AUTHORITY (AUTHORITY_NAME),
    constraint FK_AUTHOR_USER_ID
        foreign key (USER_ID) references USER (USER_ID)
);

