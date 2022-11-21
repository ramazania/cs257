'''
    app.py
    Zack Dong, Ali Ramazani, Muno Siyakurima

    A tiny Flask application that provides a website with an accompanying
    API (which is also tiny) to support that website.

'''
import sys
import flask
import api

########### Initializing Flask ###########
# Note that this stuff has to be up here at the top, because otherwise
# the @app.route lines would raise a "name not defined" exception.
app = flask.Flask(__name__, static_folder='static', template_folder='templates')
app.register_blueprint(api.api, url_prefix='/api')


########### The website routes ###########
@app.route('/') 
def get_main_page():
    ''' This is the only route intended for human users '''
    return flask.render_template('index.html')

@app.route('/mockup1.html') 
def get_mockup1():
    ''' This is the only route intended for human users '''
    return flask.render_template('mockups/mockup1.html')

@app.route('/mockup2.html') 
def get_mockup2():
    ''' This is the only route intended for human users '''
    return flask.render_template('mockups/mockup2.html')

@app.route('/mockup3.html') 
def get_mockup3():
    ''' This is the only route intended for human users '''
    return flask.render_template('mockups/mockup3.html')

@app.route('/mockup4.html') 
def get_team_page():
    ''' This is the only route intended for human users '''
    return flask.render_template('mockups/mockup4.html')


########### Running the website server ###########
if __name__ == '__main__':
    if len(sys.argv) != 3:
        print('Usage: {0} host port'.format(sys.argv[0]), file=sys.stderr)
        exit()

    host = sys.argv[1]
    port = int(sys.argv[2])
    app.run(host=host, port=port, debug=True)

