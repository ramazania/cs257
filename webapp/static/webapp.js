
window.onload = initialize;

function initialize() {
   
}

// Returns the base URL of the API, onto which endpoint components can be appended.
function getAPIBaseURL() {
    var baseURL = window.location.protocol + '//' + window.location.hostname + ':' + window.location.port + '/api';
    return baseURL;
}


function changedata(parameter){

    var url2 = getAPIBaseURL() + '/getTournament/' + parameter;

    fetch(url2, {method: 'get'})

    .then((response) => response.json())

    .then(function(tournament_teams_list) {
        
        var table_name = parameter.substring(3) + " World Cup Teams";
        var tableBody = '<caption>' + table_name + '</caption> <tr>';
        // tableBody += '<td><button onclick="get>'+ GETAWARDS + '</td>'
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
        var resultsTableElement = document.getElementById('s_table');
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
        var tableBody = '<br> <caption>' + teamName + ' Squad </caption> <tr><th> Player Name </th><th> Shirt Number </th> <th> Position </th> </tr> '; 

        for (var k = 0; k < playerList.length; k++) {
            tableBody += '<tr>' ;
            tableBody += '<td>'
                            + playerList[k]['first_name'] + ' ' + playerList[k]['last_name'] + '</td> <td>' 
                            + playerList[k]['shirt_number'] + '</td> <td>' + playerList[k]['position'] + '</td>';
            tableBody += '</tr>';
        }

        // Put the table body we just built inside the table that's already on the page.
        var resultsTableElement = document.getElementById('results_table');
        if (resultsTableElement) {
            resultsTableElement.innerHTML = tableBody;
        }
    })


    .catch(function(error) {
        console.log(error);
    });
    
}



 // .then(function(stats_list) { 
    //     var statsBody = '';
    //     for (var k = 0; k < 8; k++) {
    //         statsBody = '<tr>';
    //         statsBody += '<td>' 
    //                         + stats_list[k]['award_name'] + ' '
    //                         + stats_list[k]['last_name'] + ' '
    //                         + stats_list[k]['first_name'] + ' '
    //         statsBody += '</td> </tr> <tr>';
    //     }
    //     statsBody += '</tr>';
    
    
// function changedata(parameter){

//     var url2 = getAPIBaseURL() + '/awards/' + parameter;

//     fetch(url2, {method: 'get'})

//     .then((response) => response.json())

//     .then(function(awards_list) {

//     var statsBody = '<tr>';
//         for (var k = 0; k < 8; k++) {
//             statsBody += '<td>' 
//                             + awards_list[k]['award_name'] + ' '
//                             + awards_list[k]['last_name'] + ' '
//                             + awards_list[k]['first_name'] + ' '
//             statsBody += '</td> </tr> <tr>';
//         }
//         statsBody += '</tr>';
//         // Put the table body we just built inside the table that's already on the page.
//         var statsTableElement = document.getElementById('statistics_table');
//         if (statsTableElement) {
//             statsTableElement.innerHTML = statsBody;
//         }
    
//     })

//     .catch(function(error) {
//         console.log(error);
//     });


// window.onload = initialize;

// function initialize() {
//     // loadFirstList();
//     var element = document.getElementById('tournaments_button');
//     // var element = document.getElementById('particular_tournaments_button')
//     element.onclick = onTournamentsButtonClicked;
//     // element.onclick = onParticularTournamentButtonClicked;
// }

// // Returns the base URL of the API, onto which endpoint components can be appended.
// function getAPIBaseURL() {
//     var baseURL = window.location.protocol + '//' + window.location.hostname + ':' + window.location.port + '/api';
//     return baseURL;
// }



//     .then(function(statistics_list) {
//         var stats_TableBody = '';
//         for (var k = 0; k < teams_list.length; k++) {
//             var statistic = statistics_list[k];
//             tableBody += '<td>' 
//                             + statistics_list[k]['award_name'] + ' '
//                             + statistics_list[k]['last_name'] + ' '
//                             + statistics_list[k]['first_name'] + ' '
//             tableBody += '</tr>';
//         }

//         // Put the table body we just built inside the table that's already on the page.
//         var statsTableElement = document.getElementById('statistics_table');
//         if (statsTableElement) {
//             statsTableElement.innerHTML = stats_TableBody;
//         }
//     })

//     // Log the error if anything went wrong during the fetch.
//     .catch(function(error) {
//         console.log(error);
//     }));

//     function changedata(parameter){
//         tournament_id = parameter;
        
//     }
// }