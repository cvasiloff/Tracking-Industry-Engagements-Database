DROP TABLE IF EXISTS history;
DROP TABLE IF EXISTS toDoList;
DROP TABLE IF EXISTS engagementsCompanies;
DROP TABLE IF EXISTS engagementsOthers;
DROP TABLE IF EXISTS engagementsType;
DROP TABLE IF EXISTS engagementsContacts;
DROP TABLE IF EXISTS engagements;
DROP TABLE IF EXISTS flPolyContact;
DROP TABLE IF EXISTS companyContact;
DROP TABLE IF EXISTS company;


CREATE TABLE company(
    company_ID BIGINT NOT NULL AUTO_INCREMENT,
    company_Name VARCHAR(50) NOT NULL UNIQUE,
    company_DNC boolean default 0,
    company_PhoneNumber VARCHAR(15),
    company_Email VARCHAR(50),
    company_Address VARCHAR(50),
    company_City VARCHAR(50),
    company_State VARCHAR(25),
    company_Zipcode VARCHAR(10),
    company_Description VARCHAR(250),
    company_DateCreated TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    company_DateUpdated TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY(company_ID)
);

CREATE TABLE companyContact(
    companyContact_ID BIGINT NOT NULL AUTO_INCREMENT,
    companyContact_FirstName VARCHAR(50) NOT NULL,
    companyContact_MiddleName VARCHAR(20) NOT NULL,
    companyContact_LastName VARCHAR(50) NOT NULL,
    companyContact_Title VARCHAR(25),
    companyContact_DNC BOOLEAN default 0,
    companyContact_PrimaryContactMethod ENUM(
        "Email",
        "Call",
        "Text",
        "In-Person",
        "No Preference"
    ) default "No Preference",
    companyContact_PhoneNumber VARCHAR(15),
    companyContact_Email VARCHAR(50),
    companyContact_Address VARCHAR(50),
    companyContact_City VARCHAR(50),
    companyContact_State VARCHAR(25),
    companyContact_Zipcode VARCHAR(10),
    companyContact_Company_ID BIGINT NOT NULL,
    companyContact_IsPrimaryContact BOOLEAN default 0,
    companyContact_DateCreated TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    companyContact_DateUpdated TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY(companyContact_ID),
    CONSTRAINT fk_companyContact_company
        FOREIGN KEY(companyContact_Company_ID) references company(company_ID)
        ON DELETE CASCADE
        ON UPDATE RESTRICT
);

CREATE TABLE flPolyContact(
    flPolyContact_ID BIGINT NOT NULL AUTO_INCREMENT,
    flPolyContact_FirstName VARCHAR(50) NOT NULL,
    flPolyContact_MiddleName VARCHAR(20),
    flPolyContact_LastName VARCHAR(50) NOT NULL,
    flPolyContact_PrimaryContactMethod ENUM(
        "Email",
        "Call",
        "Text",
        "In-Person",
        "No Preference"
    ) default "No Preference",
    flPolyContact_PhoneNumber VARCHAR(15),
    flPolyContact_Email VARCHAR(50),
    flPolyContact_DateCreated TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    flPolyContact_DateUpdated TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY(flPolyContact_ID)
);

CREATE TABLE toDoList(
    toDo_ID BIGINT NOT NULL AUTO_INCREMENT,
    toDo_FLPOLYContact_ID BIGINT NOT NULL,
    toDo_Task VARCHAR(100) NOT NULL,
    PRIMARY KEY(toDo_ID),
    CONSTRAINT fk_toDoList_floridaPolyContact
        FOREIGN KEY(toDo_FLPOLYContact_ID) references flPolyContact(flPolyContact_ID)
        ON DELETE CASCADE
        ON UPDATE RESTRICT
        
);

CREATE TABLE history(
    history_ID BIGINT NOT NULL AUTO_INCREMENT,
    history_FLPOLYContact_ID BIGINT NOT NULL,
    history_Item VARCHAR(100) NOT NULL,
    history_DateCreated TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY(history_ID),
    CONSTRAINT fk_history_floridaPolyContact
        FOREIGN KEY(history_FLPOLYContact_ID) references flPolyContact(flPolyContact_ID)
        ON DELETE CASCADE
        ON UPDATE RESTRICT
);

CREATE TABLE engagements(
    engagements_ID BIGINT NOT NULL AUTO_INCREMENT,
    engagements_Title VARCHAR(50) NOT NULL,
    engagements_DateOccurred TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    engagements_FLPOLYContact_ID BIGINT NOT NULL,
    engagements_Status enum(
        "Started",
        "In Progress",
        "Action Completed",
        "No Action Required"
    ) DEFAULT "No Action Required",
    engagements_Notes VARCHAR(500),
    engagements_Action VARCHAR(500),
    engagements_FollowUp VARCHAR(500),
    engagements_Attatchments BLOB,
    engagements_DateCreated TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    engagements_DateUpdated TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY(engagements_ID),
    CONSTRAINT fk_engagements_floridaPolyContact
        FOREIGN KEY(engagements_FLPOLYContact_ID) references flPolyContact(flPolyContact_ID)
        ON DELETE CASCADE
        ON UPDATE RESTRICT
);

CREATE TABLE engagementsOthers(
    engagementsOthers_ID BIGINT NOT NULL AUTO_INCREMENT,
    engagementsOthers_engagements_ID BIGINT NOT NULL,
    engagementsOthers_FLPOLYContact_ID BIGINT NOT NULL,
    engagementsOthers_DateCreated TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    engagementsOthers_DateUpdated TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY(engagementsOthers_ID),
    CONSTRAINT fk_engagementsOthers_engagements
        FOREIGN KEY(engagementsOthers_engagements_ID) references engagements(engagements_ID)
        ON DELETE CASCADE
        ON UPDATE RESTRICT,
    CONSTRAINT fk_engagementsOthers_flPolyContact
        FOREIGN KEY(engagementsOthers_FLPOLYContact_ID) references flPolyContact(flPolyContact_ID)
        ON DELETE CASCADE
        ON UPDATE RESTRICT
);

CREATE TABLE engagementsCompanies(
    engagementsCompanies_ID BIGINT NOT NULL AUTO_INCREMENT,
    engagementsCompanies_engagements_ID BIGINT NOT NULL,
    engagementsCompanies_company_ID BIGINT NOT NULL,
    engagementsOthers_DateCreated TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    engagementsOthers_DateUpdated TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY(engagementsCompanies_ID),
    CONSTRAINT fk_engagementsCompanies_engagements
        FOREIGN KEY(engagementsCompanies_engagements_ID) references engagements(engagements_ID)
        ON DELETE CASCADE
        ON UPDATE RESTRICT,
    CONSTRAINT fk_engagementsCompanies_company
        FOREIGN KEY(engagementsCompanies_company_ID) references company(company_ID)
        ON DELETE CASCADE
        ON UPDATE RESTRICT
);

CREATE TABLE engagementsContacts(
    engagementsContacts_ID BIGINT NOT NULL AUTO_INCREMENT,
    engagementsContacts_engagements_ID BIGINT NOT NULL,
    engagementsContacts_companyContact_ID BIGINT NOT NULL,
    engagementsContacts_DateCreated TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    engagementsContacts_DateUpdated TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY(engagementsContacts_ID),
    CONSTRAINT fk_engagementsContacts_engagements
        FOREIGN KEY(engagementsContacts_engagements_ID) references engagements(engagements_ID),
    CONSTRAINT fk_engagementsContacts_companyContact
        FOREIGN KEY(engagementsContacts_companyContact_ID) references companyContact(companyContact_ID)
);

CREATE TABLE engagementsType(
    engagementsType_ID BIGINT NOT NULL AUTO_INCREMENT,
    engagementsType_engagements_ID BIGINT NOT NULL,
    engagementsType_Type ENUM(
        "Capstone Inquiry",
        "Internship Inquiry",
        "Foundation Inquiry",
        "Job Inquiry",
        "Career Fair",
        "General Outreach",
        "Scholarship Opprotunity"
    ),
    engagementsType_DateCreated TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    engagementsType_DateUpdated TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY(engagementsType_ID),
    CONSTRAINT fk_engagementsType_engagements
        FOREIGN KEY(engagementsType_engagements_ID) references engagements(engagements_ID)
        ON DELETE CASCADE
        ON UPDATE RESTRICT
    
);