import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:islami_task_one/mosque_item_card.dart';
import 'package:islami_task_one/second_radio_screen.dart';
import 'package:islami_task_one/sound_item_card.dart';

class RadioScreen extends StatefulWidget {
  static const String routeName='/firstRadio';
  const RadioScreen({Key? key}) : super(key: key);

  @override
  State<RadioScreen> createState() => _RadioScreenState();
}

class _RadioScreenState extends State<RadioScreen> {
  int selectedIndex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (index){
          setState(()
          {
            selectedIndex=index;
          }
          );

        },
        items: [
          BottomNavigationBarItem(backgroundColor: Color(0xffE2BE7F),icon: SvgPicture.asset("assets/images/ic_quran.svg"),label: "Quran"),
          BottomNavigationBarItem(icon: SvgPicture.asset("assets/images/ic_hadeth.svg"),label: "Hadeth"),
          BottomNavigationBarItem(icon: SvgPicture.asset("assets/images/ic_sebha.svg"),label: "Sebha"),
          BottomNavigationBarItem(icon: SvgPicture.asset("assets/images/ic_radio.svg"),label: "Radio"),
          BottomNavigationBarItem(icon: SvgPicture.asset("assets/images/ic_time.svg"),label: "Time"),

        ],
      ),

      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Image.asset("assets/images/reading-quran.png",height: double.infinity,width: double.infinity,fit: BoxFit.cover,),
          Container(color: Colors.black.withOpacity(0.6),),

          Container(
            margin: EdgeInsets.only(left: 16,right: 16),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [

                      Image.asset("assets/images/Mosque.png"),
                      Image.asset("assets/images/Islami.png"),
                    ],),

                  Row(children: [
                    Expanded(child: ElevatedButton(onPressed: (){}, child: Text("Radio",style: TextStyle(color: Colors.black),),style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),primary: Color(0xffE2BE7F),),)),

                    Expanded(child: ElevatedButton(onPressed: (){Navigator.pushNamed(context, SecondRadioScreen.routeName);},
                        child: Text("Reciters",style: TextStyle(color: Colors.white)),style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),primary: Colors.black.withOpacity(0.4),)))
                  ],),


                  SizedBox(height: 20,),
                  MosqueItemCard(text: "Radio Ibrahim Al-Akdar"),
                  SizedBox(height: 10,),
                  SoundItemCard(text: "Radio Al-Qaria Yassen"),
                  SizedBox(height: 10,),
                  MosqueItemCard(text: "Radio Ahmed Al-Trabulsi"),
                  SizedBox(height: 10,),
                  MosqueItemCard(text: "Radio Addokali Mohammed Alalim"),

                ],),
            ),
          )




        ],
      ),
    );
  }
}
