'''
Ali Ramazani
Software Design
Fall 2022

Note: You can get the athlete_events.csv source file from here:
https://www.kaggle.com/heesoo37/120-years-of-olympic-history-athletes-and-results
'''
from asyncore import write
import csv

#Mapping athlete_id to athlete_name and saving it to the athlete.csv file
athletes = {}
with open('athlete_events.csv') as original_data_file,\
        open('athletes.csv', 'w') as athletes_file:
        reader = csv.reader(original_data_file)
        writer = csv.writer(athletes_file)
        heading_row = next(reader) # eat up and ignore the heading row of the data file
        for row in reader:
            athlete_id = row[0]
            athlete_name = row[1]
            if athlete_id not in athletes:
                athletes[athlete_id] = athlete_name
                writer.writerow([athlete_id, athlete_name])
                

#Mapping event_id to event_category and event_name and saving it to the events.csv file
events = {}
with open('athlete_events.csv') as original_data_file,\
        open('events.csv', 'w') as events_file:
        reader = csv.reader(original_data_file)
        writer = csv.writer(events_file)
        heading_row = next(reader) # eat up and ignore the heading row of the data file
        for row in reader:
            event_category = row[12]
            event_name = row[13]
            if event_name not in events:
                event_id = len(events) + 1
                events[event_name] = event_id
                writer.writerow([event_id, event_category, event_name])

#Mapping game_id to game_year, game_season, and game_city and saving it to the games.csv file
games = {}
with open('athlete_events.csv') as original_data_file,\
        open('games.csv', 'w') as games_file:
        reader = csv.reader(original_data_file)
        writer = csv.writer(games_file)
        heading_row = next(reader) # eat up and ignore the heading row of the data file
        for row in reader:
            game_id = row[0]
            game_year = row[9]
            game_season = row[10]
            game_city = row[11]
            if game_id not in games:
                games[game_id] = game_year
                writer.writerow([game_id, game_year, game_season, game_city])

#Mapping the ids together to make a linking_table and save into the linking_table.csv file
with open('athlete_events.csv') as original_data_file,\
        open('athlete_event_medal.csv', 'w') as ahtlete_event_medal_file:
        reader = csv.reader(original_data_file)
        writer = csv.writer(ahtlete_event_medal_file)
        heading_row = next(reader) # eat up and ignore the heading row of the data file
        for row in reader:
            athlete_id = row[0]
            event_name = row[13]
            event_id = events[event_name]
            medal = row[14]
            writer.writerow([athlete_id, event_id, medal])

#Mapping noc_id to noc_abbriviation and noc_name
nocs = {}            
with open('noc_regions.csv') as original_data_file,\
        open('nocs.csv', 'w') as nocs_file:
        reader = csv.reader(original_data_file)
        writer = csv.writer(nocs_file)
        heading_row = next(reader) # eat up and ignore the heading row of the data file
        for row in reader:
            noc_abbreviation = row[0]
            noc_name = row[1]
            if noc_abbreviation not in nocs:
                noc_id = len(nocs) + 1
                nocs[noc_id] = noc_abbreviation
                nocs[noc_id] = noc_name
                writer.writerow([noc_id, noc_abbreviation, noc_name])