create table students(
      student_id Number PRIMARY KEY,
      full_name VARCHAR2(50),
      age NUMBER
);

INSERT INTO students VALUES (1,'Ali Khan',20);
INSERT INTO students VALUES (2,'Sara Ahmed',21);
INSERT INTO students VALUES (3,'Ahmed Raza',19);
INSERT INTO students VALUES (4,'Aisha Noor',22);
INSERT INTO students VALUES (5,'Bilal Hussain',20);

COMMIT;

SELECT * FROM students;

create table subjects (
       subject_id Number Primary Key,
       subject_name Varchar2(100)
       );

insert into subjects values (1,'Mathematics');
insert into subjects values (2,'Physics');
insert into subjects values (3,'Computer Science');

commit;

select * FROM subjects;

create table marks(
    mark_id NUMBER PRIMARY KEY,
    student_id NUMBER,
    subject_id NUMBER,
    marks_obtained NUMBER,
    
    CONSTRAINT fk_student
        FOREIGN KEY (student_id)
        REFERENCES students(student_id),
        
    CONSTRAINT fk_subject
        FOREIGN KEY (subject_id)
        REFERENCES subjects(subject_id)
    );

INSERT INTO marks VALUES (1,1,1,85);
INSERT INTO marks VALUES (2,1,2,90);
INSERT INTO marks VALUES (3,1,3,95);

INSERT INTO marks VALUES (4,2,1,78);
INSERT INTO marks VALUES (5,2,2,82);
INSERT INTO marks VALUES (6,2,3,88);

INSERT INTO marks VALUES (7,3,1,92);
INSERT INTO marks VALUES (8,3,2,89);
INSERT INTO marks VALUES (9,3,3,94);

INSERT INTO marks VALUES (10,4,1,88);
INSERT INTO marks VALUES (11,4,2,80);
INSERT INTO marks VALUES (12,4,3,92);

INSERT INTO marks VALUES (13,5,1,93);
INSERT INTO marks VALUES (14,5,2,85);
INSERT INTO marks VALUES (15,5,3,73);

commit;

SELECT * FROM marks;

SELECT s.full_name,
       sub.subject_name,
       m.marks_obtained
from students s
join marks m
    on s.student_id=m.student_id
join subjects sub
     on m.subject_id=sub.subject_id
order by s.full_name;

select s.full_name, round(avg(m.marks_obtained),2) as average_marks
from students s
join marks m
  on s.student_id=m.student_id
group by s.full_name
order by average_marks DESC;

select * from
    ( select s.full_name,round(avg(m.marks_obtained),2) as average_marks
       from students s
       join marks m
        on s.student_id=m.student_id
       group by s.full_name
       order by average_marks DESC)
where ROWNUM=1;

select sub.subject_name, round(avg(m.marks_obtained),2) as subject_average
from subjects sub
join marks m
 on sub.subject_id=m.subject_id
group by subject_name
order by subject_average desc;