-- use sys;
/*-- officer table
select * from officer;

-- student table
select * from student;

-- INSERT INTO officer (officer_id, officer_name, address)
-- VALUES (1, "revathi", "gachibowli"),(2, "amir", "amerpet");


-- delete particular rows
SET SQL_SAFE_UPDATES = 0;
-- DELETE FROM officer WHERE officer_age BETWEEN 0 AND 150;
-- UPDATE officer SET officer_age=20; -- all column vaule will be same
UPDATE officer 
SET officer_age=20 
WHERE officer_id=2;

SET SQL_SAFE_UPDATES = 1;


-- inner join
SELECT officer.officer_name, officer.address, student.course_name  
FROM officer  
INNER JOIN student  
ON officer.officer_id = student.student_id;  

-- left join
SELECT  officer.officer_name, officer.address, student.course_name  
FROM student
LEFT JOIN officer 
ON officer.officer_id = student.student_id;   

-- right join
SELECT officer.officer_name, officer.address, student.course_name, student.student_name  
FROM student  
RIGHT JOIN officer  
ON officer.officer_id = student.student_id;  


-- CRUD OPERATIONS USING STORED PROCDEURE*/
delimiter //
create procedure sp_hello1()
begin
	 select 'hello world' as greetings;
	-- SELECT officer.officer_name, officer.address, student.course_name  
-- 	FROM officer  
-- 	INNER JOIN student  
-- 	ON officer.officer_id = student.student_id;
end
delimiter ;
call sp_hello();

DELIMITER //
create or replace procedure sp_condition(in signal_color varchar(50))
begin
	if signal_color = 'red' then
		select 'stop' as result;
    elseif signal_color = 'green' then
		select 'go' as result;
	end if;
end;
-- call sp_condition('green');
DELIMITER ;

        
        




