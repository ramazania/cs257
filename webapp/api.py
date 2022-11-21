'''authors: Zack Dong, Muno Siyakurima, and Ali Ramazani''' 

import sys
import flask
import json
import config 
import psycopg2

api = flask.Blueprint('api', __name__)

def get_connection():
    ''' Returns a connection to the database described in the
        config module. May raise an exception as described in the
        documentation for psycopg2.connect. '''
    return psycopg2.connect(database=config.database,
                            user=config.user,
                            password=config.password)

#Returns the home page for the website
@api.route('/')
def get_main_page():
    return flask.render_template('index.html')

#Returns the page with all the api endpoints.
@api.route('/help')
def get_help():
    return flask.render_template('help.html')

# @api.route('/tournaments/')
# def get_all_tournaments():
#     ''' Returns a list of all the tournament years in our database. 
#         http://.../tournaments
#         Returns an empty list if there's any database failure.
#     '''
#     query = '''SELECT id, tournament_name, year, host_country, winner
#             FROM tournaments '''

#     tournaments_list = []
#     try:
#         connection = get_connection()
#         cursor = connection.cursor()
#         cursor.execute(query)
#         for row in cursor:
#             tournament = {'id':row[0],
#                       'tournament_name':row[1],
#                       'year':row[2],
#                       'host_country':row[3],
#                       'winner':row[4]}
#             tournaments_list.append(tournament)
#         cursor.close()
#         connection.close()
#     except Exception as e:
#         print(e, file=sys.stderr)

#     return json.dumps(tournaments_list)

#Returns a list of players for a given tournament year and team name. 
@api.route('/teams/<tournament_id>/<team_name>')
def get_team(tournament_id, team_name):

    query = '''SELECT last_name, first_name, shirt_number, position
            FROM squads
            WHERE squads.tournament_id = %s
            AND squads.team_name = %s '''
    players_list = []

    try:
        connection = get_connection()
        cursor = connection.cursor()
        cursor.execute(query, (tournament_id,team_name,))
        for row in cursor:
            player = {'last_name':row[0],
                      'first_name':row[1],
                      'shirt_number':row[2],
                      'position': row[3]}
            players_list.append(player)
        cursor.close()
        connection.close()
    except Exception as e:
        print(e, file=sys.stderr)

    return json.dumps(players_list)
    

#Returns a list of teams that played in the given tournament
@api.route('/getTournament/<tournament_id>')
def get_tournament(tournament_id):
    ''' Returns the teams from a specific tournament year in our database. 
        e.g http://.../tournaments/WC-2018
        Returns an empty list if there's any database failure.
    '''
    query = '''SELECT tournament_id, team_id, team_name
            FROM qualified_teams
            WHERE qualified_teams.tournament_id = %s'''
    
    teams_list = []
    
    try:
        connection = get_connection()
        cursor = connection.cursor()
        cursor.execute(query, (tournament_id,))
        for row in cursor:
            team = {'tournament_id':row[0],
                    'team_id' : row[1],
                    'team_name':row[2]}
            teams_list.append(team)
        cursor.close()
        connection.close()
    except Exception as e:
        print(e, file=sys.stderr)

    return json.dumps(teams_list)
    
    

#Returns the awards for a given tournament
@api.route('/awards/<tournament_id>')
def get_statistics(tournament_id):
    
    query = '''SELECT award_name, last_name, first_name
            FROM awards
            WHERE awards.tournament_id = %s'''
    
    awards_list = []
    try:
        connection = get_connection()
        cursor = connection.cursor()
        cursor.execute(query, (tournament_id,))
        for row in cursor:
            award = {'award_name' : row[0],
                    'last_name':row[1],
                    'first_name': row[2]}
            awards_list.append(award)
        cursor.close()
        connection.close()
    except Exception as e:
        print(e, file=sys.stderr)


    return json.dumps(awards_list)

    
@api.route('/teams')
def get_all_teams():
    return flask.render_template('team.html')