-- Suppression des tables
DROP TABLE "BLOG"."ARTICLES";
DROP TABLE "BLOG"."USERS";
--

-- Table des users
CREATE TABLE "BLOG"."USERS" (
    "ID" INTEGER GENERATED BY DEFAULT AS IDENTITY (START WITH 1) NOT NULL,
    "LOGIN" VARCHAR(50) NOT NULL,
    "PASSWORD" VARCHAR(50) NOT NULL,
    PRIMARY KEY ("ID")
);
INSERT INTO "BLOG"."USERS" ("LOGIN", "PASSWORD") VALUES ('Login1', 'Password1');
INSERT INTO "BLOG"."USERS" ("LOGIN", "PASSWORD") VALUES ('Login2', 'Password2');
INSERT INTO "BLOG"."USERS" ("LOGIN", "PASSWORD") VALUES ('Login3', 'Password3');
--

-- Table des articles
CREATE TABLE "BLOG"."ARTICLES" (
    "ID" INTEGER GENERATED BY DEFAULT AS IDENTITY (START WITH 1) NOT NULL,
    "TITLE" VARCHAR(50) NOT NULL,
    "CONTENT" VARCHAR(200) NOT NULL,
    "AUTHOR_ID" INTEGER NOT NULL,
    PRIMARY KEY ("ID"),
    FOREIGN KEY ("AUTHOR_ID") REFERENCES "BLOG"."USERS"("ID")
);
INSERT INTO "BLOG"."ARTICLES" ("TITLE", "CONTENT", "AUTHOR_ID") VALUES ('Title1', 'Content1', 1);
INSERT INTO "BLOG"."ARTICLES" ("TITLE", "CONTENT", "AUTHOR_ID") VALUES ('Title2', 'Content2', 1);
INSERT INTO "BLOG"."ARTICLES" ("TITLE", "CONTENT", "AUTHOR_ID") VALUES ('Title3', 'Content3', 2);
INSERT INTO "BLOG"."ARTICLES" ("TITLE", "CONTENT", "AUTHOR_ID") VALUES ('Title4', 'Content4', 2);
INSERT INTO "BLOG"."ARTICLES" ("TITLE", "CONTENT", "AUTHOR_ID") VALUES ('Title5', 'Content5', 3);
--