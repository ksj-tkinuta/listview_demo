import 'package:flutter/material.dart';

class MyListPage extends StatelessWidget {
  const MyListPage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: const Text('ListView'),
      ),
      body: Container(

      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}