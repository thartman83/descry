from flask import Flask

app = Flask(__name__)

# testing
@route('/')
def hello_whale():
    return "Hello, Whale"

if __name__ == "__main__":
    app.run(debug=True, host='0.0.0.0')
