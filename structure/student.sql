CREATE TABLE users (
    id                      INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    password                VARCHAR()        NOT NULL,
    first_name              VARCHAR(32)         NOT NULL,
    surname                 VARCHAR(32)         NOT NULL,
    middle_name             VARCHAR(32)         NULL,
    mobile_number           VARCHAR(14)         NOT NULL,
    email_address           VARCHAR(64)         NOT NULL,
    is_protected            BOOLEAN             DEFAULT 0   NULL,
    is_active               BOOLEAN             DEFAULT 1   NULL
);

CREATE TABLE students_info (
    id                      INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    id_card_no                 INT UNSIGNED        NOT NULL,
    gender                  VARCHAR(6)          DEFAULT NULL NULL,
    dob                     DATE                DEFAULT NULL NULL,
    nationality                VARCHAR(16)         DEFAULT NULL NULL,
    blood_group             VARCHAR(3)          DEFAULT NULL NULL,
    genotype                VARCHAR(2)          DEFAULT NULL NULL,
    next_of_kin             INT UNSIGNED        DEFAULT NULL NULL,
    contact_address         INT UNSIGNED        DEFAULT NULL NULL
);
# REFERENCE
# COLUMN                TABLE
#---------------------------------
#student                students
#sponsor                contacts
#next_of_kin            contacts
#origin                 address
#permanent_address      address
#contact_address        address

CREATE TABLE student_academic_history (
    id                      INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    student                 INT UNSIGNED        NOT NULL,
    qualification           VARCHAR(32)         NOT NULL,
    institution             VARCHAR(255)        NOT NULL,
    start_year              YEAR                NOT NULL,
    end_year                YEAR                NOT NULL,
    date_obtained           DATE                NOT NULL
);
# REFERENCE
# COLUMN                TABLE
#---------------------------------
#student                students

CREATE TABLE address (
    id                      INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    address                 VARCHAR(128)        NOT NULL,
    town                    VARCHAR(48)         NOT NULL,
    state                   VARCHAR(24)         NOT NULL,
    country                 VARCHAR(24)         DEFAULT 'Nigeria'  NOT NULL,
    type                    VARCHAR(24)         NOT NULL
);

CREATE TABLE contacts (
    id                      INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name                    VARCHAR(128)        NOT NULL,
    mobile_number           VARCHAR(14)         NOT NULL,
    email                   VARCHAR(64)         DEFAULT NULL NULL,
    address                 INT UNSIGNED        DEFAULT NULL NULL,
    relationship            VARCHAR(24)         NOT NULL,
    type                    VARCHAR(16)         NOT NULL
);

CREATE TABLE medical_problems (
    id                      INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    problem                 VARCHAR(32)        NOT NULL,
    description             VARCHAR(255)       NOT NULL
);

CREATE TABLE student_medical_history (
    id                      INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    student                 INT UNSIGNED        NOT NULL,
    medical_problem         INT UNSIGNED        NOT NULL,
    comment                 TEXT                DEFAULT NULL NULL
);
# REFERENCE
# COLUMN                TABLE
#---------------------------------
#student                students

CREATE TABLE academic_programs (
    id                      INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name                    VARCHAR(32)         NOT NULL,
    type                    VARCHAR(32)         NOT NULL,
    duration                VARCHAR(32)         NOT NULL,
    certificate             VARCHAR(32)         NOT NULL
);


CREATE TABLE student_academic_info  (
    id                      INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    student                 INT UNSIGNED        NOT NULL,
    jamb_reg_no             VARCHAR(10)         DEFAULT NULL NULL,
    department              INT UNSIGNED        DEFAULT NULL NULL,
    academic_program        INT UNSIGNED        DEFAULT NULL NULL,
    study_mode              VARCHAR(32)         DEFAULT NULL NULL,
    admission_mode          VARCHAR(32)         DEFAULT NULL NULL,
    admitted_date           DATE                DEFAULT NULL NULL,
    entry_level             INT UNSIGNED        DEFAULT NULL NULL,
    current_level           INT UNSIGNED        DEFAULT NULL NULL,
    graduation_date         DATE                DEFAULT NULL NULL
);
# REFERENCE
# COLUMN                TABLE
#---------------------------------
#student                students
#department             department
#academic_program       academic_programs
#entry_level            levels
#current_level          levels

CREATE TABLE faculties(
   id                       INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
   name                     VARCHAR(32)     NOT NULL,
   code                     VARCHAR(5)      NOT NULL,
   serial                   VARCHAR(5)      NOT NULL
);

CREATE TABLE departments(
   id                       INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
   faculty                  INT UNSIGNED    NOT NULL,
   name                     VARCHAR(32)     NOT NULL,
   code                     VARCHAR(5)      NOT NULL,
   serial                   VARCHAR(5)      NOT NULL
);
# REFERENCE
# COLUMN                TABLE
#---------------------------------
#faculty                faculties

CREATE TABLE courses(
   id                       INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
   title                    VARCHAR(32)     NOT NULL,
   code                     VARCHAR(7)      NOT NULL,
   semester                 TINYINT         NOT NULL
);

CREATE TABLE department_courses(
   id                       INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
   department               INT UNSIGNED    NOT NULL,
   level                    INT UNSIGNED    NOT NULL,
   course                   INT UNSIGNED    NOT NULL,
   credit_load              TINYINT         NOT NULL
);
# REFERENCE
# COLUMN                TABLE
#---------------------------------
#department             departments
#course                 courses

CREATE TABLE wallet (
   id                       INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
   student                  INT UNSIGNED    NOT NULL,
   balance                  INT UNSIGNED    NOT NULL
);
# REFERENCE
# COLUMN                TABLE
#---------------------------------
#student                students

CREATE TABLE transactions (
   id                       INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
   student                  INT UNSIGNED    NOT NULL,
   amount                   INT UNSIGNED    NOT NULL,
   is_credit                TINYINT         DEFAULT 1   NULL,
   reference                VARCHAR(12)    NOT NULL,
   description              VARCHAR(255)    NOT NULL,
   balance                  INT UNSIGNED    NOT NULL
);
# REFERENCE
# COLUMN                TABLE
#---------------------------------
#student                students

CREATE TABLE sessions (
    id                      INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    session                 VARCHAR(9)      NOT NULL,
    start_date              DATE            NOT NULL,
    end_date                DATE            DEFAULT NULL NULL
);

CREATE TABLE semesters (
    id                      INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    semester                TINYINT UNSIGNED    NOT NULL,
    start_date              DATE                NOT NULL,
    end_date                DATE                DEFAULT NULL NULL,
    session                 INT UNSIGNED       NOT NULL
);
# REFERENCE
# COLUMN                TABLE
#---------------------------------
#session                sessions

CREATE TABLE registered_courses (
    id                      INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    student                 INT UNSIGNED        NOT NULL,
    semester                INT UNSIGNED        NOT NULL,
    department_course       INT UNSIGNED        NOT NULL
);
# REFERENCE
# COLUMN                TABLE
#---------------------------------
#student                students
#semester               semesters
#department_course      department_courses

CREATE TABLE student_results (
    id                      INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    student                 INT UNSIGNED        NOT NULL,
    registered_course       INT UNSIGNED        NOT NULL,
    test_score              FLOAT UNSIGNED      NOT NULL,
    exam_score              FLOAT UNSIGNED      NOT NULL,
    grade                   VARCHAR(2)          NOT NULL,
    comment                 VARCHAR(32)         DEFAULT NULL NULL
);
# REFERENCE
# COLUMN                TABLE
#---------------------------------
#student                students
#registered_course      registered_courses

CREATE TABLE roles (
    id                      INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    role                    VARCHAR(32)         NOT NULL,
    description             VARCHAR(255)        NOT NULL
);

CREATE TABLE admins (
    id                      INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    first_name              VARCHAR(32)         NOT NULL,
    surname                 VARCHAR(32)         NOT NULL,
    middle_name             VARCHAR(16)         DEFAULT NULL NULL,
    password                VARCHAR(255)        NOT NULL,
    mobile_number           VARCHAR(14)         NOT NULL,
    email_address           VARCHAR(64)         NOT NULL,
    role                    INT UNSIGNED        NOT NULL,
    is_staff                TINYINT UNSIGNED    NOT NULL,
    verified                TINYINT             DEFAULT 0   NULL,
    is_active               TINYINT             DEFAULT 0   NULL
);
# REFERENCE
# COLUMN                TABLE
#---------------------------------
#role                   roles

CREATE TABLE staffs (
    id                      INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    admin                   INT UNSIGNED        NOT NULL,
    grade_level             TINYINT(2) UNSIGNED DEFAULT NULL NULL,
    staff_type              VARCHAR(16)         NOT NULL,
    designation             INT UNSIGNED        NOT NULL,
    department              INT UNSIGNED        NOT NULL,
    employment_date         DATE                DEFAULT NULL NULL,
    employment_end_date     DATE                DEFAULT NULL NULL,
    employment_end_reason   VARCHAR(255)        DEFAULT NULL NULL
);
# REFERENCE
# COLUMN                TABLE
#---------------------------------
#admin                  admins
#current_designation    designations
#department             departments

CREATE TABLE designations (
    id                      INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    title                   VARCHAR(24)         NOT NULL,
    description             VARCHAR(255)        NOT NULL
);

CREATE TABLE designation_history (
    id                      INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    staff                   INT UNSIGNED        NOT NULL,
    designation             INT UNSIGNED        NOT NULL,
    start_date              DATE                NOT NULL,
    end_date                DATE                DEFAULT NULL NULL,
    end_reason              VARCHAR(255)        DEFAULT NULL NULL
);
# REFERENCE
# COLUMN                TABLE
#---------------------------------
#staff                  staffs
#designation            designations

CREATE TABLE staff_academic_history (
    id                      INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    staff                   INT UNSIGNED        NOT NULL,
    certificate             VARCHAR(14)         NOT NULL,
    institution             VARCHAR(14)         NOT NULL,
    start_year              YEAR                NOT NULL,
    end_year                YEAR                NOT NULL,
    date_obtained           DATE                NOT NULL,
    description             VARCHAR(255)        DEFAULT NULL NULL
);
# REFERENCE
# COLUMN                TABLE
#---------------------------------
#staff                  staffs

CREATE TABLE grade_level_history (
    id                      INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    staff                   INT UNSIGNED        NOT NULL,
    grade_level             INT UNSIGNED        NOT NULL,
    start_date              DATE                NOT NULL,
    end_date                DATE                DEFAULT NULL NULL,
    comment                 VARCHAR(255)        DEFAULT NULL NULL
);
# REFERENCE
# COLUMN                TABLE
#---------------------------------
#staff                  staffs
#grade_level            grade_levels

CREATE TABLE admin_info (
    id                      INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    admin                   INT UNSIGNED        NOT NULL,
    gender                  VARCHAR(6)          NOT NULL,
    dob                     DATE                DEFAULT NULL NULL,
    religion                VARCHAR(16)         DEFAULT NULL NULL,
    passport                VARCHAR(255)        DEFAULT NULL NULL,
    signature               VARCHAR(255)        DEFAULT NULL NULL,
    blood_group             VARCHAR(3)          DEFAULT NULL NULL,
    genotype                VARCHAR(2)          DEFAULT NULL NULL,
    next_of_kin             INT UNSIGNED        DEFAULT NULL NULL,
    origin                  INT UNSIGNED        DEFAULT NULL NULL,
    permanent_address       INT UNSIGNED        DEFAULT NULL NULL,
    contact_address         INT UNSIGNED        DEFAULT NULL NULL
);
# REFERENCE
# COLUMN                TABLE
#---------------------------------
#admin                  admins
#next_of_kin            contacts
#origin                 address
#permanent_address      address
#contact_address        address

CREATE TABLE admin_medical_history (
    id                      INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    admin                   INT UNSIGNED        NOT NULL,
    medical_problem         INT UNSIGNED        NOT NULL,
    comment                 TEXT                DEFAULT NULL NULL
);
# REFERENCE
# COLUMN                TABLE
#---------------------------------
#admin                  admins

CREATE TABLE associations (
    id                      INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name                    VARCHAR(255)       NOT NULL,
    code                    VARCHAR(12)         NOT NULL,
    description             TEXT                NOT NULL
);

CREATE TABLE staff_association (
    id                      INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    staff                   INT UNSIGNED        NOT NULL,
    association             INT UNSIGNED        NOT NULL
);
# REFERENCE
# COLUMN                TABLE
#---------------------------------
#staff                  staffs
#association            associations

CREATE TABLE class_time_table (
    id                      INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    department              INT UNSIGNED        NOT NULL,
    department_course       INT UNSIGNED        NOT NULL,
    venue                   INT UNSIGNED        NOT NULL,
    day                     INT UNSIGNED        NOT NULL,
    start_time              INT UNSIGNED        NOT NULL,
    end_time                INT UNSIGNED        NOT NULL,
    semester                INT UNSIGNED        NOT NULL
);
# REFERENCE
# COLUMN                TABLE
#---------------------------------
#department                 departments
#department_course          department_courses
#semester                   semesters

CREATE TABLE department_course_lecturers (
    id                      INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    department_course       INT UNSIGNED        NOT NULL,
    staff                   INT UNSIGNED        NOT NULL,
    is_lecture              TINYINT UNSIGNED    NOT NULL,
    is_practical            TINYINT UNSIGNED    NOT NULL
);

CREATE TABLE class_time_table_lecturer (
    id                      INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    class_time_table        INT UNSIGNED        NOT NULL,
    lecturer                INT UNSIGNED        NOT NULL
);
# REFERENCE
# COLUMN                TABLE
#---------------------------------
#lectirer               staffs
#time_table             time_table

CREATE TABLE exam_time_table (
    id                      INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    department              INT UNSIGNED        NOT NULL,
    department_course       INT UNSIGNED        NOT NULL,
    venue                   INT UNSIGNED        NOT NULL,
    date                    INT UNSIGNED        NOT NULL,
    start_time              INT UNSIGNED        NOT NULL,
    end_time                INT UNSIGNED        NOT NULL,
    semester                INT UNSIGNED        NOT NULL
);
# REFERENCE
# COLUMN                TABLE
#---------------------------------
#department                 departments
#department_course          department_courses
#semester                   semesters

CREATE TABLE exam_time_table_invigilators (
    id                      INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    exam_time_table         INT UNSIGNED        NOT NULL,
    staff                   INT UNSIGNED        NOT NULL
);
# REFERENCE
# COLUMN                TABLE
#---------------------------------
#lectirer               staffs
#time_table             time_table

CREATE TABLE student_notification (
    id                      INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    title                   INT UNSIGNED        NOT NULL,
    message                 INT UNSIGNED        NOT NULL,
    faculty                 INT UNSIGNED        NOT NULL,
    department              INT UNSIGNED        NOT NULL,
    student                 INT UNSIGNED        NOT NULL,
    is_published            INT UNSIGNED        NOT NULL
);
# REFERENCE
# COLUMN                TABLE
#---------------------------------
#lectirer               staffs
#time_table             time_table

CREATE TABLE admin_notification (
    id                      INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    title                   INT UNSIGNED        NOT NULL,
    message                 INT UNSIGNED        NOT NULL,
    faculty                 INT UNSIGNED        NOT NULL,
    department              INT UNSIGNED        NOT NULL,
    admin                   INT UNSIGNED        NOT NULL,
    is_published            INT UNSIGNED        NOT NULL
);
# REFERENCE
# COLUMN                TABLE
#---------------------------------
#lectirer               staffs
#time_table             time_table

CREATE TABLE academic_calender (
    id                      INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    semester                INT UNSIGNED        NOT NULL,
    date                    INT UNSIGNED        NOT NULL,
    activity                INT UNSIGNED        NOT NULL
);
# REFERENCE
# COLUMN                TABLE
#---------------------------------
#lectirer               staffs
#time_table             time_table

CREATE TABLE student_complaints (
    id                      INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    student                 INT UNSIGNED        NOT NULL,
    title                   INT UNSIGNED        NOT NULL,
    message                 INT UNSIGNED        NOT NULL
);
# REFERENCE
# COLUMN                TABLE
#---------------------------------
#lectirer               staffs
#time_table             time_table

CREATE TABLE admin_complaints (
    id                      INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    admin                 INT UNSIGNED        NOT NULL,
    title                   INT UNSIGNED        NOT NULL,
    message                 INT UNSIGNED        NOT NULL
);
# REFERENCE
# COLUMN                TABLE
#---------------------------------
#lectirer               staffs
#time_table             time_table

CREATE TABLE class_attendance (
    id                      INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    student                 INT UNSIGNED        NOT NULL,
    admin                   INT UNSIGNED        NOT NULL,
    class_time_table        INT UNSIGNED        NOT NULL
);
# REFERENCE
# COLUMN                TABLE
#---------------------------------
#lectirer               staffs
#time_table             time_table

CREATE TABLE exam_attendance (
    id                      INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    student                 INT UNSIGNED        NOT NULL,
    admin                   INT UNSIGNED        NOT NULL,
    exam_time_table         INT UNSIGNED        NOT NULL
);
# REFERENCE
# COLUMN                TABLE
#---------------------------------
#lectirer               staffs
#time_table             time_table







