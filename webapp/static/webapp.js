window.onload = initialize;

function initialize() {
    loadFirstList();
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
        var tableBody = '';
        for (var k = 0; k < tournaments_list.length; k++) {
            var tournament = tournaments_list[k];
            tableBody += '<td>' 
                            + tournaments_list[k]['id'] + ' '
                            + tournaments_list[k]['tournament_name'] + ' ' 
                            + tournaments_list[k]['year'] + ' '
                            + tournaments_list[k]['host_country'] + ' '
                            + tournaments_list[k]['winner'];
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

// --------------------------------------------------------------- Zack Javascript Code ----------------------------------------------//

function loadFirstList() {
    var firstList = document.getElementById('first-list');
    if (firstList) {
        // Load some <li> elements into the list. You could also
        // hard-code these into the HTML or obtain them from an API.
        var listBody = '<li>1930</li>\n<li>1934</li>\n<li>1938</li>\n<li>1950</li>\n<li>1954</li>\n<li>1958</li>\n<li>1962</li>\n<li>1966</li>\n<li>1970</li>\n<li>1974</li>\n<li>1978</li>\n<li>1982</li>\n<li>1986</li>\n<li>1990</li>\n<li>1994</li>\n<li>1998</li>\n<li>2002</li>\n<li>2006</li>\n<li>2010</li>\n<li>2014</li>\n<li>2018</li>\n<li>2022</li>';
        firstList.innerHTML = listBody;
        
        // Give the <li> elements a click handler.
        for (var k=0; k < firstList.children.length; k++) {
            var child = firstList.children[k];
            child.onclick = function(e) {
                updateSelection(firstList, this); // See updateSelection and the CSS for .selected
                updateResults();
            }
        }
    }
}

function updateResults() {
    var resultsElement = document.getElementById('results');
    if (resultsElement) {
        var firstSelection = '';
        var firstListElement = document.getElementById('first-list');
        if (firstListElement) {
            var selectedListItem = getSelectedListItem(firstListElement);
            if (selectedListItem) {
                firstSelection = selectedListItem.innerHTML;
            }
        }

        resultsElement.innerHTML = 'First selection: ' + firstSelection + '<br>\n'
                                 + 'Second selection: ' + secondSelection + '<br>\n'
                                 + 'Third selection: ' + thirdSelection + '<br>\n';
    }
}

//////////// Utility functions ////////////

function clearList(listElement) {
    listElement.innerHTML = '';
}

function updateSelection(listElement, listItemToSelect) {
    // Assuming listElement is a <ul> or <ol>, this function will mark
    // listItemToSelect with class="selected", and ensure that no other
    // <li> elements have class="selected".
    for (var k=0; k < listElement.children.length; k++) {
        listElement.children[k].classList.remove('selected');
    }
    listItemToSelect.classList.add('selected');
}

function getSelectedListItem(listElement) {
    var selection = null;
    for (var k=0; k < listElement.children.length; k++) {
        if (listElement.children[k].classList.contains('selected')) {
            selection = listElement.children[k];
            break;
        }
    }
    return selection;
}