-- Table definitions for the tournament project.
--
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
-- You can write comments in this file by starting them with two dashes, like
-- these lines here.

#if a database of the same name already exists, drop it
DROP DATABASE if exists tournament;

CREATE DATABASE tournament;


CREATE TABLE players (
	id serial primary key,
	name text,
	wins integer,
	losses integer,
	num_matches integer
);


CREATE TABLE matches(
	player1id serial,
	player2id serial,
    winner serial,
	loser serial
);
