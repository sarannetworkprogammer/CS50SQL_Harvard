# Design Document

By YOUR NAME HERE SARANCHOWDARY Malakalapalli

Video overview: <https://youtu.be/q1yNvRewmoQ>

## Scope

In this section you should answer the following questions:

* What is the purpose of your database?
    Making collections of songs and also serving the users as per their specific needs
* Which people, places, things, etc. are you including in the scope of your database?
    Created architecture of the database following spotify website
* Which people, places, things, etc. are *outside* the scope of your database?
    There is no records in database to perform operations or to test the data

## Functional Requirements

In this section you should answer the following questions:

* What should a user be able to do with your database?
    user can select the songs based on their choices.
* What's beyond the scope of what a user should be able to do with your database?
    user cannot create new table or views or other columns they can see only what is existing


## Representation

### Entities

In this section you should answer the following questions:

* Which entities will you choose to represent in your database?
    writer, composer, user, audiobooks, rating, subscription, playlist
* What attributes will those entities have?
    writer has id, first_name, last_name, country
    composer has id, first_name, last_name,
    user has id, first_name,last_name,user_name, password, user_type, location
    audiobooks has id, name, song_id, playlist_id,
    ratings has id,user_id,song_id
    subscription has id,user_id,song_id, cost
    playlist has id, playlistname, user_id, song_id, date_created

* Why did you choose the types you did?
    integer, text , numeric , for names i choosen it should be text, for id i choosen integers, it should be numbers
* Why did you choose the constraints you did?
    I have choosen id as primary key in every table so that column primary key constraint applied in every table, also every column should be filled so choosen NOT NULL as a constraint, and some of the columns choosen unique i.e username, last_name

### Relationships

In this section you should include your entity relationship diagram and describe the relationships between the entities in your database.

![Music_ERdiagram](diagram.png)

## Optimizations

In this section you should answer the following questions:

* Which optimizations (e.g., indexes, views) did you create? Why?
    Created views for the simplicity of viewing particular tables based on more frequent user queries , insted of writing nested queries
    Created 3 indexes one is for user_index so that with particular user search happens quickly. other one is for songindex indexed title, album. another one is for playlist index created for playlistname and id. By this three index user search happens quicker.
## Limitations

In this section you should answer the following questions:

* What are the limitations of your design?
    Its a sqlite embedded database, For scalability have to go through mysql, postgresql
    I have to lock transactions as per record not total database
    In this there is no actual records of data
* What might your database not be able to represent very well?
    I have to make inter connections between users, songs, playlists, audiobooks, episodes,podcasts. I have to keep useraccount with all details , which are his playlists, his mostplayed songs, his interest category.
