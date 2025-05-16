import 'package:flutter/material.dart';
import 'package:minha_viagem/Mapas.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List _listaViagens = [
    "Viagem para o Rio de Janeiro",
    "Viagem para São Paulo",
    "Viagem para Salvador",
    "Viagem para Brasília",
    "Viagem para Porto Alegre",
  ];

  _abrirMapa() {}

  _excluirViagem() {}

  _adicionarLocal() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => Mapas()), // CORRETO
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Minhas viagens",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.blue,
        onPressed: () {
          _adicionarLocal();
        },
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: (ListView.builder(
              itemCount: _listaViagens.length,
              itemBuilder: (context, index) {
                String titulo = _listaViagens[index];
                return GestureDetector(
                  onTap: () {
                    _abrirMapa();
                  },
                  child: Card(
                    child: ListTile(
                      title: Text(titulo),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              _excluirViagem();
                            },
                            child: const Padding(
                              padding: EdgeInsets.all(8),
                              child: Icon(
                                Icons.remove_circle,
                                color: Colors.red,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            )),
          ),
        ],
      ),
    );
  }
}
