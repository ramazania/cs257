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
    var element = document.getElementById('team_button');
    element.onclick = onAuthorsButtonClicked;
}

// Returns the base URL of the API, onto which endpoint components can be appended.
function getAPIBaseURL() {
    var baseURL = window.location.protocol + '//' + window.location.hostname + ':' + window.location.port + '/api';
    return baseURL;
}

function onAuthorsButtonClicked(parameter) {
    var url = getAPIBaseURL() + '/getTournament/' + parameter;

    // Send the request to the Books API /authors/ endpoint
    fetch(url, {method: 'get'})

    // When the results come back, transform them from a JSON string into
    // a Javascript object (in this case, a list of author dictionaries).
    .then((response) => response.json())

    // Once you have your list of author dictionaries, use it to build
    // an HTML table displaying the author names and lifespan.
    .then(function(teamList) {
        // Build the table body.
        var tableBody = '';
        for (var k = 0; k < teamList.length; k++) {
            tableBody += '<tr>';

            tableBody += '<td><a onclick="getAuthor(' + teamList[k]['id'] + ",'"
                            + teamList[k]['team_name'] + "')\">"
                            + teamList[k]['team_name'] + '</a></td>';        
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

function getTeam(tournament_id, team_name) {
    // Very similar pattern to onAuthorsButtonClicked, so I'm not
    // repeating those comments here. Read through this code
    // and see if it makes sense to you.
    // var url = getAPIBaseURL() + '/books/author/' + tournament_id;

    // fetch(url, {method: 'get'})

    // .then((response) => response.json())

    // .then(function(booksList) {
    //     var tableBody = '<tr><th>' + team_name + '</th></tr>';
    //     for (var k = 0; k < booksList.length; k++) {
    //         tableBody += '<tr>';
    //         tableBody += '<td>' + booksList[k]['title'] + '</td>';
    //         tableBody += '<td>' + booksList[k]['publication_year'] + '</td>';
    //         tableBody += '</tr>';
    //     }
    //     var resultsTableElement = document.getElementById('results_table');
    //     if (resultsTableElement) {
    //         resultsTableElement.innerHTML = tableBody;
    //     }
    // })
    pass

    .catch(function(error) {
        console.log(error);
    });
}

