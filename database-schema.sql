--database schema for the notes application
--going to be very simplistic - a couple of tables

--database
CREATE DATABASE notesapp;

--users table
CREATE TABLE users (
    userid SERIAL PRIMARY KEY,
    username VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL
);

--notes table
CREATE TABLE notes (
    noteid SERIAL PRIMARY KEY,
    userid INTEGER NOT NULL,
    notename VARCHAR(255) NOT NULL,
    notecontent TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    FOREIGN KEY (userid) REFERENCES users(userid) ON DELETE CASCADE
);