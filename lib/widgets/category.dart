import 'package:flutter/material.dart';


class Category extends StatelessWidget {
  final String catimg;
  final String cattitle;
  final String catdesc;
  final IconData iconforward;
  const Category({Key? key, required this.catimg, required this.cattitle, required this.catdesc, required this.iconforward}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: MediaQuery.of(context).size.height*0.12,
        width: 300,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8, left: 16,bottom: 8),
              child: Container(
                height: 50,
                width: 50,
                 decoration: BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(image: AssetImage(catimg),fit: BoxFit.cover),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30,left: 18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(cattitle,style: const TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color:  Color.fromARGB(255, 9, 150, 150)),),
                  Text(catdesc),
                ],
              ),
            ),
            Expanded(child: Container()),
            IconButton(onPressed: (){
              // Navigator.push(context,MaterialPageRoute(builder: (context)=>ProductDetails()) );
            }, icon: Icon(iconforward))
          ],
        ),
      ),
    );
  }
}