INSERT INTO project
( project_name
, project_description
, project_link
, project_github_link
, project_image
)
VALUES
( 'Holes Are Bad'
, 'The goal of the game is to collect a certain number of collectables while avoiding holes, enemies, and other dangerous objects.'
, '/projects/holesarebad'
, 'https://github.com/NicholasBoss/Holes-Are-Bad'
, '/images/projects/holesarebad.jpg'
),
( 'Head Counter App'
, 'This app is to help attendance takers anywhere. This app allows you to click a button and it will decrease the amount of students absent and increase the amount of students that are present. It also allows you to reset each individual class attendance.'
, '/projects/headcounter'
, 'https://github.com/NicholasBoss/counter'
, '/images/projects/headcounter.jpg'
),
( 'MySQL Database Program'
, 'I have written software that connects to either a sqlite database or to Workbench, a tool that connects to a MySQL server. This program allows the user to add data into the database and then they can see the changes they have made.'
, '/projects/mysql'
, 'https://github.com/NicholasBoss/SQLdatabase'
, '/images/projects/mysql.jpg'
),
( 'The Three Pendants'
, 'In this game, you will gather three pendants to unlock the chest. Use WASD keys to move.'
, '/projects/threependants'
, 'https://github.com/NicholasBoss/TheThreePendants'
, '/images/threependants.jpg'
),
( 'Batter'
, 'This game is a recreation of a batter game where you try to clear all the blocks using the ball and moving the paddle at the bottom of the screen.'
, '/projects/batter'
, 'https://github.com/NicholasBoss/Batter'
, '/images/projects/batter.jpg'
),
( 'MDFire Database'
, 'This is a database that a team and I created for the Madison County Fire Department, located in Rexburg, ID, in the Data Science Society at BYU-Idaho. It allows them to keep track of their employees and their equipment.'
, '/projects/mdfire'
, NULL
, NULL
),
( 'ClearView'
, 'This is a database that a team and I created for ClearView in the Data Science Society at BYU-Idaho. It allows them to keep track of their work orders.'
, '/projects/clearview'
, NULL
, NULL
),
( 'Film Database Frontend'
, 'This application is a frontend for a film database. It allows the user to add, view, edit, and delete data from the database.'
, '/projects/film'
, 'https://github.com/NicholasBoss/film_application'
, '/images/film_frontend.jpg'
),
( 'ITM 111 Auto Grading Program'
, 'I created a program that will help teachers and TAs grade assignments for the ITM 111 (Intro to Database) class at BYU-Idaho.'
, '/projects/grading111'
, NULL
, '/images/projects/gradingexample.jpg'
),
( 'Computing Team Database'
, 'This project shows how to combine the languages of Python and SQL to create a simple database.'
, '/projects/computing'
, 'https://github.com/NicholasBoss/computingprojectapplication'
, '/images/projects/computingprojectdb.jpg'
);

INSERT INTO society
( society_name )
VALUES
('Computing (Learning Team)'),
('Data Science Society (DSS)');

INSERT INTO society_project
( project_position
, society_id
, project_id )
VALUES
( 'President'
, (SELECT society_id FROM society WHERE society_name = 'Computing (Learning Team)')
, (SELECT project_id FROM project WHERE project_name = 'Computing Team Database')
),
( 'Project Manager'
, (SELECT society_id FROM society WHERE society_name = 'Data Science Society (DSS)')
, (SELECT project_id FROM project WHERE project_name = 'MDFire Database')
),
( 'Project Manager'
, (SELECT society_id FROM society WHERE society_name = 'Data Science Society (DSS)')
, (SELECT project_id FROM project WHERE project_name = 'ClearView')
);

INSERT INTO skill
( skill_name )
VALUES
( 'MySQL' ),
( 'AWS' ),
( 'HTML' ),
( 'CSS' ),
( 'JavaScript' ),
( 'C#' ),
( 'PL/SQL (Read and Debug)' ),
( 'PL/pgSQL (Read and Debug)' ),
( 'Python' ),
( 'React Native' ),
( 'Node.js' ),
( 'Spanish (Fluent)' );

INSERT INTO experience
( experience_name
, experience_time
, is_professional
, is_personal
, is_award )
VALUES
( 'Legrande Health Data Technician'
, 'August 2024 - Present'
, '1'
, '0'
, '0' ),
( 'BYU-Idaho Teaching Assistant'
, 'September 2021 - December 2024'
, '1'
, '0'
, '0' ),
( 'Missionary in Argentina'
, 'October 2018 - April 2020'
, '0'
, '1'
, '0' ),
( 'Eagle Scout'
, 'November - December 2015'
, '0'
, '0'
, '1' );

INSERT INTO description
( description_paragraph
, project_id
, experience_id )
VALUES
( 'We wanted to create a game that would challenge the way a player thinks. For instance, in our game, if the player runs over spikes, they will gain more lives. Whereas in most games, spikes would damage the player. However, we didn''t want to make things too simple by merely flipping all "bad" things to be good and all "good" things to be bad. Some things still behave how the player would expect. Our enemies are still bad, like they are in any other game. By not doing a straight good to bad and bad to good flip, we force the player to think and experiment with new concepts.'
, (SELECT project_id FROM project WHERE project_name = 'Holes Are Bad')
, NULL
),
( 'The goal of the game is to collect a certain number of collectables while avoiding holes, enemies, and other dangerous objects. There are platforms the player will move around on to progress through the game. However, despite looking exactly the same, not all platforms are solid and the player will fall through them. The map segments for level 1 have different \"weights\" for how frequently they will be generated. As such, every instance of a level will be relatively unique to keep it more interesting.'
, (SELECT project_id FROM project WHERE project_name = 'Holes Are Bad')
, NULL
),
( 'When starting this project, most of our team was not familiar with C#. We all had a lot to learn before we could even get started. As we learned more C#, the progress rate of our project increased. Due to our slower start, we opted to prioritize functionality over organization with our code. Currently, we still have some organization, but we would like to make it simpler and split some of the larger files into many smaller files.'
, (SELECT project_id FROM project WHERE project_name = 'Holes Are Bad')
, NULL
),
( 'However, thanks to this approach, we were able to accomplish all of our initial requirements except for graphic animations. For the sake of completing other requirements, we pushed off animations. We created all our graphics from scratch except for the background. Drawing multiple frames to make animations possible is time consuming. We merely ran out of time to finish and implement animations, though, we intend to continue working and implement animations in the future. As we worked on the project, we kept a list of additional ideas that we wanted to include. Even though we ended up not adding animations, we were able to implement slightly more than 2/3 of our additional ideas.'
, (SELECT project_id FROM project WHERE project_name = 'Holes Are Bad')
, NULL
),
( 'This app is to help attendance takers anywhere. This app allows you to click a button and it will decrease the amount of students absent and increse the amount of students that are present.'
, (SELECT project_id FROM project WHERE project_name = 'Head Counter App')
, NULL
),
( 'Current version: 2.0'
, (SELECT project_id FROM project WHERE project_name = 'Head Counter App')
, NULL
),
( 'By undertaking the challenge of learning how to connect python to a sql database, I hope to gain more understanding of how SQL language works behind the scenes of a GUI editor for the SQL language such as Workbench.'
, (SELECT project_id FROM project WHERE project_name = 'MySQL Database Program')
, NULL
),
( 'I have written software that connects to either a sqlite database or to Workbench, a tool that connects to a MySQL server. This program allows the user to add data into the database and then they can see the changes they have made.'
, (SELECT project_id FROM project WHERE project_name = 'MySQL Database Program')
, NULL
),
( 'I decided to write this program to help students learning about databases see what possibilities there are when it comes to creating a database; they can create one using a tool like Workbench or just by using python and the sqlite3 software. I also made this program to help me further understand how a database is created.'
, (SELECT project_id FROM project WHERE project_name = 'MySQL Database Program')
, NULL
),
( 'In this game you will gather three pendants to unlock the chest using the WASD keys to move.'
, (SELECT project_id FROM project WHERE project_name = 'The Three Pendants')
, NULL
),
( 'This game is a recreation of a batter game where you try to clear all the blocks using the ball and moving the paddle at the bottom of the screen.'
, (SELECT project_id FROM project WHERE project_name = 'Batter')
, NULL
),
( 'This is a database that a team and I created for the Madison County Fire Department, located in Rexburg, ID, in the Data Science Society at BYU-Idaho. It allows them to keep track of their employees and their equipment.'
, (SELECT project_id FROM project WHERE project_name = 'MDFire Database')
, NULL
),
( 'This application started by using a MySQL database; mainly as a way to see the schema we were working with. We used Python and the Streamlit library to connect to the database and create a web interface to access it. To have the database be more readily available to use, we switched over to using SQLite.'
, (SELECT project_id FROM project WHERE project_name = 'MDFire Database')
, NULL
),
( 'The application allows the verified user to add, view, edit, and delete data from the database.'
, (SELECT project_id FROM project WHERE project_name = 'MDFire Database')
, NULL
),
( 'Because of the sensitive nature of the data, I cannot provide an image or a link to the GitHub repository.'
, (SELECT project_id FROM project WHERE project_name = 'MDFire Database')
, NULL
),
( 'This is a database that a team and I created for ClearView in the Data Science Society at BYU-Idaho. It allows them to keep track of their work orders.'
, (SELECT project_id FROM project WHERE project_name = 'Clearview')
, NULL
),
( 'The database that we will start this project in is a MySQL database; mainly as a way to see the schema we were working with. We will use Python and the Streamlit library to connect to the database and create a web interface to access it. To have the database be more readily available to use, we hope to use SQLite.'
, (SELECT project_id FROM project WHERE project_name = 'Clearview')
, NULL
),
( 'The application allows the verified user to add, view, edit, and delete data from the database.'
, (SELECT project_id FROM project WHERE project_name = 'Clearview')
, NULL
),
( 'Because of the sensitive nature of the data, I cannot provide an image or a link to the GitHub repository.'
, (SELECT project_id FROM project WHERE project_name = 'Clearview')
, NULL
),
( 'This application is a frontend for a film database. It allows the user to add, view, edit, and delete data from the database.'
, (SELECT project_id FROM project WHERE project_name = 'Film Database Frontend')
, NULL
),
( 'The inspiration for this project came from the Intro to Databases class that I TAed for. There arose a question about the need for primary keys in each table. This database shows that need through updating and deleting records contained in the linking tables.'
, (SELECT project_id FROM project WHERE project_name = 'Film Database Frontend')
, NULL
),
( 'I created a program that will help teachers and TAs grade assignments for the ITM 111 (Intro to Database) class at BYU-Idaho.'
, (SELECT project_id FROM project WHERE project_name = 'ITM 111 Auto Grading Program')
, NULL
),
( 'The inspiration for this project came from the Intro to Databases class that I TAed for. With many classes to grade and time seeming to be a constraint, I decided to create programs that would help me (and future TAs) to grade.'
, (SELECT project_id FROM project WHERE project_name = 'ITM 111 Auto Grading Program')
, NULL
),
( 'The program takes a SQL file that a student submits and compares it to a list of correct answers. The program runs the code students submit and does its best to describe any errors that may have occurred.'
, (SELECT project_id FROM project WHERE project_name = 'ITM 111 Auto Grading Program')
, NULL
),
( 'Because this program is used for grading, I cannot provide a link to the GitHub repository.'
, (SELECT project_id FROM project WHERE project_name = 'ITM 111 Auto Grading Program')
, NULL
),
( 'This project shows how to combine the languages of Python and SQL to create a simple database.'
, (SELECT project_id FROM project WHERE project_name = 'Computing Team Database')
, NULL
),
( 'The database can be created using either MySQL or SQLite. The Streamlit library allows the application to be used on the web. There are three "users" implemented: no user, a student user, and an admin user.'
, (SELECT project_id FROM project WHERE project_name = 'Computing Team Database')
, NULL
),
( 'The "no user" can only view the projects from the database. The "student user" can view the projects and add a project to the database. The "admin user" can view the projects, add, update, or delete a project, and even reset the database entirely.'
, (SELECT project_id FROM project WHERE project_name = 'Computing Team Database')
, NULL
),
( 'Transferred data from AWS to Google Cloud using Cloud Run Functions and listeners running on a Cloud Compute Engine VM'
, NULL
, (SELECT experience_id FROM experience WHERE experience_name = 'Legrande Health Data Technician')
),
( 'Created a ticketing system to help keep track of orders'
, NULL
, (SELECT experience_id FROM experience WHERE experience_name = 'Legrande Health Data Technician')
),
( 'Mentored approximately 1500+ students by helping others learn concepts in the Intro to Databases, Web Fundamentals, and Intro to Cloud courses'
, NULL
, (SELECT experience_id FROM experience WHERE experience_name = 'BYU-Idaho Teaching Assistant')
),
( 'Created a 2 hour Concept Workshop helping students prepare and succeed in final exams'
, NULL
, (SELECT experience_id FROM experience WHERE experience_name = 'BYU-Idaho Teaching Assistant')
),
( 'Taught various topics such as database normalization, ERD creation, CRUD, CSS grid, HTML, JavaScrip'
, NULL
, (SELECT experience_id FROM experience WHERE experience_name = 'BYU-Idaho Teaching Assistant')
),
( 'Integrated the AWS system students use for classes in the CSE Department'
, NULL
, (SELECT experience_id FROM experience WHERE experience_name = 'BYU-Idaho Teaching Assistant')
),
( 'Learned Spanish (Fluent). Had interactions with people through teaching and service'
, NULL
, (SELECT experience_id FROM experience WHERE experience_name = 'Missionary in Argentina')
),
( 'Discovered how to love the people, work hard, and live within a tight budget'
, NULL
, (SELECT experience_id FROM experience WHERE experience_name = 'Missionary in Argentina')
),
( 'Ascertained how to work with different personalities'
, NULL
, (SELECT experience_id FROM experience WHERE experience_name = 'Missionary in Argentina')
),
( 'Planned, raised funds, and assembled emergency backpacks for Sexton Mtn. Elementary School'
, NULL
, (SELECT experience_id FROM experience WHERE experience_name = 'Eagle Scout')
),
( 'This involved raising over $1,000 and coordinating twenty volunteers'
, NULL
, (SELECT experience_id FROM experience WHERE experience_name = 'Eagle Scout')
),
( 'Total contributed hours: 145'
, NULL
, (SELECT experience_id FROM experience WHERE experience_name = 'Eagle Scout')
);

INSERT INTO education
( education_degree_name
, education_school
, education_location
, education_time
, education_gpa
, education_expected_graduation )
VALUES
( 'B.S. in Computer Science'
, 'Brigham Young University - Idaho'
, 'Rexburg, ID'
, 'September 2020 - Current'
, '3.8'
, 'Fall 2025' );

INSERT INTO resume
( resume_name )
VALUES
( 'General' );

INSERT INTO resume_education
( resume_id
, education_id )
VALUES
(
    (SELECT resume_id FROM resume WHERE resume_name = 'General')
,   (SELECT education_id FROM education WHERE education_degree_name = 'B.S. in Computer Science')
);

INSERT INTO resume_society
( resume_id
, society_id )
VALUES
(
    (SELECT resume_id FROM resume WHERE resume_name = 'General')
,   (SELECT society_id FROM society WHERE society_name = 'Computing (Learning Team)')
),
(
    (SELECT resume_id FROM resume WHERE resume_name = 'General')
,   (SELECT society_id FROM society WHERE society_name = 'Data Science Society (DSS)')
);

INSERT INTO resume_experience
( resume_id
, experience_id )
VALUES
(
    (SELECT resume_id FROM resume WHERE resume_name = 'General')
,   (SELECT experience_id FROM experience WHERE experience_name = 'Legrande Health Data Technician')
),
(
    (SELECT resume_id FROM resume WHERE resume_name = 'General')
,   (SELECT experience_id FROM experience WHERE experience_name = 'BYU-Idaho Teaching Assistant')
),
(
    (SELECT resume_id FROM resume WHERE resume_name = 'General')
,   (SELECT experience_id FROM experience WHERE experience_name = 'Missionary in Argentina')
),
(
    (SELECT resume_id FROM resume WHERE resume_name = 'General')
,   (SELECT experience_id FROM experience WHERE experience_name = 'Eagle Scout')
);

INSERT INTO resume_skill
( resume_id
, skill_id )
VALUES
(
    (SELECT resume_id FROM resume WHERE resume_name = 'General')
,   (SELECT skill_id FROM skill WHERE skill_name = 'MySQL')
),
(
    (SELECT resume_id FROM resume WHERE resume_name = 'General')
,   (SELECT skill_id FROM skill WHERE skill_name = 'AWS')
),
(
    (SELECT resume_id FROM resume WHERE resume_name = 'General')
,   (SELECT skill_id FROM skill WHERE skill_name = 'HTML')
),
(
    (SELECT resume_id FROM resume WHERE resume_name = 'General')
,   (SELECT skill_id FROM skill WHERE skill_name = 'CSS')
),
(
    (SELECT resume_id FROM resume WHERE resume_name = 'General')
,   (SELECT skill_id FROM skill WHERE skill_name = 'JavaScript')
),
(
    (SELECT resume_id FROM resume WHERE resume_name = 'General')
,   (SELECT skill_id FROM skill WHERE skill_name = 'C#')
),
(
    (SELECT resume_id FROM resume WHERE resume_name = 'General')
,   (SELECT skill_id FROM skill WHERE skill_name = 'PL/SQL (Read and Debug)')
),
(
    (SELECT resume_id FROM resume WHERE resume_name = 'General')
,   (SELECT skill_id FROM skill WHERE skill_name = 'PL/pgSQL (Read and Debug)')
),
(
    (SELECT resume_id FROM resume WHERE resume_name = 'General')
,   (SELECT skill_id FROM skill WHERE skill_name = 'Python')
),
(
    (SELECT resume_id FROM resume WHERE resume_name = 'General')
,   (SELECT skill_id FROM skill WHERE skill_name = 'React Native')
),
(
    (SELECT resume_id FROM resume WHERE resume_name = 'General')
,   (SELECT skill_id FROM skill WHERE skill_name = 'Node.js')
),
(
    (SELECT resume_id FROM resume WHERE resume_name = 'General')
,   (SELECT skill_id FROM skill WHERE skill_name = 'Spanish (Fluent)')
);

INSERT INTO resume_project
( resume_id
, project_id )
VALUES
(
    (SELECT resume_id FROM resume WHERE resume_name = 'General')
,   (SELECT project_id FROM project WHERE project_name = 'Holes Are Bad')
),
(
    (SELECT resume_id FROM resume WHERE resume_name = 'General')
,   (SELECT project_id FROM project WHERE project_name = 'ITM 111 Auto Grading Program')
),
(
    (SELECT resume_id FROM resume WHERE resume_name = 'General')
,   (SELECT project_id FROM project WHERE project_name = 'Film Database Frontend')
);
