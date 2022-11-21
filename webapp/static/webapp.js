
window.onload = initialize;

function initialize() {
    // loadFirstList();
    var element = document.getElementById('tournaments_button');
    // var element = document.getElementById('particular_tournaments_button')
    element.onclick = onTournamentsButtonClicked;
    // element.onclick = onParticularTournamentButtonClicked;
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
        // <button onclick="getStats(+ parameter)">GET statistic</button>
        var table_name = parameter.substring(3) + " World Cup Teams";
        var tableBody = '<caption>' + table_name + '</caption> <tr>';
        count = -1;
        for (var k = 0; k < tournament_teams_list.length; k++) {
            count += 1;
            if (count % 4 ==0) {
              tableBody +=  '</tr> <tr>';
            }
            tableBody += '<td><a onclick="getTeam()">'
                        + tournament_teams_list[k]['team_name'] + '</a></td>';

        }
        tableBody +='</tr><td><button onclick="getStats('+ parameter + "')\">" + 'GET statistic' + '</button></td>';
        tableBody += '</tr>';
        // Put the table body we just built inside the table that's already on the page.
        var resultsTableElement = document.getElementById('s_table');
        if (resultsTableElement) {
            resultsTableElement.innerHTML = tableBody;
        }
        // var statsBody = '<tr>';
        // for (var k = 0; k < 8; k++) {
        //     statsBody += '<td>' 
        //                     + tournament_teams_list[k]['award_name'] + ' '
        //                     + tournament_teams_list[k]['last_name'] + ' '
        //                     + tournament_teams_list[k]['first_name'] + ' '
        //     statsBody += '</td> </tr> <tr>';
        // }
        // statsBody += '</tr>';
        // // Put the table body we just built inside the table that's already on the page.
        // var statsTableElement = document.getElementById('statistics_table');
        // if (statsTableElement) {
        //     statsTableElement.innerHTML = statsBody;
        // }
    })

//     .then(function(statistics_list) {
//     var statsBody = '<tr>';
//     for (var k = 0; k < statistics_list.length; k++) {
//         statsBody += '<td>' 
//                         + statistics_list[k]['award_name'] + ' '
//                         + statistics_list[k]['last_name'] + ' '
//                         + statistics_list[k]['first_name'] + ' '
//         statsBody += '</td> </tr> <tr>';
//     }
//     statsBody += '</tr>';
//     // Put the table body we just built inside the table that's already on the page.
//     var statsTableElement = document.getElementById('statistics_table');
//     if (statsTableElement) {
//         statsTableElement.innerHTML = statsBody;
//     }
// })
    

    .catch(function(error) {
        console.log(error);
    });

}

function getTeam(tournamentID){
    var url = getAPIBaseURL() + '/stats/' + tournamentID;

    fetch(url, {method: 'get'})

    .then((response) => response.json())


    .then(function(stats_list) { 
        var statsBody = '';
        for (var k = 0; k < 8; k++) {
            statsBody = '<tr>';
            statsBody += '<td>' 
                            + stats_list[k]['award_name'] + ' '
                            + stats_list[k]['last_name'] + ' '
                            + stats_list[k]['first_name'] + ' '
            statsBody += '</td> </tr> <tr>';
        }
        statsBody += '</tr>';
        // Put the table body we just built inside the table that's already on the page.
        var statsTableElement = document.getElementById('statistics_table');
        if (statsTableElement) {
            statsTableElement.innerHTML = statsBody;
        }
    })

    .catch(function(error) {
        console.log(error);
    });
    
}

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