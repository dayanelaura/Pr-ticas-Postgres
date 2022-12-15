SELECT schools.id, schools.name AS school, courses.name AS course, companies.name AS company, roles.name AS role FROM schools JOIN educations ON educations."schoolId"=schools.id JOIN courses ON courses.id=educations."courseId" JOIN users ON users.id=educations."userId" JOIN experiences ON experiences."userId"=users.id JOIN roles ON roles.id=experiences."roleId" WHERE roules.name = 'Software Engineer' AND companies.id=10; 
/*
(?)
ERROR:  missing FROM-clause entry for table "companies"
LINE 1: ..., schools.name AS school, courses.name AS course, companies....
(?)
*/