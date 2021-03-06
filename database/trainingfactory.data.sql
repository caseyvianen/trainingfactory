--
-- Inserting data into the database
--

USE `trainingfactory`;

--
-- Data for Persons
--

INSERT INTO `persons`
(`id`,
 `loginname`,
 `password`,
 `firstname`,
 `preprovision`,
 `lastname`,
 `dateofbirth`,
 `gender`,
 `email_address`,
 `hiring_date`,
 `salary`,
 `street`,
 `postal_code`,
 `place`,
 `role`)
VALUES
(NULL,'member','qwerty','member','van','trainingfactory','2017-04-04','male','member@member.com',NULL,NULL,'street1','1234AB','The Hague','member'),
(NULL,'member1','qwerty','member1','van','trainingfactory','2016-03-01','male','member1@member.com',NULL,NULL,'street11','1131AB','The Hague','member'),
(NULL,'instructor','qwerty','instructor','van','trainingfactory','2017-04-04','male','instructor@instructor.com','2013-04-04','2500.00','street2','2134AB','The Hague','instructor'),
(NULL,'admin','qwerty','admin','van','trainingfactory','2013-04-04','female','admin@admin.com','2012-04-04','2500.00','street3','2134AC','The Hague','admin');

--
-- Data for Trainings
--

INSERT INTO `trainings`
(`id`,
 `description`,
 `duration`,
 `extra_costs`)
VALUES
(NULL, 'Boksen', '01:20:00', NULL),
(NULL, 'Kickboksen', '02:10:00', 10),
(NULL, 'MMA', '00:45:00', 49.5),
(NULL, 'Stootzak trainingen', '01:25:00', NULL),
(NULL, 'Bootcamps', '03:30:00', 16.5),
(NULL, 'Fitness-uren', '03:00:00', NULL);

--
-- Data for Lesssons
--

INSERT INTO `lessons`
(`id`,
 `time`,
 `date`,
 `location`,
 `max_persons`,
 `instructor_id`,
 `training_id`)
 VALUES
 (NULL, '11:09:01', '2017-04-19', 'The Hague', 5, 2, 1),
 (NULL, '12:19:29', '2017-04-19', 'The Hague', 5, 2, 2),
 (NULL, '13:29:47', '2017-04-19', 'The Hague', 5, 2, 3),
 (NULL, '14:39:55', '2017-04-20', 'The Hague', 5, 2, 4),
 (NULL, '15:49:32', '2017-04-20', 'The Hague', 5, 2, 5),
 (NULL, '16:59:20', '2017-04-20', 'The Hague', 5, 2, 6),
 (NULL, '17:39:31', '2017-04-21', 'The Hague', 5, 2, 1),
 (NULL, '18:29:20', '2017-04-21', 'The Hague', 5, 2, 2),
 (NULL, '19:19:23', '2017-04-21', 'The Hague', 5, 2, 3),
 (NULL, '20:39:20', '2017-04-22', 'The Hague', 5, 2, 4),
 (NULL, '21:19:26', '2017-04-22', 'The Hague', 5, 2, 5),
 (NULL, '22:29:25', '2017-04-22', 'The Hague', 5, 2, 6),
 (NULL, '23:19:11', '2017-04-23', 'The Hague', 5, 2, 1),
 (NULL, '23:29:12', '2017-04-23', 'The Hague', 5, 2, 2),
 (NULL, '23:39:13', '2017-04-23', 'The Hague', 5, 2, 3);

--
-- Data for Registrations
--

INSERT INTO `registrations`
(`lesson_id`,
 `member_id`, 
 `payment`)
VALUES 
(1, 1, 'what is this?1'),
(1, 2, 'what is this?2'),
(2, 1, 'what is this?1'),
(2, 2, 'what is this?2'),
(3, 1, 'what is this?1'),
(3, 2, 'what is this?2'),
(4, 1, 'what is this?1'),
(4, 2, 'what is this?2'),
(11, 1, 'what is this?1'),
(11, 2, 'what is this?2');
