// Authors: Muno Siyakurima, Zack Dong, Ali Ramazani
// CS 257: Software Design 
// Fall 2022

window.onload = initialize;

function initialize() {

}

// Returns the base URL of the API, onto which endpoint components can be appended.
function getAPIBaseURL() {
    var baseURL = window.location.protocol + '//' + window.location.hostname + ':' + window.location.port + '/api';
    return baseURL;
}

function changedata(tournament_id){
    var url2 = getAPIBaseURL() + '/getTournament/' + tournament_id;

    fetch(url2, {method: 'get'})

    .then((response) => response.json())
    
    .then(function(tournament_teams_list) {
        
        var table_name = tournament_id.substring(3) + " World Cup Teams";
        var tableBody = '<caption>' + table_name + '</caption> <tr>';
        for (var k = 0; k<1;k++){
            tableBody += '</tr><tr><td><button class="getTeam" onclick="getAwards('+ "'" + tournament_teams_list[k]['tournament_id'] + "')\">" + 'GET AWARDS' + '</button></td>';
        }
        count = -1;
        for (var k = 0; k < tournament_teams_list.length; k++) {
            count += 1;
            if (count % 4 ==0) {
              tableBody +=  '</tr> <tr>';
            }
            tableBody += '<td><button onclick="getTeam('+ "'" + tournament_teams_list[k]['tournament_id'] + "'," + "'" + tournament_teams_list[k]['team_name'] +"')\">"
                        + tournament_teams_list[k]['team_name'] + '</button></td>';   
        }
        tableBody += '</tr>';
        // Put the table body we just built inside the table that's already on the page.
        var awardstable = document.getElementById('awards_table');
        awardstable.innerHTML = "";
        var squadtable = document.getElementById('squads_table');
        squadtable.innerHTML = "";
        var resultsTableElement = document.getElementById('teams_table');
        if (resultsTableElement) {
            resultsTableElement.innerHTML = tableBody;
        }
    })
    .catch(function(error) {
        console.log(error);
    });
}

function getTeam(tournamentId, teamName){
    var url = getAPIBaseURL() + '/teams/' + tournamentId + '/' + teamName;
    
    fetch(url, {method: 'get'})

    .then((response) => response.json())

    .then(function(playerList) {
        // Build the table body.
        var year = tournamentId.substring(3);
        var tableBody = '<br> <caption>' + teamName + ' ' + year + ' Squad </caption> <tr><th> Player Name </th><th> Shirt Number </th> <th> Position </th> </tr> '; 

        for (var k = 0; k < playerList.length; k++) {
            tableBody += '<tr>' ;
            tableBody += '<td>'
                            + playerList[k]['first_name'] + ' ' + playerList[k]['last_name'] + '</td> <td>' 
                            + playerList[k]['shirt_number'] + '</td> <td>' + playerList[k]['position'] + '</td>';
            tableBody += '</tr>';
        }
        // Put the table body we just built inside the table that's already on the page.
        var resultsTableElement = document.getElementById('squads_table');
        if (resultsTableElement) {
            resultsTableElement.innerHTML = tableBody;
        }
    })
    .catch(function(error) {
        console.log(error);
    });
}


function getAwards(tournamentID){
    var url = getAPIBaseURL() + '/awards/' + tournamentID;
    
    fetch(url, {method: 'get'})

    .then((response) => response.json())

    .then(function(awards_list) {
        tournament_year = tournamentID.substring(3) + ' World Cup Award Winners'
        var awardsTableBody = '<caption> ' + tournament_year + '</caption> <tr><th> Award </th><th> Player </th> <th> Country </th>';
        for (var k = 0; k < awards_list.length; k++) {
            awardsTableBody += '<tr> <td>' 
                            + awards_list[k]['award_name'] + '</td> <td> '
                            + awards_list[k]['first_name'] + ' '
                            + awards_list[k]['last_name'] + '</td> <td>'
                            + awards_list[k]['team_name'] + '</td> </tr>'
        }
        // Put the table body we just built inside the table that's already on the page.
        var statsTableElement = document.getElementById('awards_table');
        if (statsTableElement) {
            statsTableElement.innerHTML = awardsTableBody;
        }
    })
    // Log the error if anything went wrong during the fetch.
    .catch(function(error) {
        console.log(error);
    });

}