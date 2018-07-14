import json
from flask import Flask,request,make_response,render_template

app = Flask(__name__)


@app.route('/')
def hello_world():
    return 'Hello World!' + request.path
@app.route('/hello')
def hello():
    return 'sachin..!!' +request.path
@app.route('/hello1')
def hello1():
    return 'sachin singh ..!!' +request.path
@app.route('/hello2')
@app.route('/hello2/<fromPagename>')
def hello2(fromPagename=None):
    return render_template('homepage.html',name=fromPagename)
@app.route('/test/')
def test():
    return 'Request Path is '+ request.path
@app.route('/data',methods=['GET'])
def show_data():
    return "i m going to display data"
@app.route('/data',methods=['post'])
def handle_data():
    return "i m going to handle data using post"
@app.route('/user/<username>')
def greet_user(username):
    return 'Hello '+ username
@app.route("/json")
def get_image():
    response=make_response(json.dumps({"Sachin & Babi is a fashion-design house based in New York City and known for their unique embroideries. It was founded in 2009 by Indian-born husband and wife ... ":
                                           "The latest Tweets from Sachin & Babi (@SachinandBabi). The Art of Dressing up. New York, NY "}))
    response.mimetype="application/json"
    return response
@app.route("/error")
def error_page():
    response = make_response("Error Page")
    response.status_code=404
    return response
@app.route('/posts')
@app.route("/posts/page/<int:page_nb>")
def show_posts(page_nb=1):
    first_msg=1+50*page_nb
    last_msg =first_msg +49
    return "Messages  {} to {} "+str(page_nb)  #.format(first_msg, last_msg)

if __name__ == '__main__':
    app.run()
