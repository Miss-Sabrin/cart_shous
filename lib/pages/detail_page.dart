
import 'package:flutter/material.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';
import 'package:shouses/data/shous_model.dart';
import 'package:shouses/data/shous_sata.dart';
import 'package:shouses/data/size.dart';
import 'package:shouses/pages/cart_page.dart';
import 'package:shouses/pages/homepage.dart';
import 'package:shouses/provider/cart_provider.dart';
import 'package:shouses/widget/availble_size.dart';

class DetailPage extends StatelessWidget {
  final Shous shous;
  const DetailPage({super.key,required this.shous});

  //int iselected=0;

  @override
  Widget build(BuildContext context ) {
    final provider=CartProvider.of(context);
    return Scaffold(
      appBar: AppBar(
    

        backgroundColor:shous.Color ,
        elevation: 0,
        
        
        title: Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                     Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => HomePage()));

                    
                  },
                  child: Icon(Icons.arrow_back)),


                        Center(child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 130),
                          child: Text(shous.name),
                        ),)


              ],
            ),
                            Icon(Icons.favorite_border_outlined),

          ],
        )
        
        
        

        
        
        
      
        


        // leading: Row(
        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //   children: [
        //       GestureDetector(
        //         onTap: () {
        //             Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => HomePage()));

        //         },
        //         child:
              
        //        Icon(Icons.arrow_back,size: 35,)),

        //   ],
        // ),
        
        // actions: [
        //             Icon(Icons.favorite_outlined,size: 30,)

        // ],

        
        
      ),
      
 

      body:
      
      SafeArea(child: 
      Column(
        children: [
          Container(
            height: 300,
            decoration: BoxDecoration(
              
              color: shous.Color,
              image: DecorationImage(image: 
              
               AssetImage(shous.imagePath,),
               fit: BoxFit.cover
               
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
                    Text(shous.name,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold))
                  ],
                ),
                Text('\$''${shous.price}',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
              ],
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(shous.description,
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
                AvailbleSize(size: 'try'),
                SizedBox(width: 10,),
               AvailbleSize(size: 'US 7'),
                               SizedBox(width: 10,),

            AvailbleSize(size: 'US 9'),
                            SizedBox(width: 10,),

           AvailbleSize(size: 'US 6'),
                           SizedBox(width: 10,),

            AvailbleSize(size: 'US 4'),
                            SizedBox(width: 10,),
            AvailbleSize(size: 'US 5')







               
              ],
            ),
          ),
          SizedBox(height: 10,),
          
             Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: 370,
                    height: 70,

                    child: ElevatedButton(

                  
                      
                      
                      
                      onPressed: (){
                        provider.toggleShous(shous);
                        
                        
                         Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => CartPage()));

                      }, 
                    child: Text('ADD TO BAC',),
                    
                      style:  ElevatedButton.styleFrom(
                        
                        backgroundColor: shous.Color,
                        
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

// Widget buildSize(BuildContext context ,int index){


//   SizeItem sized=size[index];
//   return Row(
//     children: [
//       AvailbleSize(size:'12' ),
//             AvailbleSize(size:'30' ),

//    AvailbleSize(size:'23.0' ),

//     ],
//   );
  





  

  // return Container(
  //   decoration: BoxDecoration(
  //     color: Color.
  //   ),
    
  //   elevation: 12,
  //   child: ClipRRect(
      
      
      
  //     child: Row(
  //       children: [
  //         TextButton(

  //         //  onHover: (value) {
  //         //    Colors.black;
  //         //  },

  //           onPressed: (){}, child: Text("${sized.size}",style: TextStyle(color: Colors.black),)),

          
  //       ],
  //     ),
    
  //   ),
  // );

