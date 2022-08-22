import 'package:flutter/material.dart';

import 'package:componentes/src/providers/menu_provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Componentes')),
      body: _lista(),
    );
  }

  Widget _lista() {
    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(children: _listaItems(snapshot.data!));
      },
    );
  }

  List<Widget> _listaItems(List<dynamic> data) {
    return data.map((item) {
      return Column(
        children: [
          ListTile(
            title: Text(item['texto']),
            leading: Icon(Icons.account_balance_wallet, color: Colors.blue),
            trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue),
            onTap: () {},
          ),
          Divider(color: Colors.blue, thickness: 1.0),
        ],
      );
    }).toList();
  }
}
