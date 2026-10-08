SET SERVEROUTPUT ON;

CREATE OR REPLACE PROCEDURE insert_student (
    p_student_id   IN NUMBER,
    p_student_name IN VARCHAR2,
    p_age          IN NUMBER,
    p_course       IN VARCHAR2
)
IS
BEGIN
    INSERT INTO Student (Student_ID, Student_Name, Age, Course)
    VALUES (p_student_id, p_student_name, p_age, p_course);

    COMMIT;

    DBMS_OUTPUT.PUT_LINE('Student record inserted successfully.');
END;
/

