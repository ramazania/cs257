'''
Ali Ramazani
Software Design
Fall 2022

Note: You can get the athlete_events.csv source file from here:
https://www.kaggle.com/heesoo37/120-years-of-olympic-history-athletes-and-results
'''
import csv

#Mapping noc_id to noc_abbriviation and saving it to nocs.csv
nocs = {}            
with open('noc_regions.csv') as original_data_file,\
        open('nocs.csv', 'w', newline="\n") as nocs_file:
        reader = csv.reader(original_data_file)
        writer = csv.writer(nocs_file)
        heading_row = next(reader) # eat up and ignore the heading row of the data file
        for row in reader:
            noc_abbreviation = row[0]
            noc_name = row[1].replace("\"", "")
            noc_name = noc_name.replace(",", "")
            if noc_abbreviation not in nocs:
                noc_id = len(nocs) + 1
                nocs[noc_id] = noc_abbreviation
                writer.writerow([noc_id, noc_abbreviation, noc_name])

#Mapping athlete_id to athlete_name and saving it to the athlete.csv file
athletes = {}
with open('athlete_events.csv') as original_data_file,\
        open('athletes.csv', 'w', newline="\n") as athletes_file:
        reader = csv.reader(original_data_file)
        writer = csv.writer(athletes_file)
        heading_row = next(reader) # eat up and ignore the heading row of the data file
        for row in reader:
            athlete_id = row[0]
            athlete_name = row[1].replace("\"", "")
            athlete_name = athlete_name.replace(",", "")
            if athlete_id not in athletes:
                athletes[athlete_id] = athlete_name
                writer.writerow([athlete_id, athlete_name])

#Mapping team_id to team_name and saving it to the events.csv file
teams = {}
with open('athlete_events.csv') as original_data_file,\
        open('teams.csv', 'w', newline="\n") as teams_file:
        reader = csv.reader(original_data_file)
        writer = csv.writer(teams_file)
        heading_row = next(reader) # eat up and ignore the heading row of the data file
        for row in reader:
            team_name = row[6]
            if team_name not in teams:
                team_id = len(teams) + 1
                teams[team_name] = team_id
                writer.writerow([team_id, team_name])
                
#Mapping event_id to event_name and saving it to the events.csv file
events = {}
with open('athlete_events.csv') as original_data_file,\
        open('events.csv', 'w', newline="\n") as events_file:
        reader = csv.reader(original_data_file)
        writer = csv.writer(events_file)
        heading_row = next(reader) # eat up and ignore the heading row of the data file
        for row in reader:
            event_category = row[12]
            event_name = row[13].replace("\"", "")
            event_name = event_name.replace(",", "")
            if event_name not in events:
                event_id = len(events) + 1
                events[event_name] = event_id
                writer.writerow([event_id, event_category, event_name])

#Mapping game_id to game_year and saving it to the games.csv file
games = {}
with open('athlete_events.csv') as original_data_file,\
        open('games.csv', 'w', newline="\n") as games_file:
        reader = csv.reader(original_data_file)
        writer = csv.writer(games_file)
        heading_row = next(reader) # eat up and ignore the heading row of the data file
        for row in reader:
            game_year = row[9]
            game_season = row[10]
            game_city = row[11]
            if game_year not in games:
                game_id = len(games) + 1
                games[game_year] = game_id
                writer.writerow([game_id, game_year, game_season, game_city])

#Creating a linking_table and save into the linking_table.csv file
with open('athlete_events.csv') as original_data_file,\
        open('event_results.csv', 'w', newline="\n") as event_results_file:
        reader = csv.reader(original_data_file)
        writer = csv.writer(event_results_file)
        heading_row = next(reader) # eat up and ignore the heading row of the data file
        for row in reader:
            athlete_id = row[0]
            team_name = row[6]
            team_id = teams[team_name]
            event_name = row[13].replace("\"", "")
            event_name = event_name.replace(",", "")
            event_id = events[event_name]
            game_year = row[9]
            game_id = games[game_year]
            medal = row[14]
            writer.writerow([athlete_id, team_id, event_id, game_id, medal])


