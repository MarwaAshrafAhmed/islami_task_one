import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SebhaScreen extends StatefulWidget {
  static const String routeName='/Sebha';
  @override
  State<SebhaScreen> createState() => _SebhaScreenState();
}

class _SebhaScreenState extends State<SebhaScreen> {
  int selectedIndex=0;
  int count=0;

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
       Image.asset("assets/images/bg.png",height: double.infinity,width: double.infinity,fit: BoxFit.cover,),
      Container(color: Colors.black.withOpacity(0.6),),

          Container(
            margin: EdgeInsets.only(left: 16,right: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
              Stack(
                alignment: Alignment.center,
                children: [

                  Image.asset("assets/images/Mosque.png"),
                  Image.asset("assets/images/Islami.png"),
                ],),

              SizedBox(height: 30,),
              Image.asset("assets/images/quran.png"),

                SizedBox(height: 30,),
                Image.asset("assets/images/Mask.png"),
                Stack(
                    alignment: Alignment.center,
                    children:[
                  InkWell(onTap: (){
                    setState(()
                        {
                          count+=1;
                        });

                  },
                      child: Image.asset("assets/images/SebhaBody.png")),
                  Column(children: [Text("الحمد لله",style: TextStyle(color:Color(0xffE2BE7F),fontSize: 56),),
                    SizedBox(height: 8,),
                    Text('$count',style: TextStyle(color:Color(0xffE2BE7F),fontSize: 56)),],)
                ] ),


            ],),
          )




      ],
    ),
    );
  }
}
