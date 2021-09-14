# Wine Paradise :wine_glass: 

Efficienza, resilienza e cybersecurity. Sono questi i cardini principali sui quali gli sviluppatori delle nuove applicazioni stanno volgendo lo sguardo, ed è qui, che l’utilizzo della blockchain può fare la differenza.\
:bulb: È stata realizzata una *Dapp*, nome abbreviato di *Decentralized application*, che a differenza delle normali applicazioni, ha il proprio codice back-end in esecuzione su una rete peer-to-peer decentralizzata: la blockchain. :globe_with_meridians:

<img src="https://github.com/AndreaEv18/E-commerce-DApp/blob/main/static/schema.jpg" width="300" height="300"/>

Tra le tante scelte presenti nel panorama di questa nuova tecnologia, il focus principale è stato su quella che rappresenta la scelta per eccellenza, per la creazione e il deploy di codice su blockchain: *Ethereum*.
La piattaforma Ethereum è stata la capostipite per le applicazioni decentralizzate, la quale fornisce una macchina virtuale Turing completa, l’Ethereum Virtual Machine (EVM), che permette di eseguire scripts (smart-contracts) utilizzando una rete p2p di nodi pubblici.

Il progetto si è basato sulla realizzazione di un E-commerce di vendita vini, che offre diverse funzionalità che vanno dall’acquisto di un prodotto dal relativo catalogo, alla vendita di un nuovo vino, fino alla consultazione di una classifica generale, per visionare quali sono stati i prodotti più votati e quindi più apprezzati: un buon aiuto nei casi di indecisione durante un acquisto.

<img src="https://github.com/AndreaEv18/E-commerce-DApp/blob/main/static/anteprima.png"/>

## Come avviare ed interagire con l'E-commerce. 

- Installare Flask attraverso il comando pip install Flask
- Installare Truffle mediante il comando npm install -g truffle
- Scaricare dal sito ufficiale [https://www.trufflesuite.com/ganache](https://www.trufflesuite.com/ganache) l'interfaccia grafica di Ganache attraverso la quale istanzieremo una blockchain privata che riprodurrà le stesse funzionalità della rete originale di Ethereum.

# Ora avviamo la Dapp:

- Avviare la GUI di Ganache: cliccare su "New workspace" e successivamente su"Add Project". Spostarsi nella cartella Back-End del progetto e selezionare il file truffle-config.js. Infine su Save Workspace. (assicurarsi che il campo port nel file truffle-config.js sia quale a quella su cui gira Ganache, visionabile in alto nell'interfacci stessa).

- Spostarsi tramite la shell nella cartella del progetto e quindi nella cartella Back-End. Eseguire il comando Truffle compile e successivamente Truffle migrate.

- Da qui copiare e incollare gli indirizzi dei contratti in tutte le pagine html.

```
 var contract = SmartContract.at("Contract Address di Purchasing");
 var contract1 = SmartContract1.at("Contract Address di Voting");
 var contractSeller = SmartContract2.at("Contract Address di Seller")
```

- Spostarsi nella cartella iniziale e avviare il file main.py attraverso il comando python main.py.

- Infine collegarsi a [http://127.0.0.1:8115](http://127.0.0.1:8115) e utilizzare l'applicazione

Cin Cin :clinking_glasses: