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

INSERT INTO tb_enrollment(user_id,offer_id,enroll_Moment, refund_moment,available,only_Update) VALUES (1,1,TIMESTAMP WITH TIME ZONE '2022-11-20T13:00:00Z',null,true,false);
INSERT INTO tb_enrollment(user_id,offer_id,enroll_Moment, refund_moment,available,only_Update) VALUES (2,1,TIMESTAMP WITH TIME ZONE '2022-11-20T13:00:00Z',null,true,false);
INSERT INTO tb_enrollment(user_id,offer_id,enroll_Moment, refund_moment,available,only_Update) VALUES (3,2,TIMESTAMP WITH TIME ZONE '2022-11-20T13:00:00Z',null,true,false);

INSERT INTO tb_lesson(title, position,section_id) VALUES ('Aula 1 do Capítulo 1', 1,1);
INSERT INTO tb_content(id,text_content,video_uri) VALUES (1,'Material de apoio', 'https://www.youtube.com/watch?v=GaW13eDQO6s');

INSERT INTO tb_lesson(title, position,section_id) VALUES ('Aula 2 do Capítulo 1', 2,1);
INSERT INTO tb_content(id,text_content,video_uri) VALUES (2,'', 'https://www.youtube.com/watch?v=GaW13eDQO6s');

INSERT INTO tb_lesson(title, position,section_id) VALUES ('Aula 3 do Capítulo 1', 3,1);
INSERT INTO tb_content(id,text_content,video_uri) VALUES (3,'Material de apoio', 'https://www.youtube.com/watch?v=GaW13eDQO6s');

INSERT INTO tb_lesson(title, position,section_id) VALUES ('Tarefa do capítulo 1', 4,1);
INSERT INTO tb_task(id, description, question_count,approval_count, weight, due_date) VALUES (4, 'fazer um trabalho legal', 5, 4, 1.0, TIMESTAMP WITH TIME ZONE '2022-11-25T13:00:00Z');

INSERT INTO tb_lesson_done(lesson_id,user_id,offer_id) VALUES (1,1,1);
INSERT INTO tb_lesson_done(lesson_id,user_id,offer_id) VALUES (2,1,1);
