#!/usr/bin/env python3
# Ben Payne
# Physics Derivation Graph
# https://allofphysics.com
# Creative Commons Attribution 4.0 International License
# https://creativecommons.org/licenses/by/4.0/

from flask import Flask, render_template

web_app = Flask(__name__)

@web_app.route('/page1', methods=['GET', 'POST'])
def index():
    return render_template("hello.html")

if __name__ == '__main__':
    web_app.run(debug=True)
