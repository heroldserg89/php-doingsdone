INSERT INTO users
SET name     = 'serg',
    reg_dt   = '2019-01-07 23:12:14',
    email    = 'serg@youmail.ru',
    password = '123456';
INSERT INTO users
SET name     = 'herold',
    reg_dt   = '2019-01-07 23:12:14',
    email    = 'herold@youmail.ru',
    password = '123456';

INSERT INTO projects
SET name    = 'Входящие',
    user_id = '1';
INSERT INTO projects
SET name    = 'Учёба',
    user_id = '1';
INSERT INTO projects
SET name    = 'Работа',
    user_id = '2';
INSERT INTO projects
SET name    = 'Домашние дела',
    user_id = '1';
INSERT INTO projects
SET name    = 'Авто',
    user_id = '2';

INSERT INTO tasks
SET name        = 'Собеседование в IT компании',
    creation_dt = '2019-01-07 23:12:14',
    date        = '2023-01-01',
    user_id     = '1',
    project_id  = '3';
INSERT INTO tasks
SET name        = 'Выполнить тестовое задание',
    creation_dt = '2019-01-07 23:12:14',
    date        = '2023-01-01',
    user_id     = '2',
    project_id  = '3';
INSERT INTO tasks
SET name        = 'Сделать задание первого раздела',
    creation_dt = '2019-01-07 23:12:14',
    date        = '2023-01-01',
    status      = '1',
    user_id     = '1',
    project_id  = '2';
INSERT INTO tasks
SET name        = 'Встреча с другом',
    creation_dt = '2019-01-07 23:12:14',
    date        = '2023-01-01',
    user_id     = '2',
    project_id  = '1';
INSERT INTO tasks
SET name        = 'Купить корм для кота',
    creation_dt = '2019-01-07 23:12:14',
    user_id     = '1',
    project_id  = '4';
INSERT INTO tasks
SET name        = 'Заказать пиццу',
    creation_dt = '2019-01-07 23:12:14',
    user_id     = '1',
    project_id  = '4';

SELECT *
FROM projects
WHERE user_id = '1';

SELECT *
FROM tasks
WHERE project_id = '1';

UPDATE tasks
SET status = '1'
WHERE id = '1';

UPDATE tasks
SET name = 'Новое название'
WHERE id = '1';