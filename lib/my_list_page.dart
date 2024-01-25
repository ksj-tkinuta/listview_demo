import 'package:flutter/material.dart';

class MyListPage extends StatelessWidget {
  MyListPage({super.key});

  final List<String> entries = <String>[
    'A',
    'B',
    'C',
    'A',
    'B',
    'C',
    'A',
    'B',
    'C',
    'A',
    'B',
    'C'
  ];
  final List<int> colorCodes = <int>[
    600,
    500,
    100,
    600,
    500,
    100,
    600,
    500,
    100,
    600,
    500,
    100
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('ListView'),
      ),
      body: Container(
          child: ListView.separated(
              padding: const EdgeInsets.all(8),
              itemCount: entries.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 50,
                    color: Colors.amber[colorCodes[index]],
                    child: Center(child: Text('Entry ${entries[index]}',style: TextStyle(
                      fontSize: 25
                    ),)),
                  ),
                );
              },
            separatorBuilder: (BuildContext context, int index) => const Divider(),
          )),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
