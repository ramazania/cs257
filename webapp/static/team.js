
window.onload = initialize;

function initialize() {
    var element = document.getElementById('squad_button');
    element.onclick = onSquadButtonClicked;
}

// Returns the base URL of the API, onto which endpoint components can be appended.
function getAPIBaseURL() {
    var baseURL = window.location.protocol + '//' + window.location.hostname + ':' + window.location.port + '/api';
    return baseURL;
}

function onSquadButtonClicked(tournament_id, team_name) {
    var url = getAPIBaseURL() + '/teams/' + tournament_id + "/" + team_name;


    // Send the request to the Books API /authors/ endpoint
    fetch(url, {method: 'get'})

    // When the results come back, transform them from a JSON string into
    // a Javascript object (in this case, a list of author dictionaries).
    .then((response) => response.json())

    // Once you have your list of author dictionaries, use it to build
    // an HTML table displaying the author names and lifespan.
    .then(function(playerList) {
        // Build the table body.
        var tableBody = '';
        for (var k = 0; k < playerList.length; k++) {
            tableBody += '<tr>';
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

    // Log the error if anything went wrong during the fetch.
    .catch(function(error) {
        console.log(error);
    });
}

// function getSquad(tournament_id, team_name) {
//     // Very similar pattern to onAuthorsButtonClicked, so I'm not
//     // repeating those comments here. Read through this code
//     // and see if it makes sense to you.
//     var url = getAPIBaseURL() + '/teams/' + tournament_id + '/' + team_name;

//     fetch(url, {method: 'get'})

//     .then((response) => response.json())

//     .then(function(playerList) {
//         var tableBody = '<tr><th>' + playerName + '</th></tr>';
//         for (var k = 0; k < booksList.length; k++) {
//             tableBody += '<tr>';
//             tableBody += '<td>' + booksList[k]['title'] + '</td>';
//             tableBody += '<td>' + booksList[k]['publication_year'] + '</td>';
//             tableBody += '</tr>';
//         }
//         var resultsTableElement = document.getElementById('results_table');
//         if (resultsTableElement) {
//             resultsTableElement.innerHTML = tableBody;
//         }
//     })

//     .catch(function(error) {
//         console.log(error);
//     });
// }
