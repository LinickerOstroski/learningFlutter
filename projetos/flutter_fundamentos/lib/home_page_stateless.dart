import 'package:flutter/material.dart';

class HomePageStateless extends StatelessWidget {
  final String texto = 'Estou no StatelessWidget';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(texto),
          TextButton(
            onPressed: () {
              //texto = 'Alterei o tetxo do StatelessWidget';
            },
            child: Text('Alterar Texto'),
          ),
        ],
      ),
    );
  }
}
