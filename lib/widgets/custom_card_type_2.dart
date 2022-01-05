import 'package:flutter/material.dart';
import 'package:flutter_components/themes/app_themes.dart';

class CustomCardType2 extends StatelessWidget {
  final String imageUrl;

  // para no obligar al usuario
  final String? name;

  const CustomCardType2({
    Key? key,
    required this.imageUrl,
    this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      //sirve para cortar la tarjeta
      clipBehavior: Clip.antiAlias,

      //border radius de las tarjetas
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      ),
      elevation: 10,
      shadowColor: AppTheme.primary.withOpacity(0.5),
      child: Column(
        children: [
          FadeInImage(
            image: NetworkImage(imageUrl),
            placeholder: const AssetImage("assets/jar-loading.gif"),
            width: double.infinity,
            height: 230,
            fit: BoxFit.cover,
            fadeInDuration: const Duration(milliseconds: 300),
          ),
          if (name != null)
            Container(
              alignment: AlignmentDirectional.centerEnd,
              padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
              //"name!" sirve para decir confia en mi nunca vendrá nulo
              child: Text(name!),
            )
        ],
      ),
    );
  }
}
