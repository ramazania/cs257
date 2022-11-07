CREATE TABLE players (
    id SERIAL,
    firstname text,
    lastname text,
    country text,
    count_tournaments int,
    list_tournaments text
);

CREATE TABLE teams (
    team_id text,
    team_name text,
    team_code,
    tournament_name text, 
    tournament_id text, --maybe
    count_matches int,
    performance text
);

CREATE TABLE group_standings (
    id SERIAL,
    stage_name text,
    team_name text,
    group_name text, 
    position int,
    played int,
    wins int,
    draws int,
    losses int,
    goals_for int,
    goals_against int,
    goal_difference int,
    points int,

);

CREATE TABLE tournament_standings (
    tournament_id SERIAL,
    team_name text,
    tournament_name text,
    position int,

);

CREATE TABLE matches (
    id SERIAL,
    tournament_id text, --maybe
    match_name text, 
    stage_name text,
    stadium_name text,
    city_name text,
    home_team_name text, 
    away_team_name text,
    score text,
    home_team_score int,
    away_team_score int,


)

