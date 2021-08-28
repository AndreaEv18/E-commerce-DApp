import requests
import json
from flask import Flask, render_template, request
app = Flask(__name__)

vini=[]

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
        vini.append(nomeVino)
        prezzoVendita = form["prezzoVendita"]
        #list = [ label_predict,max_score,occorrenze, datetime.timedelta(seconds=final)]
        return render_template('catalogo.html', vino=vini,price = prezzoVendita)

if __name__ == "__main__":
    app.run(host='127.0.0.1', port=8115)