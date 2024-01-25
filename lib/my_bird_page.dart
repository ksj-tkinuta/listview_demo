import 'package:flutter/material.dart';

class MyBirdPage extends StatelessWidget {
  MyBirdPage({Key? key}) : super(key: key);

  final List<String> entries = <String>['Owl A Owls are birds from the order Strigiformes.Owls are divided into two families: the true (or typical) owl family, Strigidae, and the barn-owl family, Tytonidae.[2]', 'Owl B', 'Owl C'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'MyBird',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        actions: [
          Icon(Icons.ondemand_video, color: Colors.white),
          SizedBox(width: 24),
          Icon(Icons.search_rounded, color: Colors.white),
          SizedBox(width: 24),
          Icon(Icons.menu, color: Colors.white),
          SizedBox(width: 24),
        ],
      ),
      body: Container(
        color: Colors.black,
        child: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: entries.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
                height: 100,
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Image(
                      image: NetworkImage(
                          'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Entry ${entries[index]}',
                            maxLines: 2,
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                          Text(
                            'Entry abc',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                  ],
                ));
          },
        ),
      ),
    );
  }
}
