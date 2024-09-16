import 'package:flutter/material.dart';
import 'package:flutter_fundamentos/home_page_stateless.dart';

class HomePageStatefull extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePageSateFullState();
  }
}

class _HomePageSateFullState extends State<HomePageStatefull> {
  String texto = 'Estou no StatefulWidget';

  @override
  void initState() {
    super.initState();
    texto = 'Texto alterado pelo initState';
    print('initState');

    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
      print('addPostFrameCallback');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(texto),
            TextButton(
              onPressed: () {
                setState(() {
                  texto = 'Alterei o texto do StatefulWidget';
                });
              },
              child: Text('Alterar Texto'),
            ),
          ],
        ),
      ),
    );
  }
}
