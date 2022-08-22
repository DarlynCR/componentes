import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final opciones = ['Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes Temp'),
      ),
      body: ListView(
          //children: _crearItems(),
          children: _CrearItemsMap()),
    );
  }

  //1 forma de transformar una lista de números en lista de widgets
  List<Widget> _crearItems() {
    List<Widget> lista = [];

    for (var item in opciones) {
      final tempWidget = ListTile(
        title: Text(item),
      );

      lista
        ..add(tempWidget)
        ..add(Divider(
          color: Colors.blueGrey,
          thickness: 1.0,
        ));
    }

    return lista;
  }

  List<Widget> _CrearItemsMap() {
    return opciones.map((item) {
      return Column(children: <Widget>[
        ListTile(
          title: Text(item),
          subtitle: Text('Cualquier cosa!'),
          leading: Icon(Icons.account_balance_wallet),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {}, //Click de la lista
        ),
        Divider()
      ]);
    }).toList();
  }
}
