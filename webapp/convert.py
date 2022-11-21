'''
Using Python dictionaries to convert data from CSV into database tables
The data can be found here: https://github.com/jfjelstul/worldcup/tree/master/data-csv
'''

import csv

with open('data-csv/players.csv') as players, open('parsed-data/players.csv', 'w', newline="\n") as players_file:
    reader = csv.reader(players)
    writer = csv.writer(players_file)
    heading_row = next(reader)
    for column in reader:
        player_id = column[1]
        player_lastname = column[2]
        player_firstname = column[3]
        if player_firstname == "not applicable":
            player_firstname = ""
        player_num_tournaments = column[9]
        player_list_tournaments = column[10]
        player_fullname = player_firstname + " " + player_lastname
        writer.writerow([player_id, player_firstname, player_lastname, player_num_tournaments, player_list_tournaments, player_fullname])

teams = {}
with open('data-csv/teams.csv') as original_data_file, open('parsed-data/teams.csv', 'w', newline="\n") as teams_file:
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

squads = {}
with open ('data-csv/squads.csv') as original_data_file, open ('parsed-data/squads.csv', 'w', newline ="\n") as squads_file:
        reader = csv.reader(original_data_file)
        writer = csv.writer(squads_file)
        heading_row = next(reader) 
        for column in reader:
            tournament_id = column[1]
            team_id = column[3]
            team_name = column[4]
            player_id = column[6]
            last_name = column[7]
            first_name = column[8]
            if first_name == "not applicable":
                first_name = ""
            shirt_number = column[9]
            position = column[10]
            writer.writerow([tournament_id, team_id, team_name, player_id, last_name, first_name, shirt_number, position])

with open('data-csv/tournaments.csv') as tournaments, open('parsed-data/tournaments.csv', 'w', newline="\n") as tournaments_file:
    reader = csv.reader(tournaments)
    writer = csv.writer(tournaments_file)
    heading_row = next(reader)
    for column in reader:
        tournament_id = column[1]
        tournament_name = column[2]
        tournament_year = column[3]
        tournament_host = column[6]
        tournament_winner = column[7]
        writer.writerow([tournament_id, tournament_name, tournament_year, tournament_host, tournament_winner])

group_standings = {}
with open('data-csv/group_standings.csv') as group_standings, open('parsed-data/group_standings.csv', 'w', newline="\n") as group_standings_file:
    reader = csv.reader(group_standings)
    writer = csv.writer(group_standings_file)
    heading_row = next(reader)
    for column in reader:
        gs_tournament_id = column[1]
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
        writer.writerow([gs_tournament_id, gs_stage_name, gs_team_name, gs_group_name, gs_position, gs_played, gs_wins, gs_draws,
                        gs_losses, gs_goals_for, gs_goals_against, gs_goal_difference, gs_points])

with open('data-csv/tournament_standings.csv') as original_data_file, open('parsed-data/tournament_standings.csv', 'w', newline="\n") as tournament_standings_file:
        reader = csv.reader(original_data_file)
        writer = csv.writer(tournament_standings_file)
        heading_row = next(reader)
        for column in reader:
            tournament_id = column[1]
            tournament_name = column[2]
            team_name = column[5]
            position = column[3]
            writer.writerow([tournament_id, team_name, tournament_name, position])

with open('data-csv/qualified_teams.csv') as original_data_file, open('parsed-data/qualified_teams.csv', 'w', newline="\n") as qualified_teams_file:
        reader = csv.reader(original_data_file)
        writer = csv.writer(qualified_teams_file)
        heading_row = next(reader)
        for column in reader:
            tournament_id = column[1]
            team_id = column[3]
            team_name = column[4]
            writer.writerow([tournament_id, team_id, team_name])

with open('data-csv/matches.csv') as original_data_file, open('parsed-data/matches.csv', 'w', newline="\n") as matches_file:
        reader = csv.reader(original_data_file)
        writer = csv.writer(matches_file)
        heading_row = next(reader)
        for column in reader:
            match_id = column[0]
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
            writer.writerow([match_id, tournament_id, match_name, stage_name, stadium_name, city_name, home_team_name, away_team_name, score, home_team_score, away_team_score])

with open('data-csv/award_winners.csv') as original_data_file, open('parsed-data/awards.csv', 'w', newline="\n") as awards_file:
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
        if first_name == "not applicable":
                first_name = ""
        team_id = column[9]
        writer.writerow([tournament_id, award_id, award_name, shared, player_id, last_name, first_name, team_id])