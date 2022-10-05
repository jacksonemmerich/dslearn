INSERT INTO tb_user (name, email, password) VALUES ('Alex Brown', 'alex@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Bob Brown', 'bob@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Maria Green', 'maria@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');

INSERT INTO tb_role (authority) VALUES ('ROLE_STUDENT');
INSERT INTO tb_role (authority) VALUES ('ROLE_INSTRUCTOR');
INSERT INTO tb_role (authority) VALUES ('ROLE_ADMIN');

INSERT INTO tb_user_role (user_id, role_id) VALUES (1, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 3);

INSERT INTO tb_course (name, img_Uri, img_Gray_Uri) VALUES ('Bootcamp HTML','https://i.imgur.com/lyzOlWf.png','https://i.imgur.com/oKY1wyk.png');

INSERT INTO tb_offer (edition, start_moment, end_moment, course_id) VALUES ('1.0', TIMESTAMP WITH TIME ZONE '2022-09-20T03:00:00Z',TIMESTAMP WITH TIME ZONE '2022-09-20T03:00:00Z',1);
INSERT INTO tb_offer (edition, start_moment, end_moment, course_id) VALUES ('2.0', TIMESTAMP WITH TIME ZONE '2022-10-20T03:00:00Z',TIMESTAMP WITH TIME ZONE '2022-10-20T03:00:00Z',1);

INSERT INTO tb_notification (moment, read, route,text, user_id) VALUES (NOW(), false, 'sei lá', 'testo qualquer',1);


INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Trilha HTML', 'Trilha principal do curso', 1, 'https://i.imgur.com/oKY1wyk.png', 1, 1 );
INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Forum', 'tire suas dúvidas', 2, 'https://i.imgur.com/oKY1wyk.png', 2, 1 );
INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Lives', 'Lives exclusivas para a turma', 1, 'https://i.imgur.com/oKY1wyk.png', 0, 1 );


INSERT INTO tb_section (title, description, position, img_Uri,resource_id,prerequisite_id) VALUES ('Capitulo 1', 'Neste capítulo vamos começar',1,'https://i.imgur.com/oKY1wyk.png', 1, null);
INSERT INTO tb_section (title, description, position, img_Uri,resource_id,prerequisite_id) VALUES ('Capitulo 2', 'Neste capítulo vamos continuar',2,'https://i.imgur.com/oKY1wyk.png', 1, 1);
INSERT INTO tb_section (title, description, position, img_Uri,resource_id,prerequisite_id) VALUES ('Capitulo 2', 'Neste capítulo vamos finalizar',3,'https://i.imgur.com/oKY1wyk.png', 1, 2);