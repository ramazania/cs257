/*
Ali Ramazani
Software Design
Fall 2022
Collaborators: I got help from Quoc, Sydney, James, and Kimberly
*/

/*
List all the NOCs (National Olympic Committees), in alphabetical order by abbreviation.
*/

SELECT nocs.noc_abbreviation
FROM nocs
ORDER BY nocs.noc_abbreviation;

/*
List the names of all the athletes from Jamaica. If your database design allows it, sort the athletes by last name.
*/

SELECT DISTINCT athletes.athlete_name                                                 
FROM athletes, teams, event_results                                          
WHERE athletes.athlete_id = event_results.athlete_id                                    
AND teams.team_name = 'Jamaica'                                                   
AND event_results.team_id = teams.team_id
ORDER BY athletes.athlete_name;


/*
List all the medals won by Greg Louganis, sorted by year. Include whatever fields in this output that you think appropriate.
*/

SELECT event_results.medal, games.game_year, games.game_id
FROM athletes, event_results, games
WHERE athletes.athlete_id = event_results.athlete_id  
AND athletes.athlete_name = 'Gregory Efthimios Greg Louganis'
AND games.game_id = event_results.game_id
ORDER BY games.game_year;


/*
List all the NOCs and the number of gold medals they have won, in decreasing order of the number of gold medals.
*/

SELECT nocs.noc_abbreviation, event_results.medal
FROM nocs, event_results
WHERE event_results.medal = 'Gold'
AND nocs.noc_id = event_results.noc_id
ORDER BY nocs.noc_abbreviation;