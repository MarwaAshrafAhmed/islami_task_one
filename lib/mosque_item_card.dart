import 'package:flutter/material.dart';

class MosqueItemCard extends StatelessWidget {
  //const MosqueItemCard({Key? key}) : super(key: key);
String text;
MosqueItemCard({required this.text});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10),
      decoration: BoxDecoration(color: Color(0xffE2BE7F),borderRadius: BorderRadius.circular(16)),

      child: Column(
        children: [
          Text(text,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Image.asset("assets/images/small_mosque.png"),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.play_arrow_rounded,size: 44),
                  Icon(Icons.volume_up,size: 30),
                ],),
            ],),

        ],),);
  }
}
