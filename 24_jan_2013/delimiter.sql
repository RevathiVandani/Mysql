DELIMITER //
create procedure sp_condition()
begin
	SELECT officer.officer_name, officer.address, student.course_name  
FROM officer  
INNER JOIN student  
ON officer.officer_id = student.student_id;
end
DELIMITER ;

call sp_condition();

-- DELIMITER //
-- CREATE PROCEDURE sp_GetMovies()
-- BEGIN
--     -- select title,description,release_year,rating from film;
--     SELECT officer.officer_name, officer.address, student.course_name;
-- END //
--     
-- DELIMITER ;

-- CALL sp_GetMovies()









