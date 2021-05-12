select * from addresses;
select * from course_enrollment;
select * from courses;
select * from students;
select * from tutors;
select * from user_pics;

desc user_pics;


select stud_id, name, email, dob, phone
  from students 
 where stud_id = 1;

select stud_id, name, email, dob
     , substring(phone, 1, 3) as f
     , substring(phone, 5, 3) as m
     , substring(phone, 9, 4) as l
  from students
 where stud_id = 1;
 
select stud_id, name, email, phone, dob
     , a.addr_id, street, city, state, zip, country
  from students s 
  join addresses a 
    on s.addr_id = a.addr_id
 where stud_id = 1;
 
select t.tutor_id
	 , t.name as tutor_name
	 , email
	 , c.course_id
	 , c.name
	 , description
	 , start_date
	 , end_date
from tutors t left outer join courses c on t.tutor_id=c.tutor_id
where t.tutor_id=1;

delete from students where stud_id > 2;
