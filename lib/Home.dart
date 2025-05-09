import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    List _listaViagens = [
      "Viagem para o Rio de Janeiro",
      "Viagem para São Paulo",
      "Viagem para Salvador",
      "Viagem para Brasília",
      "Viagem para Porto Alegre",
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Minhas viagens",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: (ListView.builder(
              itemCount: _listaViagens.length,
              itemBuilder: (context, index) {
                String titulo = _listaViagens[index];
                return GestureDetector(
                  onTap: () {},
                  child: Card(
                    child: ListTile(
                      title: Text(titulo),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {},
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
