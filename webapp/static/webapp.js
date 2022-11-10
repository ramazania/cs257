window.onload = initialize;

function initialize() {
    var element = document.getElementById('tournaments_button');
    element.onclick = onTournamentsButtonClicked;
}

// Returns the base URL of the API, onto which endpoint components can be appended.
function getAPIBaseURL() {
    var baseURL = window.location.protocol + '//' + window.location.hostname + ':' + window.location.port + '/api';
    return baseURL;
}

function onTournamentsButtonClicked() {
    var url = getAPIBaseURL() + '/tournaments/';

    // Send the request to the Tournament API /tournaments/ endpoint
    fetch(url, {method: 'get'})

    // When the results come back, transform them from a JSON string into
    // a Javascript object (in this case, a list of author dictionaries).
    .then((response) => response.json())

    // Once you have your list of author dictionaries, use it to build
    // an HTML table displaying the author names and lifespan.
    .then(function(tournaments_list) {
        // Build the table body.
        var tableBody = '';
        for (var k = 0; k < tournaments_list.length; k++) {
            tableBody += '<tr>';
            tableBody += '<td>' 
                            + tournaments_list[k]['id'] + ' '
                            + tournaments_list[k]['tournament_name'] + ' ' + tournaments_list[k]['year'] +
                            + tournaments_list[k]['host_country'] + ', '
                            + tournaments_list[k]['winner'] + '</td>';
            tableBody += '</td>';
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
