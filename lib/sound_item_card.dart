import 'package:flutter/material.dart';

class SoundItemCard extends StatelessWidget {
  //const MosqueItemCard({Key? key}) : super(key: key);
  String text;
  SoundItemCard({required this.text});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10),
      decoration: BoxDecoration(color: Color(0xffE2BE7F),borderRadius: BorderRadius.circular(16)),

      child: Column(
        children: [
          Text(text,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
          SizedBox(height: 20,),
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Image.asset("assets/images/soundWave.png",color: Colors.black.withOpacity(.3),),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.pause,size: 44),
                  Icon(Icons.volume_off,size: 30),
                ],),
            ],),

        ],),);
  }
}

