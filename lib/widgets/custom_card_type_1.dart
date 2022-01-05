import 'package:flutter/material.dart';
import 'package:flutter_components/themes/app_themes.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(
              Icons.photo_album_outlined,
              color: AppTheme.primary,
            ),
            title: Text("Soy un título"),
            subtitle: Text(
                "Adipisicing fugiat qui ipsum elit nisi reprehenderit duis anim. Est nostrud do quis Lorem sint quis dolor et aute proident ex laboris. Aliqua aute commodo fugiat elit anim. Et exercitation laborum tempor magna."),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text("Cancel"),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text("Ok"),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
