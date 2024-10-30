CREATE INDEX "student_id" ON "students"("id");

CREATE INDEX "courses_department_number_semster" ON "courses"("department", "number" , "semester");
CREATE INDEX "courses_title_semester" ON "courses"("title", "semester");

CREATE INDEX "enrollments_student_id" ON "enrollments"("student_id");
CREATE INDEX "enrollments_course_id" ON "enrollments"("course_id");

CREATE INDEX "satisfies_course_id" ON "satisfies"("course_id");
CREATE INDEX "satisfies_requirement_id" ON "satisfies"("requirement_id");

CREATE INDEX "enrollments_student_id_course_id" ON "enrollments"("student_id" ,"course_id");
CREATE INDEX "enrollments_course_id_student_id" ON "enrollments"("course_id" , "student_id");


CREATE INDEX "satisfies_course_id_requirement_id" ON "satisfies"("course_id" , "requirement_id");
CREATE INDEX "satisfies_requirement_id_course_id" ON "satisfies"("requirement_id","course_id");
