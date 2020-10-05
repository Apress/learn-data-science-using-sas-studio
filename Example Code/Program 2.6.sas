data examdata;
infile '/folders/myfolders/sasuser.v94/Exam.txt' dlm=',' firstobs=2;
input year pass fail;
run; 
