/*
 * books.js
 * Jeff Ondich, 27 April 2016
 * Updated, 5 November 2020
 *
 * A little bit of Javascript showing one small example of AJAX
 * within the "books and authors" sample for Carleton CS257.
 *
 * This example uses a very simple-minded approach to Javascript
 * program structure. We'll talk more about this after you get
 * a feel for some Javascript basics.
 */

window.onload = initialize;

function initialize() {
    // var element = document.getElementById('team_button');
    // element.onclick = getTeam; 
}

// Returns the base URL of the API, onto which endpoint components can be appended.
function getAPIBaseURL() {
    var baseURL = window.location.protocol + '//' + window.location.hostname + ':' + window.location.port + '/api';
    return baseURL;
}

function changedata(parameter) {
    var url = getAPIBaseURL() + '/getTournament/' + parameter;

    // Send the request to the Books API /authors/ endpoint
    fetch(url, {method: 'get'})

    // When the results come back, transform them from a JSON string into
    // a Javascript object (in this case, a list of author dictionaries).
    .then((response) => response.json())

    // Once you have your list of author dictionaries, use it to build
    // an HTML table displaying the author names and lifespan.
    .then(function(teams_list) {
        // Build the table body.
        var tableBody = '';
        for (var k = 0; k < teams_list.length; k++) {
            tableBody += '<tr>';
            
            tableBody += '<td><a onclick="getTeam(' + teams_list[k]['tournament_id'] + ",'"
                            + teams_list[k]['team_name'] + "')\">"
                            + teams_list[k]['team_name'] + '</a></td>';
            tableBody += '</tr>';   
            }
            

        // Put the table body we just built inside the table that's already on the page.
        var resultsTableElement = document.getElementById('s_table');
        if (resultsTableElement) {
            resultsTableElement.innerHTML = tableBody;
        }
    })

    // Log the error if anything went wrong during the fetch.
    .catch(function(error) {
        console.log(error);
    });
}

function getTeam(tournament_id, team_name) {
    // Very similar pattern to onAuthorsButtonClicked, so I'm not
    // repeating those comments here. Read through this code
    // and see if it makes sense to you.
    var url = getAPIBaseURL() + '/teams/' + tournament_id + '/' + team_name

    fetch(url, {method: 'get'})

    .then((response) => response.json())

    .then(function(players_list) {
        var tableBody = '<tr><th>' + team_name + '</th></tr>';
        for (var k = 0; k < players_list.length; k++) {
            tableBody += '<tr>';
            tableBody += '<td>' + players_list[k]['award_name'] + '</td>';
            tableBody += '<td>' + players_list[k]['last_name'] + '</td>';
            tableBody += '</tr>';
        }
        var resultsTableElement = document.getElementById('s_table');
        if (resultsTableElement) {
            resultsTableElement.innerHTML = tableBody;
        }
    })

    .catch(function(error) {
        console.log(error);
    });
}
