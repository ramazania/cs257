AUTHORS: Zack Dong, Muno Siyakurima, Ali Ramazani

DATA: FIFA World Cup tournaments from 1930-2018, which includes teams, players, tournament stats, etc...

DATA License: The copyright for the original structure and organization of the Fjelstul World Cup Database
              and for all of the documentation and replication code for the database is owned by Joshua C. Fjelstul, Ph.D.

DATA Access: you can get the data here: https://github.com/jfjelstul/worldcup and click on data-csv. We also included the data-csv in our repository. 

STATUS:
    FEATURES CURRENTLY WORKING:
    - The side bar displayes all the tournament years 
    - The user can click on a tournament year and get a list of teams that played in that tournament
    - The user can click on a team to get a list of players, which includes their shirt number and position
    - The Get Awards button displays a table of awards for the selected tournament year
    - The data are cleared from the page when the user clicks on a different tournament year from the side bar
    - The title of the main page is clickable and reloads to a fresh homepage

    FEATURES NOT YET WORKING:
    - We couldn't position the tables all the way to right and left side of the main page to use the free space

NOTES: When you click on a team, scroll down to see the results. The players from 1930-1950 did not have shirt numbers.
       Also, the api-help.txt is inside the templates because it wouldn't work when I moved it outside of templates folder.
       Jeff, I have your info in config.py, but it's commented. 