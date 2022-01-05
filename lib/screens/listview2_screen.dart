import 'package:flutter/material.dart';

//ListView.Builder se usa para crear una lista rapidamente peresoza
//ListView.Builder se usa para crear una lista algo mas personalisable
class ListView2Screen extends StatelessWidget {
  final options = const ["Megaman", "Metal Gear", "Valorant", "LoL"];
  const ListView2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("ListView Tipo 2"),
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                  onTap: () {
                    final game = options[index];
                    print(game);
                  },
                  title: Text(options[index]),
                  trailing: const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.indigo,
                  ),
                ),
            //truco para no usar argumentos _ y en el segundo __
            separatorBuilder: (_, __) => const Divider(),
            itemCount: options.length));
  }
}
