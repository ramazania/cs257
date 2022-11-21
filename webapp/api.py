'''Authors: Zack Dong, Muno Siyakurima, and Ali Ramazani''' 

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

#Returns text file with all the api endpoints.
@api.route('/help')
def get_help():
    return flask.render_template('api-help.txt')

#Returns a list of players for a given tournament id/year and team name. 
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
    

#Returns a JSON list of teams that played in the given tournament
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
    

#Returns a JSON list of the awards for a given tournament
@api.route('/awards/<tournament_id>')
def get_statistics(tournament_id):
    query = '''SELECT awards.award_name, awards.last_name, awards.first_name, squads.team_name
            FROM awards, squads
            WHERE awards.tournament_id = %s
            AND squads.tournament_id = %s 
            AND awards.player_id = squads.player_id'''
    awards_list = []
    try:
        connection = get_connection()
        cursor = connection.cursor()
        cursor.execute(query, (tournament_id, tournament_id))
        for row in cursor:
            award = {'award_name' : row[0],
                    'last_name':row[1],
                    'first_name': row[2],
                    'team_name': row[3]}
            awards_list.append(award)
        cursor.close()
        connection.close()
    except Exception as e:
        print(e, file=sys.stderr)

    return json.dumps(awards_list)

