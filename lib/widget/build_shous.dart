import 'package:flutter/material.dart';
import 'package:shouses/data/shous_model.dart';

class BuildShous extends StatelessWidget {
  final Shous shous;
  const BuildShous({super.key,required this.shous});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SafeArea(
        child:Row( 
       
  
            children: [

              
  
  Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Stack(
                    children: [
                        Container(
                      height: 310,
                      width: 200,
                      //color: Colors.grey,
                      decoration: BoxDecoration(
                              color: Colors.grey,
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
                              child: Text('\$''${shous.price}',style: TextStyle(color: Colors.white,fontSize: 15),),
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
            )

              
            ]),
          
        
        

      ),
               
    );
  }
}



