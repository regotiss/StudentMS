/*Branch*/
create table branch(
  BranchId int,
  BranchName varchar(30),
  primary key(BranchId)
);

UPDATE BRANCH SET BRANCHNAME='CSE' WHERE BRANCHID=1
update Branch set BranchName='CSE1' where BranchId =1
commit
/*course*/
create table course(
  CourseId int,
  CourseName varchar(50),
  BranchId int,
  Semester int,
  foreign key(BranchId) references Branch(BranchId),
  primary key (CourseId)
);



/*Teacher*/
create table Teacher(
 
  TeacherName varchar(50),
  EmailId varchar(50),
  Qualification varchar(30),
  ContactNumber varchar(15),
  Address varchar(60),
  username varchar(30),
  password varchar(20),
  primary key(username)
);
drop table Teacher;
create table Teaches(
  tid int,
  username varchar(30),
  CourseId int,
  foreign key(username) references Teacher(username),
  primary key(tid)
);
select * from Teaches
/*Student*/
create table Student(
  PRNNo varchar(10),
  StudentName varchar(30),
  BranchId int,
  ContactNo varchar(15),
  Address varchar(50),
  EmailID varchar(50),
  password varchar(20),
  foreign key(BranchId) references Branch(BranchId),
  primary key(PRNNo)
)
drop table student

/*Student takes*/
create table StudentCourse(
  scid int,
  PRNNo varchar(15),
  courseid int,
  foreign key(PRNNo) references Student(PRNNo),
  foreign key(courseid) references course(courseid)
  
  primary key(scid)
)

/*Message from Teacher*/
create table message(
  mid int,
  TeachesId int, 
  message  varchar(100),
  senttime date,
  foreign key(TeachesId) references Teaches(tid),
  primary key(mid)
)




create table Candidates(
 username varchar(30),
 name varchar(50),
 total int,
 correct int,
 primary key(username)
);

