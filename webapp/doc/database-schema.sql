/* authors: Zack Dong, Muno Siyakurima, and Ali Ramazani */

CREATE TABLE players (
    id text,
    firstname text,
    lastname text,
    count_tournaments int,
    list_tournaments text,
    player_fullname text
);

CREATE TABLE teams (
    id text,
    team_name text,
    team_code text
);

CREATE TABLE squads (
    tournament_id text,
    team_id text,
    team_name text,
    player_id text,
    last_name text,
    first_name text,
    shirt_number int,
    position text
);


CREATE TABLE tournaments (
    id text,
    tournament_name text,
    year text,
    host_country text,
    winner text
);

CREATE TABLE group_standings (
    tournament_id text,
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
    points int
);

CREATE TABLE tournament_standings (
    tournament_id text,
    team_name text,
    tournament_name text,
    position int

);

CREATE TABLE qualified_teams (
    tournament_id text,
    team_id text,
    team_name text
);

CREATE TABLE matches (
    id int,
    tournament_id text, 
    match_name text, 
    stage_name text,
    stadium_name text,
    city_name text,
    home_team_name text, 
    away_team_name text,
    score text,
    home_team_score text,
    away_team_score text
);

CREATE TABLE awards (
    tournament_id text,
    award_id text,
    award_name text,
    shared	int,
    player_id text,
    last_name text,
    first_name text,
    team_id text
);

