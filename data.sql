DROP TABLE IF EXISTS admins;
DROP TABLE IF EXISTS messages;
DROP TABLE IF EXISTS invites;
DROP TABLE IF EXISTS personal_access_tokens;
DROP TABLE IF EXISTS group_members;
DROP TABLE IF EXISTS groups;
DROP TABLE IF EXISTS user_relations;
DROP TABLE IF EXISTS users;



CREATE TABLE users (
  	id INTEGER PRIMARY KEY,
  	username varchar(255) NOT NULL,
  	email varchar(255) NOT NULL,
  	is_active boolean NOT NULL DEFAULT false,
  	email_verified_at timestamp NULL DEFAULT NULL,
  	last_active timestamp NULL DEFAULT NULL,
  	password varchar(255) NOT NULL,
  	profile_image varchar(255) NOT NULL DEFAULT 'default.jpg',
  	remember_token varchar(100) DEFAULT NULL,
  	created_at timestamp NULL DEFAULT NULL,
  	updated_at timestamp NULL DEFAULT NULL,
  	CONSTRAINT users_email_unique UNIQUE(email)
);



CREATE TABLE user_relations (
    id INTEGER PRIMARY KEY,
    user_id_1 INTEGER NOT NULL,
    user_id_2 INTEGER NOT NULL,
    last_message timestamp NULL DEFAULT NULL,
    created_at timestamp DEFAULT current_timestamp,
    updated_at timestamp DEFAULT current_timestamp,
    CONSTRAINT user_relations_user_id_1_foreign FOREIGN KEY(user_id_1) REFERENCES users(id),
    CONSTRAINT user_relations_user_id_2_foreign FOREIGN KEY(user_id_2) REFERENCES users(id)
);



CREATE TABLE personal_access_tokens (
  	id INTEGER PRIMARY KEY,
  	tokenable_type varchar(255) NOT NULL,
  	tokenable_id INTEGER NOT NULL,
  	name varchar(255) NOT NULL,
  	token varchar(64) NOT NULL,
  	abilities text DEFAULT NULL,
  	last_used_at timestamp NULL DEFAULT NULL,
  	expires_at timestamp NULL DEFAULT NULL,
  	created_at timestamp NULL DEFAULT NULL,
  	updated_at timestamp NULL DEFAULT NULL,
  	UNIQUE(token)
);


CREATE TABLE groups (
    id INTEGER PRIMARY KEY,
  	name varchar(255) NOT NULL,
  	owner_id INTEGER NOT NULL,
  	created_at timestamp NULL DEFAULT NULL,
  	updated_at timestamp NULL DEFAULT NULL,
  	CONSTRAINT groups_owner_id_foreign FOREIGN KEY (owner_id) REFERENCES users (id)
);



CREATE TABLE group_members (
    id INTEGER PRIMARY KEY,
 	group_id INTEGER NOT NULL,
 	user_id INTEGER NOT NULL,
 	created_at timestamp NULL DEFAULT NULL,
 	updated_at timestamp NULL DEFAULT NULL,
 	CONSTRAINT group_members_group_id_foreign FOREIGN KEY (group_id) REFERENCES groups (id),
 	CONSTRAINT group_members_user_id_foreign FOREIGN KEY (user_id) REFERENCES users (id)
);


CREATE TABLE invites (
    id INTEGER PRIMARY KEY,
  	sender_id INTEGER NOT NULL,
  	reciever_id INTEGER NOT NULL,
  	created_at timestamp NULL DEFAULT NULL,
  	updated_at timestamp NULL DEFAULT NULL,
  	CONSTRAINT invites_reciever_id_foreign FOREIGN KEY (reciever_id) REFERENCES users (id),
  	CONSTRAINT invites_sender_id_foreign FOREIGN KEY (sender_id) REFERENCES users (id)
);



CREATE TABLE messages (
    id INTEGER PRIMARY KEY,
 	sender_id INTEGER NOT NULL,
 	reciever_id INTEGER NOT NULL,
 	message varchar(255) NOT NULL,
 	reciever_type varchar(255) NOT NULL,
 	type varchar(255) NOT NULL,
 	created_at timestamp NULL DEFAULT NULL,
 	updated_at timestamp NULL DEFAULT NULL,
 	CONSTRAINT messages_sender_id_foreign FOREIGN KEY (sender_id) REFERENCES users (id)
);




CREATE TABLE admins (
    id INTEGER PRIMARY KEY,
 	group_id INTEGER NOT NULL,
 	user_id INTEGER NOT NULL,
 	created_at timestamp NULL DEFAULT NULL,
 	updated_at timestamp NULL DEFAULT NULL,
 	CONSTRAINT admins_group_id_foreign FOREIGN KEY (group_id) REFERENCES groups (id),
 	CONSTRAINT admins_user_id_foreign FOREIGN KEY (user_id) REFERENCES users (id)
);














INSERT INTO users VALUES
(1,'ilyes','ilyes@gmail.com',false,NULL,NULL,'$2y$10$p6uY5rVzr3XkjjwS3VXOfeGlrTln8HjgEbugLI66ICd/hJeV3Xn82','default.jpg',NULL,NULL,NULL),
(2,'ahmed','ahmed@gmail.com',false,NULL,NULL,'$2y$10$ZFsPeel/zRMfwjOBb4.J.e3fEMGmqD6.Ull20RoPhAQYRWT7lvnru','default.jpg',NULL,NULL,NULL),
(3,'ali','ali@gmail.com',false,NULL,NULL,'$2y$10$tE0Y90Ozr8bzEzcHeqvDMecqENG65Z/tohdRLwQY/wyNGA/3HwkSe','default.jpg',NULL,NULL,NULL);


INSERT INTO user_relations VALUES
(1,1,2,NULL,NULL,NULL),
(2,3,2,NULL,NULL,NULL),
(3,3,1,NULL,NULL,NULL);


INSERT INTO messages VALUES
(1,1,1,'hello 1','group','text',NULL,NULL),
(2,2,1,'hello 2 user2','group','text',NULL,NULL),
(3,3,1,'hello 1 suser 3','group','text',NULL,NULL),
(4,1,2,'hello 1user 1  ','user','text',NULL,NULL),
(5,1,2,'hello 1user 1  ','user','text',NULL,NULL);

INSERT INTO groups VALUES
(1,'hello first group',1,NULL,NULL),
(2,'hello second group',1,NULL,NULL);
