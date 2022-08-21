import 'package:flutter/material.dart';

class AdvertCard extends StatelessWidget {
  final String addtitle;
  final String addimg;
  final String percentdecreement;
  const AdvertCard({
    Key? key,
    required this.addtitle,
    required this.addimg,
    required this.percentdecreement,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            image:
                DecorationImage(image: AssetImage(addimg), fit: BoxFit.cover)),
        height: MediaQuery.of(context).size.height * 0.2,
        width: MediaQuery.of(context).size.width * 0.7,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                addtitle,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w800),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 55, left: 175),
                child: Container(
                  height: 25,
                  width: 60,
                  
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(15)),
                  child: Center(
                    child: Text(
                      percentdecreement,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
