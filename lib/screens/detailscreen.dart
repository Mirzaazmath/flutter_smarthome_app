import 'package:flutter/material.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';
import 'package:smart_home_app/data/home_data.dart';
import 'package:smart_home_app/utils/text_utils.dart';
class DetailScreen extends StatelessWidget {
  String title;
  DetailScreen(this.title);

List<String>wattlist=["8 watt","9 watt","10 watt","12 watt","17 watt"];
  @override
  Widget build(BuildContext context) {
    return Container(
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
        bottomNavigationBar: Container(
          height: 75,
          padding: const EdgeInsets.all(10),
          width: double.infinity,

          child: Container(
            height: 66,
            padding: const EdgeInsets.all(5),
            width: double.infinity,
            decoration: BoxDecoration(

                borderRadius: BorderRadius.circular(10),
              gradient:const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter ,

                  colors:  [
                    Color(0xff49398b),
                    Color(0xff5f599a)
                  ]

              ),

            ),
            alignment: Alignment.center,
            child:  HeadingText(text: "Add new device",size: 17,),



          ),
        ),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: const Padding(
              padding:  EdgeInsets.all(10),
              child: CircleAvatar(

                backgroundColor:  Color(0xff736a63),
                child: Icon(Icons.arrow_back_ios_rounded,color: Colors.white,),
              ),
            ),
          ),
          title: HeadingText(text: title,size: 20,),
          actions: const [
             Padding(
              padding:  EdgeInsets.all(10),
              child: CircleAvatar(

                backgroundColor:  Color(0xff736a63),
                child: Icon(Icons.more_vert,color: Colors.white,),
              ),
            ),
          ],

        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                Container(
                  padding:const EdgeInsets.all(5),
                  height: 40,
                  width: double.infinity,
                  decoration:  BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                      color: const   Color(0xff353245),


                  ),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        for(int i =0;i<wattlist.length;i++)...[
                          Container(
                            alignment: Alignment.center,
                            height: 40,
                            width: 100,
                            margin:const EdgeInsets.only(right: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight ,
                                  colors: 0==i ? [
                                    const  Color(0xff49398b),
                                    const  Color(0xff5f599a)
                                  ]:[
                                    const    Color(0xff736a63),
                                    const   Color(0xff736a63),
                                  ]
                              ),
                            ),
                            child: HeadingText(text: wattlist[i],),
                          )
                        ]
                      ],
                    ),
                  ),

                ),
       const SizedBox(height: 20,),
                HeadingText(text: "Controller",size: 23,),
                const SizedBox(height: 20,),

                SleekCircularSlider(
                      appearance: CircularSliderAppearance(
                        size: 200,
                        customColors: CustomSliderColors(
                          trackColor: const Color(0xff453d77),
                          progressBarColors:const [
                            Color(0xffc5c4d6),
                            Color(0xffc5c4d6),
                            Color(0xffc5c4d6),
                            Color(0xff8f8eb0),
                          ]

                        ),
                        customWidths: CustomSliderWidths(
                          trackWidth: 6,
                          progressBarWidth: 6,
                          handlerSize: 10,
                        )
                      ),
                      innerWidget: inner,
                      onChange: (double value) {
                        print(value.round());
                      }),
               const  SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    for(int i =0;i<shades.length;i++)...[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            height: 65,
                            width: 65,
                            margin:const EdgeInsets.only(right: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight ,
                                  colors: 0==i ? [
                                    const  Color(0xff49398b),
                                    const  Color(0xff5f599a)
                                  ]:[
                                  const  Color(0xff353245),
                                    const  Color(0xff353245),
                                  ]
                              ),
                            ),
                            child: Icon(shades[i].icon,size: 35,color: Colors.white,),
                          ),
                        const  SizedBox(height: 5,),
                          HeadingText(text:shades[i].title ,size: 13,)
                        ],
                      )
                    ]
                  ],
                ),
              const  SizedBox(height: 30,),
                Container(
                  padding:const  EdgeInsets.all(15),
                  height: 140,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color:  const  Color(0xff353245),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      HeadingText(text: "Power consumption",size: 16,),
                      HeadingText(text: "8 watt smartlight",size: 12,),
                      Row(
                        children: [
                          Expanded(
                              child: ListTile(
                                contentPadding: EdgeInsets.zero,
                                leading: Container(
                                  height: 50,
                                  width: 50,
                                  decoration:const  BoxDecoration(
                                    shape: BoxShape.circle,
                                    gradient: LinearGradient(
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight ,
                                        colors:  [
                                            Color(0xff49398b),
                                            Color(0xff5f599a)
                                        ]

                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color:   Color(0xff49398b),
                                        offset: Offset(2, 2),
                                        blurRadius: 5,
                                      )
                                    ],

                                  ),
                                  child: const Icon(Icons.electric_bolt,color: Colors.white,),
                                ),
                                title: HeadingText(text: "5kWh",),
                                subtitle: HeadingText(text: "Today",size: 12,),
                              )),
                          Expanded(
                              child: ListTile(
                                contentPadding: EdgeInsets.zero,
                                leading: Container(
                                  height: 50,
                                  width: 50,
                                  decoration:const  BoxDecoration(
                                    shape: BoxShape.circle,
                                    gradient: LinearGradient(
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight ,
                                        colors:  [
                                          Color(0xff49398b),
                                          Color(0xff5f599a)
                                        ]

                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color:   Color(0xff49398b),
                                        offset: Offset(2, 2),
                                        blurRadius: 5,
                                      )
                                    ],

                                  ),
                                  child: const Icon(Icons.power,color: Colors.white,),
                                ),
                                title: HeadingText(text: "120kWh",),
                                subtitle: HeadingText(text: "This month",size: 10,),
                              ))
                        ],
                      )
                    ],
                  ),
                )


              ],
            ),
          ),
        ),
      ),
    );
  }
  Widget inner(double value){

    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        alignment: Alignment.center,
              height: 150,
              width: 150,
              decoration:const  BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Color(0xff241280),
                    offset: Offset(1, 5),
                    blurRadius: 10,
                  )
                ],
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight ,

                    colors:  [
                        Color(0xff49398b),
                        Color(0xff5f599a)
                    ]

                ),
              ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            HeadingText(text: "${value.round()}%",size: 30,),
           const  SizedBox(height: 10,),
            HeadingText(text: "light intensity",),
          ],
        ),

            ),
    );
  }

}
