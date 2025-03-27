DROP TABLE IF EXISTS account;
DROP TYPE IF EXISTS account_type;
DROP TABLE IF EXISTS description;
DROP TABLE IF EXISTS resume_project;
DROP TABLE IF EXISTS society_project;
DROP TABLE IF EXISTS project;
DROP TABLE IF EXISTS resume_skill;
DROP TABLE IF EXISTS skill;
DROP TABLE IF EXISTS resume;
DROP TABLE IF EXISTS society;
DROP TABLE IF EXISTS education;
DROP TABLE IF EXISTS experience;

-- Account Type Creation
-- DROP TYPE IF EXISTS account_type CASCADE;
CREATE TYPE account_type AS ENUM
('Employee', 'Admin', 'DBA');

-- -----------------------------------------------------
-- Table account
-- -----------------------------------------------------

CREATE TABLE IF NOT EXISTS account 
(
    account_id SERIAL,
    account_firstname CHARACTER VARYING NOT NULL,
    account_lastname CHARACTER VARYING NOT NULL,
    account_email CHARACTER VARYING NOT NULL,
    account_password CHARACTER VARYING NOT NULL,
    account_type account_type NOT NULL DEFAULT 'Employee'::account_type,
    CONSTRAINT account_pk PRIMARY KEY (account_id)
);

-- -----------------------------------------------------
-- Table project
-- -----------------------------------------------------

CREATE TABLE IF NOT EXISTS project
(
    project_id SERIAL,
    project_name CHARACTER VARYING NOT NULL,
    project_description CHARACTER VARYING NOT NULL,
    project_link CHARACTER VARYING NOT NULL,
    project_github_link CHARACTER VARYING NULL,
    project_image CHARACTER VARYING NULL,
    CONSTRAINT project_pk PRIMARY KEY (project_id)
);

-- -----------------------------------------------------
-- Table society
-- -----------------------------------------------------

CREATE TABLE IF NOT EXISTS society
(
    society_id SERIAL,
    society_name CHARACTER VARYING NOT NULL,
    CONSTRAINT society_pk PRIMARY KEY (society_id)
);

-- -----------------------------------------------------
-- Table society_project (society_id and project_id)
-- -----------------------------------------------------

CREATE TABLE IF NOT EXISTS society_project
(
    society_project_id SERIAL,
    project_position CHARACTER VARYING NOT NULL,
    society_id INTEGER NOT NULL,
    project_id INTEGER NOT NULL,
    CONSTRAINT society_project_pk PRIMARY KEY (society_project_id),
    CONSTRAINT society_project_fk1
        FOREIGN KEY (society_id)
        REFERENCES society (society_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    CONSTRAINT society_project_fk2
        FOREIGN KEY (project_id)
        REFERENCES project (project_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

-- -----------------------------------------------------
-- Table skill
-- -----------------------------------------------------

CREATE TABLE IF NOT EXISTS skill
(
    skill_id SERIAL,
    skill_name CHARACTER VARYING NOT NULL,
    CONSTRAINT skill_pk PRIMARY KEY (skill_id)
);

-- -----------------------------------------------------
-- Table professional_experience
-- -----------------------------------------------------

CREATE TABLE IF NOT EXISTS experience
(
    experience_id SERIAL,
    experience_name CHARACTER VARYING NOT NULL,
    experience_time CHARACTER VARYING NOT NULL,
    is_professional BOOLEAN NULL,
    is_personal BOOLEAN NULL,
    is_award BOOLEAN NULL,
    CONSTRAINT experience_pk PRIMARY KEY (experience_id)
);

-- -----------------------------------------------------
-- Table description
-- -----------------------------------------------------

CREATE TABLE IF NOT EXISTS description
(
    description_id SERIAL,
    description_paragraph CHARACTER VARYING NOT NULL,
    project_id INTEGER NULL,
    experience_id INTEGER NULL,
    CONSTRAINT description_pk PRIMARY KEY (description_id),
    CONSTRAINT description_fk1
        FOREIGN KEY (project_id)
        REFERENCES project (project_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    CONSTRAINT description_fk2
        FOREIGN KEY (experience_id)
        REFERENCES experience (experience_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

-- -----------------------------------------------------
-- Table resume
-- -----------------------------------------------------

CREATE TABLE IF NOT EXISTS education
(
    education_id SERIAL,
    education_degree_name CHARACTER VARYING NOT NULL,
    education_school CHARACTER VARYING NOT NULL,
    education_location CHARACTER VARYING NOT NULL,
    education_time CHARACTER VARYING NOT NULL,
    education_gpa CHARACTER VARYING NOT NULL,
    education_expected_graduation CHARACTER VARYING NOT NULL,
    CONSTRAINT education_pk PRIMARY KEY (education_id)
);

-- -----------------------------------------------------
-- Table resume
-- -----------------------------------------------------

CREATE TABLE IF NOT EXISTS resume
(
    resume_id SERIAL,
    resume_name CHARACTER VARYING NOT NULL,
    CONSTRAINT resume_pk PRIMARY KEY (resume_id),
);



-- -----------------------------------------------------
-- Table resume_education
-- -----------------------------------------------------

CREATE TABLE IF NOT EXISTS resume_education
(
    resume_education_id SERIAL,
    resume_id INTEGER NOT NULL,
    education_id INTEGER NOT NULL,
    CONSTRAINT resume_education_pk PRIMARY KEY (resume_education_id),
    CONSTRAINT resume_education_fk1
        FOREIGN KEY (resume_id)
        REFERENCES resume (resume_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    CONSTRAINT resume_education_fk2
        FOREIGN KEY (education_id)
        REFERENCES education (education_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

-- -----------------------------------------------------
-- Table resume_society
-- -----------------------------------------------------

CREATE TABLE IF NOT EXISTS resume_society
(
    resume_society_id SERIAL,
    resume_id INTEGER NOT NULL,
    society_id INTEGER NOT NULL,
    CONSTRAINT resume_society_pk PRIMARY KEY (resume_society_id),
    CONSTRAINT resume_society_fk1
        FOREIGN KEY (resume_id)
        REFERENCES resume (resume_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    CONSTRAINT resume_society_fk2
        FOREIGN KEY (society_id)
        REFERENCES society (society_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

-- -----------------------------------------------------
-- Table resume_experience
-- -----------------------------------------------------

CREATE TABLE IF NOT EXISTS resume_experience
(
    resume_experience_id SERIAL,
    resume_id INTEGER NOT NULL,
    experience_id INTEGER NOT NULL,
    CONSTRAINT resume_experience_pk PRIMARY KEY (resume_experience_id),
    CONSTRAINT resume_experience_fk1
        FOREIGN KEY (resume_id)
        REFERENCES resume (resume_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    CONSTRAINT resume_experience_fk2
        FOREIGN KEY (experience_id)
        REFERENCES experience (experience_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
)

-- -----------------------------------------------------
-- Table resume_skill
-- -----------------------------------------------------

CREATE TABLE IF NOT EXISTS resume_skill
(
    resume_skill_id SERIAL,
    resume_id INTEGER NOT NULL,
    skill_id INTEGER NOT NULL,
    CONSTRAINT resume_skill_pk PRIMARY KEY (resume_skill_id),
    CONSTRAINT resume_skill_fk1
        FOREIGN KEY (resume_id)
        REFERENCES resume (resume_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    CONSTRAINT resume_skill_fk2
        FOREIGN KEY (skill_id)
        REFERENCES skill (skill_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

-- -----------------------------------------------------
-- Table resume_project
-- -----------------------------------------------------

CREATE TABLE IF NOT EXISTS resume_project
(
    resume_project_id SERIAL,
    resume_id INTEGER NOT NULL,
    project_id INTEGER NOT NULL,
    CONSTRAINT resume_project_pk PRIMARY KEY (resume_project_id),
    CONSTRAINT resume_project_fk1
        FOREIGN KEY (resume_id)
        REFERENCES resume (resume_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    CONSTRAINT resume_project_fk2
        FOREIGN KEY (project_id)
        REFERENCES project (project_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);