import 'package:flutter/material.dart';

import 'cityScreen.dart';


void main() => runApp(myApp());

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Discover(),
    );
  }
}


class Discover extends StatelessWidget {

  Color green=Color(0xff326E6C);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
         selectedItemColor: green,
        showSelectedLabels: false,
        iconSize: 26,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,

        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.map,color: Colors.grey,),label: '',),
          BottomNavigationBarItem(icon: Icon(Icons.bookmark,color: Colors.grey,),label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person_rounded,color: Colors.grey,),label: ''),

        ],
      ),
      backgroundColor: Colors.white,


      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 14,left: 16,right: 16,bottom: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Row(
                      children: [

                        Icon(Icons.location_on,color: green,),
                        Text('Baghdad ,IQ',style: TextStyle(
                            color: green,
                            fontSize: 16,
                            fontWeight: FontWeight.w700

                        ),),
                      ],
                    ),
                    CircleAvatar(
                      radius: 28,
                      backgroundImage: NetworkImage('https://previews.123rf.com/images/newcox/newcox1809/newcox180900257/109115187-ic%C3%B4ne-d-avatar-masculin-color%C3%A9-avec-verre-de-soleil-sur-son-%C5%93il.jpg?fj=1'),
                    )

                  ],
                ),

              ),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 3,horizontal: 25),
                child: Text('Discover IRAQ',style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 30,
                  color: Colors.blueGrey,
                ),),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Text('New Destinations',style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 30,
                  color: Colors.blueGrey,
                ),),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 22,vertical: 20),
                child: TextFormField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xfff1f1f1),
                      suffixIcon: Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Container(
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: green.withOpacity(0.2),
                          ),
                          child: Icon(Icons.menu,),
                        ),
                      ),
                      prefixIcon: Icon(Icons.search_sharp,size: 28,color: Colors.blueGrey,),
                      hintText: 'Search Places',
                      hintStyle: TextStyle(
                          color: Colors.blueGrey
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                      )
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 22),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 40,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text('All',style: TextStyle(
                          color: Colors.grey,
                          fontSize: 20,
                          fontWeight: FontWeight.w600
                        ),),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text('Beach',style: TextStyle(
                            color: Colors.grey,
                            fontSize: 20,
                            fontWeight: FontWeight.w600
                        ),),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text('Temple',style: TextStyle(
                            color: Colors.grey,
                            fontSize: 20,
                            fontWeight: FontWeight.w600
                        ),),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text('City',style: TextStyle(
                            color: green,
                            fontSize: 20,
                            fontWeight: FontWeight.w700
                        ),),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text('Mountain',style: TextStyle(
                            color: Colors.grey,
                            fontSize: 20,

                            fontWeight: FontWeight.w600
                        ),),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text('Culture',style: TextStyle(
                            color: Colors.blueGrey,
                            fontSize: 20,
                            fontWeight: FontWeight.w600
                        ),),
                      ),

                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 6),
                child: Container(

                  width: MediaQuery.of(context).size.width,
                  height: 300,
                  //color: Colors.grey,
                  child: ListView(
                    scrollDirection: Axis.horizontal,

                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 40),
                        child: Container(
                          width: 160,
                          height: 260,
                          decoration: BoxDecoration(

                            borderRadius: BorderRadius.circular(18),
                            image: DecorationImage(
                               colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken),
                              fit: BoxFit.cover,
                              image: NetworkImage('https://i.pinimg.com/564x/ed/db/4d/eddb4d082db4de70f5758275358afa5d.jpg')
                            )
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(left: 26,top: 200),
                            child: Text('Baghdad',style:TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                              fontSize: 30,
                              fontStyle: FontStyle.italic
                            ),),
                          ),

                        ),
                      ),
                      SizedBox(width: 15,),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 40),
                        child: Container(
                          width: 160,
                          height: 260,
                          decoration: BoxDecoration(

                              borderRadius: BorderRadius.circular(18),
                              image: DecorationImage(
                                  colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken),
                                  fit: BoxFit.cover,
                                  image: NetworkImage('https://i.pinimg.com/564x/26/e1/36/26e1368fadb7712244a1cd8b7147bd12.jpg')
                              )
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(left: 26,top: 200),
                            child: Text('Samaraa',style:TextStyle(
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                                fontSize: 30,
                                fontStyle: FontStyle.italic
                            ),),
                          ),

                        ),
                      ),
                      SizedBox(width: 15,),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 40),
                        child: Container(
                          width: 160,
                          height: 260,
                          decoration: BoxDecoration(

                              borderRadius: BorderRadius.circular(18),
                              image: DecorationImage(
                                  colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken),
                                  fit: BoxFit.cover,
                                  image: NetworkImage('https://i.pinimg.com/564x/f0/bc/47/f0bc476445389f8f953fdf75c2111557.jpg')
                              )
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(left: 26,top: 200),
                            child: Text('Babylon',style:TextStyle(
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                                fontSize: 30,
                                fontStyle: FontStyle.italic
                            ),),
                          ),

                        ),
                      ),
                      SizedBox(width: 15,),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 40),
                        child: Container(
                          width: 160,
                          height: 260,
                          decoration: BoxDecoration(

                              borderRadius: BorderRadius.circular(18),
                              image: DecorationImage(
                                  colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken),
                                  fit: BoxFit.cover,
                                  image: NetworkImage('https://i.pinimg.com/564x/c9/81/0d/c9810dd84f3719446a5f3c12f869637b.jpg')
                              )
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(left: 26,top: 200),
                            child: Text('Karbalaa',style:TextStyle(
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                                fontSize: 30,
                                fontStyle: FontStyle.italic
                            ),),
                          ),

                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [

                      Text('Popular',style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.blueGrey
                      ),),
                      SizedBox(width: 2,),
                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Icon(Icons.arrow_drop_down_sharp,color: green,),
                      )
                      
                    ],
                  ),
                  SizedBox(width: 180,),
                  Text('View All',style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey,
                    fontWeight: FontWeight.w600
                  ),)
                  
                ],
              ),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>cityScreen()));
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 6,vertical: 4),
                  child: Container(
                    alignment: AlignmentDirectional.center,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 100),
                      child: Text('The Great Ziggurat of UR',style: TextStyle(
                        fontSize: 32,
                        color: Colors.white,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w700
                      ),),
                    ),
                    width: MediaQuery.of(context).size.width,
                    height: 180,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),

                      image: DecorationImage(
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken),
                        image: NetworkImage('https://i.pinimg.com/564x/c0/29/16/c0291603533de073eccac5cd7ccd6917.jpg')
                      )
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 6,vertical: 4),
                child: Container(
                  alignment: AlignmentDirectional.center,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 100),
                    child: Text('Taq Kasra',style: TextStyle(
                        fontSize: 32,
                        color: Colors.white,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w700
                    ),),
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: 180,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),

                      image: DecorationImage(
                          fit: BoxFit.cover,
                          colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken),
                          image: NetworkImage('https://i.pinimg.com/564x/b3/70/d6/b370d645222e2201ce0753936a9e8e0c.jpg')
                      )
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 6,vertical: 4),
                child: Container(
                  alignment: AlignmentDirectional.center,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 100),
                    child: Text('Gali Ali Beg waterfall',style: TextStyle(
                        fontSize: 32,
                        color: Colors.white,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w700
                    ),),
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: 180,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),

                      image: DecorationImage(
                          fit: BoxFit.cover,
                          colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken),
                          image: NetworkImage('https://i.pinimg.com/564x/c1/33/8f/c1338f229df0ab446d7fa61a2740f763.jpg')
                      )
                  ),
                ),
              ),




            ],
          ),
        ),
      ),
    );
  }
}
