import requests
import json
from flask import Flask, render_template, request
import os
app = Flask(__name__)
path = os.path.dirname(os.path.realpath(__file__))
print(path)
pathImg = path + "/static/"

contatore = 3


vini = {"Cantina Marrocco": [1,'0'],"Cantina Alecci": [1,'1'],"Cantina Introini": [1,'2'],"Cantina RomaTre": [10,'3'] }

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
        return render_template('classifica.html', vino = vini)
    if request.method == 'POST':
        return render_template('classifica.html', vino = vini)

@app.route('/acquisti/', methods = ['POST', 'GET'])
def acquisti():
    if request.method == 'GET':
        return render_template('acquisti.html')

@app.route('/catal/')
def users():
    name = request.args.get('name')
    return render_template('catalogo.html', nome=name)


@app.route('/catalogo/', methods = ['POST', 'GET'])
def datas():
    if request.method == 'GET':
        return render_template('catalogo.html', vino = vini)
    if request.method == 'POST':
        global contatore
        form = request.form
        nomeVino = form["nomeVino"]
        prezzoVendita = form["prezzoVendita"]
        user = request.form["user"]
        image = request.files["imagename"]
        contatore = contatore+1
        p = pathImg + str(contatore) + '.jpg'
        print(p)
        image.save(p)
        vini[nomeVino] = []
        vini[nomeVino].append(prezzoVendita)
        vini[nomeVino].append(str(contatore))
        vini[nomeVino].append(user)
        return render_template('catalogo.html', vino=vini)

if __name__ == "__main__":
    app.run(host='127.0.0.1', port=8115)
