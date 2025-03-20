from flask import Flask

app = Flask(__name__)

@app.route('/')
def home():
    return "This is version 1 of the app"

if __name__ == '__main__':
    app.run(debug=True)
