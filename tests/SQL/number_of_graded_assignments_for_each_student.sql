-- Write query to get number of graded assignments for each student:
select student_id, count(assignments.id) from assignments where state="GRADED" group by student_id