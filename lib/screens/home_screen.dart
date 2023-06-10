import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smart_home_app/data/home_data.dart';
import 'package:smart_home_app/utils/text_utils.dart';

import 'detailscreen.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<int> _switchValue=[];
  int index=0;
  List<IconData>bnvlist=[Icons.home,Icons.insert_chart,Icons.settings,Icons.person];
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: double.infinity,
      width: double.infinity,
      decoration:const  BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xff20203a),
            Color(0xff244169)
          ]
        )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation:0,
          centerTitle: false,
          title: HeadingText(text: "Hello, Dev_73arner",size: 20,),
          actions: [
            Container(
              margin:const  EdgeInsets.all(8),
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: const Color(0xff736a63),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Icon(Icons.notification_add_outlined),
            )
          ],
        ),
        bottomNavigationBar: Container(
          height: 75,
          padding: const EdgeInsets.all(10),
          width: double.infinity,

          child: Container(
            height: 66,
            padding: const EdgeInsets.all(5),
            width: double.infinity,
         decoration: BoxDecoration(
           color:  const  Color(0xff353245),
           borderRadius: BorderRadius.circular(10)
         ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                for(int i=0;i<bnvlist.length;i++)...[
                  Container(

                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight ,
                          colors: index==i ? [
                            const  Color(0xff49398b),
                            const  Color(0xff5f599a)
                          ]:[
                            const   Color(0xff353245),
                            const  Color(0xff353245),
                          ]
                      ),
                    ),

                    child: Icon(bnvlist[i],color: Colors.white,),
                  )
                ]

              ],
            ),


          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Container(
                  height: 150,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            const Color(0xff244169).withOpacity(0.7),
                         const    Color(0xff20203a)]

                      )
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                HeadingText(text: "18*C",size: 30,),
                                HeadingText(text: "Cloudy",size: 20,),
                                HeadingText(text: "Sun,June 11",size: 10,)
                              ],
                            ),
                           SizedBox(
                             height: 80,
                             width: 80,

                             child:  Image.asset("assets/cloud.webp"),
                           )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                HeadingText(text: "Indoor temp",size: 12,),
                                HeadingText(text: "23*C",size: 12,),

                              ],
                            ),
                            Column(
                              children: [
                                HeadingText(text: "Indoor temp",size: 12,),
                                HeadingText(text: "23*C",size: 12,),

                              ],
                            ),
                            Column(
                              children: [
                                HeadingText(text: "Indoor temp",size: 12,),
                                HeadingText(text: "23*C",size: 12,),

                              ],
                            )
                          ],
                        )

                      ],
                    ),
                  ),
                ),


                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 40,

                          decoration: BoxDecoration(
                            color:const  Color(0xff353245),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          alignment: Alignment.center,
                          child: HeadingText(text: "Room",),
                        ),
                      ),
                   const  SizedBox(width: 20,),
                      Expanded(
                        child: Container(
                          height: 40,

                          decoration: BoxDecoration(
                            color:const  Color(0xff353245),
                              gradient:const LinearGradient(
                                begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter ,
                                  colors: [
                                    Color(0xff49398b),
                                     Color(0xff5f599a)
                                  ]
                              ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          alignment: Alignment.center,
                          child: HeadingText(text: "Devices",),
                        ),
                      )
                    ],
                  ),
                ),
                GridView.count(
                  primary: false,
                  shrinkWrap: true,
                  physics:const  NeverScrollableScrollPhysics(),
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                  crossAxisCount: 2,
                  children: <Widget>[
                    for(int i=0;i<devicelist.length;i++)...[
                      GestureDetector(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DetailScreen(devicelist[i].title)));
                        },
                        child: Container(
                        padding: const EdgeInsets.all(15),
                     decoration: BoxDecoration(
                         color:const  Color(0xff353245),
                         borderRadius: BorderRadius.circular(20),
                         gradient: LinearGradient(
                             begin: Alignment.topLeft,
                             end: Alignment.bottomRight ,
                             colors:_switchValue.contains(i)? [
                              const  Color(0xff49398b),
                              const  Color(0xff5f599a)
                             ]:[
                             const   Color(0xff353245),
                             const  Color(0xff353245),
                             ]
                         ),
                     ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.white,
                                  child: Icon(devicelist[i].icon,color: Colors.black,),
                                ),
                                Transform.scale(
                                  scale: 0.6,
                                  child: CupertinoSwitch(
                                    value: _switchValue.contains(i),
                                    onChanged: (bool value) {
                                      setState(() {
                                        if(_switchValue.contains(i)){
                                          _switchValue.remove(i);

                                        }else{
                                          _switchValue.add(i);
                                        }
                                      });
                                    },
                                  ),
                                ),

                              ],
                            ),
                           const Spacer(),
                            HeadingText(text:devicelist[i].title,size: 18,),
                           const  SizedBox(height: 5,),
                            HeadingText(text:devicelist[i].noofDevices,size: 10,)
                          ],
                        )
                    ),
                      ),]
                  ],
                )
              ],
            ),
          ),
        ),

      ),

    );
  }
}
