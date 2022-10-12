CREATE TABLE nocs (
    noc_id INTEGER,
    noc_abbreviation TEXT,
    noc_name TEXT
);

CREATE TABLE athletes (
    athlete_id INTEGER,
    athlete_name TEXT
);

CREATE TABLE teams (
    team_id INTEGER,
    team_name TEXT
);

CREATE TABLE events (
    event_id INTEGER,
    event_category TEXT,
    event_name TEXT
);

CREATE TABLE games (
    game_id INTEGER,
    game_year INTEGER,
    game_season TEXT,
    game_city TEXT
);

CREATE TABLE event_results(
    noc_id INTEGER,
    athlete_id INTEGER,
    team_id INTEGER,
    event_id INTEGER,
    game_id INTEGER,
    medal TEXT
);

