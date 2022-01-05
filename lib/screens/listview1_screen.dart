import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
  final options = const ["Megaman", "Metal Gear", "Valorant", "LoL"];
  const ListView1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView Tipo 1"),
      ),
      //ListView.Builder se usa para crear una lista rapidamente peresoza
      //ListView.Builder se usa para crear una lista algo mas personalisable
      body: ListView(
        children: [
          ...options
              .map((game) => ListTile(
                    title: Text(game),
                    trailing: const Icon(Icons.arrow_back_ios),
                  ))
              .toList()
        ], //tolist para pasarlo a una lista
      ),
    );
  }
}
