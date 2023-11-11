CREATE TABLE `users` (
    `id` INT AUTO_INCREMENT,
    `first_name`  VARCHAR(32) NOT NULL,
    `last_name`  VARCHAR(32) NOT NULL UNIQUE,
    `username`  VARCHAR(32) NOT NULL UNIQUE,
    `password`,
    PRIMARY KEY(`id`)
);

CREATE TABLE `schools` (

    `id` INT AUTO_INCREMENT,
    `type`,
    `school`,
    `location,
    `year`,
    PRIMARY KEY(`id`)
   

);

CREATE TABLE `companies` (
    `id` INT AUTO_INCREMENT,
    `name`,
    `location`

);

CREATE TABLE `connections` (

    `id` INT AUTO_INCREMENT,
    `school_startdate`,
    `school_enddate`,
    `degree_type`,
    `company_startdate`,
    `company_enddate`,
    `user_id`,
    `school_id`,
    `company_id`,
    FOREIGN KEY(`user_id`) REFERNCES `users`(`id`),
    FOREIGN KEY(`school_id`) REFERENCES `schools`(`id`),
    FOREIGN KEY(`company_id`) REFERENCES `companies`(`id`)

);