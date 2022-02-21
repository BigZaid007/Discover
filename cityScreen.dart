import 'package:discover/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class cityScreen extends StatelessWidget {

  Color green=Color(0xff326E6C);
  String img='https://i.pinimg.com/564x/82/d3/49/82d349faa6190483297a2016d92d6803.jpg';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(


        body:Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(img)
                  )
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8,left: 4),
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white70
                    ),
                    child: IconButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Discover()));
                      },
                      icon: Icon(Icons.arrow_back,color: green,),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8,right: 4),
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white70
                    ),
                    child: IconButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Discover()));
                      },
                      icon: Icon(Icons.bookmark,color: green,),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 430,left: 50),
              child: Container(
                width: 300,
                height: 320,
                decoration: BoxDecoration(
                  color: green.withOpacity(0.7),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.location_on,color: Colors.white70,size: 35,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              Text('The Great Mosque',style: TextStyle(
                                fontSize: 22,
                                color: Colors.white70,
                                fontWeight: FontWeight.w700
                              ),),
                              Text('Samaraa, Iraq',style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white70,

                              ),)
                            ],
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.star,color: Colors.white70,size: 27,),
                              SizedBox(width: 4,),
                              Text('4.3/5.0',style: TextStyle(
                                color: Colors.white70,
                                fontWeight: FontWeight.w600,
                                fontSize: 18
                              ),)
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.thermostat_outlined,color: Colors.white70,size: 27,),
                              SizedBox(width: 4,),
                              Text('24°C',style: TextStyle(
                                  color: Colors.white70,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18
                              ),)
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.calendar_today,color: Colors.white70,size: 22,),
                              SizedBox(width: 4,),
                              Text('3 Days',style: TextStyle(
                                  color: Colors.white70,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18
                              ),)
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 6),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Description',style: TextStyle(
                            fontSize: 22,
                            color: Colors.white,
                            fontWeight: FontWeight.w700
                          ),),
                          SizedBox(height: 4,),
                          Text('The Great Mosque in Samarra is a mosque from the 9th century CE located in Samarra, Iraq. The mosque was commissioned in 848 and completed in 851 by the Abbasid caliph Al-Mutawakkil who reigned (in Samarra) from 847 until 861. At the time of construction, it was the world`s largest mosque.',style: TextStyle(
                            color: Colors.white,
                            fontSize: 14
                          ),),
                          Padding(
                            padding: const EdgeInsets.only(top: 14),
                            child: Container(
                              alignment: AlignmentDirectional.center,
                              child: Text('Book Now',style: TextStyle(
                                color: green,
                                fontSize: 24,
                                fontWeight: FontWeight.w700
                              ),),
                              width: 340,
                              height: 55,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20),
                                ),
                                color: Colors.white
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )

          ],
        )
      ),
    );
  }
}
