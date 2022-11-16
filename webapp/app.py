'''
    app.py
    Zack Dong, Ali Ramazani, Muno Siyakurima

    A tiny Flask application that provides a website with an accompanying
    API (which is also tiny) to support that website.

    Your website and API will be more complex.
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
# (As you can see, there's not much of a website in this example.)
@app.route('/') 
def get_main_page():
    ''' This is the only route intended for human users '''
    return flask.render_template('index.html')

@app.route('/help')
def get_help():
    return flask.render_template('help.html')

@app.route('/mockup2.html') 
def get_mockup2():
    ''' This is the only route intended for human users '''
    return flask.render_template('mockup2.html')

@app.route('/mockup3.html') 
def get_mockup3():
    ''' This is the only route intended for human users '''
    return flask.render_template('mockup3.html')



########### Running the website server ###########
if __name__ == '__main__':
    if len(sys.argv) != 3:
        print('Usage: {0} host port'.format(sys.argv[0]), file=sys.stderr)
        exit()

    host = sys.argv[1]
    port = int(sys.argv[2])
    app.run(host=host, port=port, debug=True)

