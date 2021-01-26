import os

from flask import Flask

app = Flask(__name__)
app.config.from_object("project.config.Config")

@app.route("/")
def hello():
    return 'Hello, World!'