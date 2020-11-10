CREATE DATABASE `education`;
USE `education`;

CREATE TABLE `course` (
  `courseid` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `institution` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `institution` (
  `institutionid` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `student` (
  `studentid` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `course` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SELECT institution.name AS 'INSTITUTION NAME', course.name AS 'COURSE NAME',student.studentid AS 'NUMBER OF STUDENTS' FROM institution JOIN courses JOIN course ON course.courseid == student.course 

SELECT SUM(studentid), COUNT(studentid) FROM student WHERE student.course = 1