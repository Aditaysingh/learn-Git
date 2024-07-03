import 'package:flutter/material.dart';
import 'package:mvc_ui/views/utils/colors.dart';

class UiWidgets {
  BuildContext context;
  UiWidgets({required this.context});

  Widget uiDesign(IconData icon, String text) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Icon(
            icon,
            size: 40,
          ),
        ),
        Text(text),
      ],
    );
  }

  Widget profileDesign(String text1, String text2) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Padding(
          padding: EdgeInsets.all(20.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                "https://i0.wp.com/static.vecteezy.com/system/resources/previews/005/162/090/original/cartoon-superhero-boy-flying-on-white-background-free-vector.jpg"),
            radius: 35,
          ),
        ),
        Column(
          children: [
            Text(text1),
            Text(text2),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            children: [
              Image.network(
                "https://play-lh.googleusercontent.com/ufwUy4SGVTqCs8fcp6Ajxfpae0bNImN1Rq2cXUjWI7jlmNMCsXgQE5C3yUEzBu5Gadkz=w240-h480-rw",
                height: 40,
                width: 40,
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget containersDesign(String text, IconData icon, ) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Container(
            height: 140,
            width: double.maxFinite,
            decoration: BoxDecoration(
              color: containersColor ?? Theme.of(context).primaryColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(text,),
                    SizedBox(width: 10),
                    Icon(icon, size: 30,color: Colors.blueAccent,),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 10,
            right: 10,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                height: 50,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: const LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Colors.indigoAccent,
                      Colors.purple,
                      Colors.purpleAccent,

                    ],
                  ),
                ),
                child: Center(
                  child: Text(
                    "Subscribe for Rs. 1590.00 per year"
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }


}
