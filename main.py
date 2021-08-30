import requests
import json
from flask import Flask, render_template, request
app = Flask(__name__)

vini = {"Cantina Marrocco": [10],"Cantina Alecci": [10],"Cantina Introini": [10]}

@app.route('/', methods = ['GET'])
def init():
    if request.method == 'GET':
        return render_template('initial.html')


@app.route('/form/', methods = ['POST', 'GET'])
def data():
    if request.method == 'GET':
        return render_template('form.html')

@app.route('/classifica/', methods = ['POST', 'GET'])
def classifica():
    if request.method == 'GET':
        return render_template('classifica.html')

@app.route('/catal/')
def users():
    name = request.args.get('name')
    return render_template('catalogo.html', nome=name)


@app.route('/catalogo/', methods = ['POST', 'GET'])
def datas():
    if request.method == 'GET':
        return render_template('catalogo.html', vino = vini)
    if request.method == 'POST':
        form = request.form
        nomeVino = form["nomeVino"]
        prezzoVendita = form["prezzoVendita"]
        image = request.files["imagename"]
        vini[nomeVino] = []
        vini[nomeVino].append(prezzoVendita)
        vini[nomeVino].append(image)
        prezzoVendita = form["prezzoVendita"]
        return render_template('catalogo.html', vino=vini)

if __name__ == "__main__":
    app.run(host='127.0.0.1', port=8115)