CREATE TABLE athletes (
    athlete_id INTEGER,
    ahtlete_name TEXT
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

CREATE TABLE athlete_event_medal(
    athlete_id INTEGER,
    event_id INTEGER,
    game_id INTEGER,
    medal TEXT
);

CREATE TABLE nocs (
    noc_id INTEGER,
    noc_abbreviation TEXT,
    noc_name TEXT
);
