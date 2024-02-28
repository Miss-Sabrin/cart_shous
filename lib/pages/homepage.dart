import 'package:flutter/material.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';
import 'package:shouses/data/category.dart';
import 'package:shouses/data/shous_model.dart';
import 'package:shouses/data/shous_sata.dart';
import 'package:shouses/pages/detail_page.dart';
import 'package:shouses/widget/build_shous.dart';
import 'package:shouses/widget/shous_Animate.dart';

class HomePage extends StatefulWidget {
    //final Shous shous;

  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectId=0;
  @override
  Widget build(BuildContext context,) {
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leadingWidth: 40,
        automaticallyImplyLeading: false,
        title: Text('Discovery'
        ,
        style: TextStyle(color: Colors.black,
        
        fontWeight: FontWeight.bold,
        fontSize: 25),
        ),
        actions: [
          Row(
            children: [
              Icon(Icons.search,color: Colors.black,),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(Icons.car_rental,color: Colors.black,),
                            )

            ],
          )
        ],
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            
            
            children: [
        
              Row( children: [
                _buildCatecory(0,'all'),

               // _buildCatecory(1,'all'),

        
               
              ],),

              //todo type buld shous and animation🤞
      
        
                 Row (
                  children: [
                  
                    Expanded(
                      
                      child: SizedBox(
                        height: 400,
                       // width: 120,
                      
                                  
                          child: ScrollSnapList(
                            
                            itemBuilder:buildShous, 
                            itemCount: plants.length, 
                            itemSize: 370,
                             onItemFocus: (index){},
                             
                             //dynamicItemSize: true,
                             //dynamicItemOpacity: 1,
                             
                             ),
                             
                             
                        
                      ),
                      
                    )
                    
                      
                      
                      ]
                  
                  
                ),
              
              //todo type more
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('More',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      ),
                    ],
                  ),
                  Icon(Icons.arrow_forward,size: 30,),
                ],
              ),
              //todo type cart
      
              Row(
                children: [

               
                  Expanded(
                    child: SizedBox(
                      height: 200, 
                      child: ScrollSnapList(
                      itemBuilder: cartMenu, 
                      itemCount: plants.length,
                       itemSize: 370,
                        onItemFocus: (index){},
                       // dynamicItemSize: true,
                        
                        ),
                      
                      
                      ),
                  )
      
                ],
              ),
      
      
      
      
      
      
           
        
              
        
        
        
            ],
            
          ),
          
        ),
      ),
      

     
      
      
    );
  }

  //todo buldCatecory
  
Widget _buildCatecory(int index,String name)=>

  
  
     Row(children: [
       for(int i=0; i<categories.length; i++)
          Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
       child: GestureDetector(
        onTap: () {
          setState(() {
            selectId=i;
          });
        },
         child: Text(categories[i].name,style: TextStyle(color: selectId==i? Colors.black:Colors.grey,),
         ),
       )
     ),
  
    ],);
  
 



////todo widget textRoted

 Widget textRouted()=>  Padding(

        padding: const EdgeInsets.symmetric(vertical: 10),
        child: 
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
              child: Column(
                
                children: [
                  RotatedBox(
                    
                    quarterTurns: 1,
                    
                    child: Text('loaded',
                    style: TextStyle(
                      
                      fontSize: 20,fontWeight: FontWeight.w300),),
                     
                  
                  ),
                                  SizedBox(height: 40,),
            
                      RotatedBox(
                    
                    quarterTurns: 1,
                    child: Text('loaded',
                    style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            
                    
                     
                  
                  ),
                  SizedBox(height: 40,),
                      RotatedBox(
                    
                    quarterTurns: 1,
                    child: Text('loaded',
                    
                     style: TextStyle(fontSize: 20,fontWeight: FontWeight.w300),),
            
                     
                  
                  ),
                ],
              ),
            ),
            

          

            // //todo end textRouted






   
           



          ]
        ));



//todo buildShous



 
  

 
































            //todo started shous


             Widget buildShous(BuildContext context, int index){

              Shous shous=plants[index];
              selectId=index;
              


             
            return   Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => DetailPage(shous: shous,)));

                },
                child: Row(
                  children: [
                    Stack(
                      children: [
                          Container(
                        height: 310,
                        width: 200,
                        //color: Colors.grey,
                        decoration: BoxDecoration( 
                          
                                color:shous.Color,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20)
                            
                          )
                        ),
                        child:  Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [

                                    Text(shous.name,style: TextStyle(color: Colors.white),),
                                    
                                  ],
                                ),
                                 Icon(Icons.favorite_outline,color: Colors.white,)
                              ],
                            ),
                            
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Text(shous.description,style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)
                              ],
                          
                              
                            ),
                            
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('\$${shous.price}',style: TextStyle(color: Colors.white,fontSize: 15),),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Image.asset(shous.imagePath,height: 150,)
                            ],
                          ),
              
                           Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('sabrin',style: TextStyle(color: Colors.white),),
                                    )
                                  ],
                                )
              
              
                          
                        
              
              
                       
                        ],
                      )
              ,
              
                      ),
                      
                                        
                      ],
                    )
                  ],
                ),
              ),
            );
             }






//todo type cart
Widget cartMenu(BuildContext context , int index){
     Shous shous=plants[index];
    //final Shous shous;

  return SizedBox(
    height: 100,
    width: 200,
    child:  Card(
      elevation: 12,
      child: ClipRRect(
        child: Column(
          children: [
           
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                   Column(
                     children: [
                      RotatedBox(
                        quarterTurns: 3,
                        child: Text(   shous.name     ,

                        style: TextStyle(fontSize: 20,
                        backgroundColor: Colors.red[600],
                        letterSpacing: 6,

                        

                        ),
                        
                        
                        ),
                        )
                       
                     ],
                   ),
                  Row(
                    
                    children: [
                      Icon(Icons.favorite_outline)
                      
                    ],
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 47),
                  child: Image.asset(shous.imagePath,height:8,),
                )
              ],
            ),
            Column(
              children: [
                Center(child: Text(shous.description,style: TextStyle(fontWeight: FontWeight.bold),)),
              ],
            ),
            Column(
              children: [
                Center(child: Text('\$${shous.price}'))
              ],
            )
          ],
        ),
        
      ),
      


    ) ,
  );
}
  

 

}