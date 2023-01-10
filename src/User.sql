Создать таблицу "users",таблица users имеет поля id, login, salary, age, working_year, description (и другие при необходимости).
- done
Выберите из таблицы users записи с id равным 1, 2, 3, 5, 14.
- SELECT * FROM users WHERE id IN (1,2,3,5,14);

Выберите из таблицы users записи с login равным 'google.com', 'facebook.com', 'gmail.com'.
- SELECT * FROM users WHERE email LIKE '%google.com' OR email LIKE '%facebook.com' OR email LIKE '%gmail.com';

Выберите из таблицы users записи с id равным 1, 2, 3, 7, 9, и логином, равным 'user', 'admin', 'house' и зарплатой больше 3500.
- SELECT * FROM users WHERE id IN (1,2,3,7,9) AND email IN ('user','admin','house') FROM users;

Выберите из таблицы users записи c id от 3 до 10 и зарплатой от 3000 до 5000.
- SELECT * FROM users WHERE id BETWEEN 1 AND 10 AND salary BETWEEN 3000 AND 5000;

Выберите из таблицы users все записи так, чтобы вместо id было userId, вместо login – userLogin, вместо salary - userSalary.
- SELECT id as userId, email as userEmail, salary as userSalary FROM users;

При выборке из таблицы users создайте новое поле res, в котором будет число 3
- SELECT * , 3 as res FROM users;

При выборке из таблицы users создайте новое поле res, в котором будут лежать одновременно зарплата и возраст
- SELECT * , (salary ,age) as res  FROM users;

При выборке из таблицы users создайте новое поле res, в котором будут лежать одновременно зарплата и возраст , а после возраста будут идти три знака '!'.
- SELECT *,(salary,concat(age,'!!!')) as res from users;

При выборке из таблицы users создайте новое поле res, в котором будут лежать одновременно зарплата и возраст через дефис.
- SELECT *,CONCAT(salary,' ',age) as res from users;

При выборке из таблицы users получите первые 5 символов логина и добавьте троеточие.
- SELECT concat(left(email,5),'...') from users;