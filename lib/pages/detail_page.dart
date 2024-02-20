import 'package:flutter/material.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';
import 'package:shouses/data/shous_model.dart';
import 'package:shouses/data/shous_sata.dart';
import 'package:shouses/data/size.dart';
import 'package:shouses/pages/cart_page.dart';
import 'package:shouses/pages/homepage.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber[700],
        elevation: 0,
        
        title: Center(child: Text('nike')),
        leading: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
              GestureDetector(
                onTap: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => HomePage()));

                },
                child:
              
               Icon(Icons.arrow_back,size: 35,)),

          ],
        ),
        actions: [
                    Icon(Icons.favorite_outlined,size: 30,)

        ],

        
        
      ),
      body:SafeArea(child: 
      Column(
        children: [
          Container(
            height: 300,
            decoration: BoxDecoration(
              
              color: Colors.amber[700],
              image: DecorationImage(image: 
              
               AssetImage('assets/images/shous6.png',)
               
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(300)
              ),
              
              
              
              
            ),
          ),
          Row(
            children: [
            
              Expanded(
                child: SizedBox(
                  height: 60,
                  width: 200,
                  child: ScrollSnapList(
                    itemBuilder: buldCatacries,
                     itemCount: plants.length, 
                     itemSize: 370, 
                     onItemFocus: (index){},
                     ),
                ),
              )
             

            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Container(
                  height: 1,
                  width: 370,
                  decoration: BoxDecoration(
                    color: Colors.grey
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text('Air-Max-270',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold))
                  ],
                ),
                Text('\$${150.00}',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
              ],
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(' the nike air max 270 amount lup and icon with ahug max air\n unt for cushong under everey step it features a stercthy \n inner sleeve for a sunng sock-like fit',
                 style:TextStyle(color: Colors.grey[600]),),
              )
            ],
          ),
          ///todod -----------
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text('More Details'),
              ],
            ),
          ),
          //todo xariqmada more hostsia 
           Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Container(
                  height: 1,
                  width: 80,
                  decoration: BoxDecoration(
                    color: Colors.grey[900]
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                   Text('Size',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                Row(
                  children: [
                     
                     
                         Text('Uk',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
                    
          
                 
                    
                  ],
                ),
              
              ],
            ),
          ),

          //todo type of sized catcreis
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: SizedBox(
                     height: 60,
                    width: 370,
                    child: ScrollSnapList(
                      itemBuilder: buildSize,
                      itemCount: size.length, 
                      itemSize: 370, 
                      onItemFocus: (inex){},
                      ),
                      
                      
                      
                  ),
                )
              ],
            ),
          ),
          
             Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: 370,
                    height: 50,

                    child: ElevatedButton(

                  
                      
                      
                      
                      onPressed: (){
                        
                          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => CratPage()));

                      }, 
                    child: Text('ADD TO BAC',),
                    
                      style:  ElevatedButton.styleFrom(
                        
                        backgroundColor: Colors.amber[600],
                        
                      )

                    
                    
                    ),
                  ),
                )
               
              ],
            ),
          
          
        
        ],
      )
      )
      
    );
  


  }
}



//todo catacries
Widget buldCatacries (BuildContext context , int index){
  Shous shous=plants[index];
  return Card(
    elevation: 0,
    child: ClipRRect(
      child: Row(
        children: [
          Image.asset(shous.imagePath)
        ],
      ),
    
    ),
  );
  
}

Widget buildSize(BuildContext context ,int index){

  SizeItem sized=size[index];


  

  return Card(
    
    elevation: 12,
    child: ClipRRect(
      
      
      
      child: Row(
        children: [
          TextButton(

          //  onHover: (value) {
          //    Colors.black;
          //  },

            onPressed: (){}, child: Text("${sized.size}",style: TextStyle(color: Colors.black),)),

          
        ],
      ),
    
    ),
  );

}