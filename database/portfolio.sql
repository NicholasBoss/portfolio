DROP TABLE IF EXISTS account;
DROP TYPE IF EXISTS account_type;
DROP TABLE IF EXISTS project_description;
DROP TABLE IF EXISTS project;
DROP TABLE IF EXISTS award;
DROP TABLE IF EXISTS resume_project;
DROP TABLE IF EXISTS personal_experience;
DROP TABLE IF EXISTS professional_experience;
DROP TABLE IF EXISTS skill;
DROP TABLE IF EXISTS society_project;
DROP TABLE IF EXISTS society;
DROP TABLE IF EXISTS resume;

-- Account Type Creation
-- DROP TYPE IF EXISTS account_type CASCADE;
CREATE TYPE IF NOT EXISTS account_type AS ENUM
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
    project_github_link CHARACTER VARYING NOT NULL,
    project_image CHARACTER VARYING NOT NULL,
    CONSTRAINT project_pk PRIMARY KEY (project_id)
)

-- -----------------------------------------------------
-- Table project_description
-- -----------------------------------------------------

CREATE TABLE IF NOT EXISTS project_description
(
    project_description_id SERIAL,
    project_paragraph CHARACTER VARYING NOT NULL,
    project_id INTEGER NOT NULL,
    CONSTRAINT project_description_pk PRIMARY KEY (project_description_id),
    CONSTRAINT project_description_fk1
        FOREIGN KEY (project_id)
        REFERENCES project (project_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
)

-- -----------------------------------------------------
-- Table resume
-- -----------------------------------------------------

CREATE TABLE IF NOT EXISTS resume
(
    resume_id SERIAL,
    education_id INTEGER NOT NULL,
    society_id INTEGER NOT NULL,

)

-- -----------------------------------------------------
-- Table society
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Table society_project
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Table skill
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Table professional_experience
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Table personal_experience
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Table resume_project (resume_id and project_id)
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Table award
-- -----------------------------------------------------