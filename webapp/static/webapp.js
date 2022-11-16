
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
        var tableBody = '<tr><th>' + 'Teams in the' + parameter + '</th></tr>';
        tableBody += '<tr>';
        for (var k = 0; k < tournament_teams_list.length; k++) {
            
            tableBody += '<td>' + tournament_teams_list[k]['team_name'] + '</td>'
            
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