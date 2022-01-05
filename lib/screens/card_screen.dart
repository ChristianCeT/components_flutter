import 'package:flutter/material.dart';
import 'package:flutter_components/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Card Widget"),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CustomCardType1(),
          SizedBox(
            height: 10,
          ),
          CustomCardType2(
            name: "Super Girl",
            imageUrl:
                "https://www.denofgeek.com/wp-content/uploads/2020/09/supergirl-cancelled.jpg?fit=1280%2C720",
          ),
          SizedBox(
            height: 10,
          ),
          CustomCardType2(
            name: "Arrow",
            imageUrl:
                "https://www.cinemascomics.com/wp-content/uploads/2020/11/Stephen-Amell-revela-por-que-quiso-regresar-como-Arrow.jpg",
          ),
          SizedBox(
            height: 10,
          ),
          CustomCardType2(
            imageUrl:
                "https://www.cinemascomics.com/wp-content/uploads/2016/01/Felicity_Smoak.jpg?width=1200&enable=upscale",
          ),
          SizedBox(
            height: 100,
          ),
        ],
      ),
    );
  }
}
