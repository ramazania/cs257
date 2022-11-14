'''
Using Python dictionaries to convert data from CSV into database tables
The data can be found here: https://github.com/jfjelstul/worldcup/tree/master/data-csv
'''

import csv

players = {}

with open('data-csv/players.csv') as players, open('players.csv', 'w') as players_file:
    reader = csv.reader(players)
    writer = csv.write(players_file)
    heading_row = next(reader)
    for column in reader:
        player_id = column[1]
        if player_id not in players:
            player_lastname = column[2]
            player_firstname = column[3]
            player_numtournaments = column[9]
            player_list_tournaments = column[10]
            player_fullname = player_firstname + player_lastname
            players[player_id] = player_fullname
            writer.writerow([player_id, player_firstname, player_numtournaments, player_list_tournaments, player_fullname])


teams = {}
with open('data-csv/teams.csv') as original_data_file, open('teams.csv', 'w') as teams_file:
        reader = csv.reader(original_data_file)
        writer = csv.writer(teams_file)
        heading_row = next(reader) 
        for column in reader:
            team_id = column[1]
            if team_id not in teams:
                team_name = column[2]
                teams[team_id] = team_name
                team_code = column[3]
                writer.writerow([team_id, team_name, team_code])

                

with open('data-csv/tournaments.csv') as tournaments, open('tournaments.csv', 'w') as tournaments_file:
    reader = csv.reader(tournaments)
    writer = csv.write(tournaments_file)
    heading_row = next(reader)
    for column in reader:
        tournament_id = column[1]
        tournament_name = column[2]
        tournament_year = column[3]
        tournament_host = column[6]
        tournament_winner = column[7]
        writer.writerow([tournament_id, tournament_name, tournament_year, tournament_host, tournament_winner])

group_standings = {}
with open('data-csv/group_standings.csv') as group_standings, open('group_standings.csv', 'w') as group_standings_file:
    reader = csv.reader(group_standings)
    writer = csv.write(group_standings_file)
    heading_row = next(reader)
    for column in reader:
        gs_tournament_id = column[1]
        gs_stage_number = column[3]
        gs_stage_name = column[4]
        gs_team_name = column[8]
        gs_group_name = column[5]
        gs_position = column[6]
        gs_played = column[10]
        gs_wins = column[11]
        gs_draws = column[12]
        gs_losses = column[13]
        gs_goals_for = column[14]
        gs_goals_against = column[15]
        gs_goal_difference = column[16]
        gs_points = column[17]
        writer.writerow([gs_tournament_id, gs_stage_number, gs_stage_name, gs_team_name, gs_group_name, gs_position, gs_played, gs_wins, gs_draws, gs_losses, gs_goals_for, gs_goals_against, gs_goal_difference, gs_points, player_fullname])


with open('data-csv/tournament_standings.csv') as original_data_file, open('tournament_standings.csv', 'w') as tournament_standings_file:
        reader = csv.reader(original_data_file)
        writer = csv.writer(tournament_standings_file)
        heading_row = next(reader)
        for column in reader:
            tournament_id = column[1]
            tournament_name = column[2]
            team_name = column[5]
            position = column[3]
            writer.writerow([tournament_id, team_name, tournament_name, position])


with open('data-csv/qualified_teams.csv') as original_data_file, open('qualified_teams.csv', 'w') as qualified_teams_file:
        reader = csv.reader(original_data_file)
        writer = csv.writer(qualified_teams_file)
        heading_row = next(reader)
        for column in reader:
            tournament_id = column[1]
            team_id = column[3]
            team_name = column[4]
            writer.writerow([tournament_id, team_id, team_name])

with open('data-csv/matches.csv') as original_data_file, open('matches.csv', 'w') as matches_file:
        reader = csv.reader(original_data_file)
        writer = csv.writer(matches_file)
        heading_row = next(reader)
        for column in reader:
            id = column[0]
            tournament_id = column[1]
            match_name = column[4]
            stage_name = column[5]
            stadium_name = column[14]
            city_name = column[15]
            home_team_name = column[18]
            away_team_name = column[20]
            score = column[22]
            home_team_score = column[23]
            away_team_score = column[24]       
            writer.writerow([tournament_id, team_id, team_name])

with open('data-csv/award_winners.csv') as original_data_file, open('awards.csv', 'w') as awards_file:
    reader = csv.reader(original_data_file)
    writer = csv.writer(awards_file)
    heading_row = next(reader)
    for column in reader:
        tournament_id = column[1]
        award_id = column[3] 
        award_name = column[4]
        shared = column[5]
        player_id = column[6]
        last_name = column[7]
        first_name = column[8]
        team_id = column[9]
        writer.writerow(tournament_id, award_id, award_name, shared, player_id, last_name, first_name, team_id)