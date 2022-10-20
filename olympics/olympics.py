'''
Author: Ali Ramazani
Software Design
10/19/2022
'''
import sys
import argparse
import psycopg2
import config
   
def get_connection():
    ''' Returns a database connection object with which you can create cursors,
        issue SQL queries, etc. This function is extremely aggressive about
        failed connections--it just prints an error message and kills the whole
        program. Sometimes that's the right choice, but it depends on your
        error-handling needs. '''
    try:
        return psycopg2.connect(database=config.database,
                                user=config.user,
                                password=config.password)
    except Exception as e:
        print(e, file=sys.stderr)
        exit()
 
def get_athletes_from_noc(noc_name):
    ''' Returns a list of the full names of all the athletes
        in the database for a given noc. '''
    athletes = []
    try:
        # Create a "cursor", which is an object with which you can iterate
        # over query results.
        connection = get_connection()
        cursor = connection.cursor()

        # Execute the query
        query = ''' SELECT DISTINCT athletes.athlete_name                                                 
                    FROM athletes, nocs, event_results                                          
                    WHERE athletes.athlete_id = event_results.athlete_id                                    
                    AND nocs.noc_abbreviation = %s                                                   
                    AND event_results.noc_id = nocs.noc_id
                    ORDER BY athletes.athlete_name'''        
        cursor.execute(query, (noc_name,))

        # Iterate over the query results to produce the list of athlete names.
        for row in cursor:
            athlete_name = row[0]
            athletes.append(f'{athlete_name}')

    except Exception as e:
        print(e, file=sys.stderr)

    connection.close()
    return athletes

def gold_medals(medal_name):
    ''' Returns a list of gold medals for all nocs in decreasing order. '''
    result = []
    try:
        # Create a "cursor", which is an object with which you can iterate
        # over query results.
        connection = get_connection()
        cursor = connection.cursor()

        # Execute the query
        query = ''' SELECT nocs.noc_abbreviation, COUNT(event_results.medal)
                    FROM nocs, event_results
                    WHERE event_results.medal = %s
                    AND nocs.noc_id = event_results.noc_id
                    GROUP BY nocs.noc_abbreviation
                    ORDER BY COUNT(event_results.medal) DESC'''        
        cursor.execute(query, (medal_name,))

        # Iterate over the query results to produce the list of gold medal count for each NOC.
        for row in cursor:
            noc = row[0]
            gold_count = [1]
            result.append(f'{noc}: {gold_count}')
            
    except Exception as e:
        print(e, file=sys.stderr)

    connection.close()
    return result

def get_athletes_from_team(team_name):
    ''' Returns a list of the full names of all the athletes
        in the database for a given team. '''
    athletes = []
    try:
        # Create a "cursor", which is an object with which you can iterate
        # over query results.
        connection = get_connection()
        cursor = connection.cursor()

        # Execute the query
        query = ''' SELECT DISTINCT athletes.athlete_name                                                 
                    FROM athletes, teams, event_results                                          
                    WHERE athletes.athlete_id = event_results.athlete_id                                    
                    AND teams.team_name = %s                                                   
                    AND event_results.team_id = teams.team_id
                    ORDER BY athletes.athlete_name'''        
        cursor.execute(query, (team_name,))

        # Iterate over the query results to produce the list of athlete names.
        for row in cursor:
            athlete_name = row[0]
            athletes.append(f'{athlete_name}')

    except Exception as e:
        print(e, file=sys.stderr)

    connection.close()
    return athletes

def main():
    #0. Print the usage statement when prompted.
    if sys.argv[1] == "--help" or sys.argv[1] == "-h":
        file = open("usage.txt")
        print(file.read())
    
    parser = argparse.ArgumentParser(add_help=False)
    parser.add_argument('-n', '--noc', type=str)
    parser.add_argument('-g', '--gold', type=str)
    parser.add_argument('-t', '--team', type=str)
    args = parser.parse_args()
    
    #1. List the names of all the athletes from a specified NOC.
    if args.noc:
        print('========== All athletes from ' + args.noc + ' ==========')
        athletes = get_athletes_from_noc(args.noc)
        for athlete in athletes:
            print(athlete)
        print()
            
    #2. List all the NOCs and the number of gold medals they have won, in decreasing order of the number of gold medals.
    elif args.gold:
        print('========== Gold medals for all nocs ==========')
        medals = gold_medals(args.gold)
        for medal in medals:
            print(medal)
        print()
            
    #3. List the names of all the athletes from a specified team.
    elif args.team:
        print('========== All athletes from ' + args.team + ' ==========')
        athletes = get_athletes_from_team(args.team)
        for athlete in athletes:
            print(athlete)
        print()
    
if __name__ == '__main__':
    main()
    