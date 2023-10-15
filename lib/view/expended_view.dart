
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ExpandedDemo extends StatelessWidget {
  const ExpandedDemo({super.key});

  get child => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Expanded(
            flex: 1,
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.5,
              color: Colors.purple,
              child: Center(child: Text("Başlık")),
            )),
        Expanded(
            flex: 9,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                    flex: 3,
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.90,
                      // padding: EdgeInsets.all(40),
                      //dikey yazdırma
                      // padding: EdgeInsets.symmetric(
                      //     horizontal: MediaQuery.of(context).size.width * 0.5),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width * 3 / 8,
                          // vertical:
                          //     MediaQuery.of(context).size.height * 0.25
                        ),
                        child: Center(child: Text("Görsel")),
                      ),
                      color: Colors.blue,
                    )),
                Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        Expanded(
                            child: Container(
                          width: double.infinity,
                          height: MediaQuery.of(context).size.height * 9 / 10,
                          child: TextButton(
                            onPressed: () {},
                            child: Image.asset(
                              "assets/images/svg/svg_anatomical_heart.svg",
                            ),
                          ),
                          color: Colors.black,
                        )),
                        Expanded(
                            child: Container(
                          width: double.infinity,
                          height: MediaQuery.of(context).size.height * 9 / 10,
                          child: TextButton(
                            onPressed: () {},
                            child: Icon(
                              Icons.heart_broken_sharp,
                              color: Colors.red,
                            ),
                          ),
                          color: Colors.black,
                        )),
                        Expanded(
                            child: Container(
                          width: double.infinity,
                          height: MediaQuery.of(context).size.height * 9 / 10,
                          child: TextButton(
                            onPressed: () {},
                            child: Icon(
                              Icons.heart_broken_sharp,
                              color: Colors.red,
                            ),
                          ),
                          color: Colors.black,
                        ))
                      ],
                    ))
              ],
            ))
      ],
    ));
  }
}
