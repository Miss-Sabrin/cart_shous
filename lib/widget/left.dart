import 'package:flutter/material.dart';
import 'package:shouses/data/shous_model.dart';
//import 'package:shouses/pages/detail_page.dart';

class LeftPage extends StatefulWidget {
  const LeftPage({super.key});

  @override
  State<LeftPage> createState() => _LeftPageState();
}

class _LeftPageState extends State<LeftPage> {
  PageController controller=PageController();
  @override
  void initState() {
    // TODO: implement initState
    controller=PageController(viewportFraction: 0.6,initialPage: 0);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
       Padding(

        padding: const EdgeInsets.symmetric(vertical: 200),
        child: 
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 50),
              child: Column(
                
                children: [
                  RotatedBox(
                    
                    quarterTurns: 1,
                    child: Text('loaded',
                    style: TextStyle(fontSize: 20,fontWeight: FontWeight.w300),),
                     
                  
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

            //todo started shous
            ListView(
                  scrollDirection: Axis.horizontal,
                  
                  children: [
                          
                  
                
                Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: 300,
                          width: 200,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                            )
                           ),
                           child:  Column(
                          children: [
                              Row(
                                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          
                                children: [
                                  Row(
                                          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          
                                    children: [
                                      
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text('Nike',
                                          style: TextStyle(color: Colors.white)
                                        ),
                                      ),
                                      
                                      
                                    ],
                                  ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Icon(Icons.favorite_outline,color: Colors.white,),
                                          )
                          
                           
                                  
                          
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('EPIC-REACT',
                                      style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('130,00',
                                    style: TextStyle(color: Colors.white),),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  //todo image
                                  Image.asset('assets/images/shous1.png',height: 160 ,)
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
                          
                        ), 
                          
                        ),
                      
                          
                      ],
                      
                    )
                    
                  ],
                ),
                SizedBox(width: 20,),
                ///todo end container shouse
                         Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: 300,
                          width: 200,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                            )
                           ),
                           child:  Column(
                          children: [
                              Row(
                                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          
                                children: [
                                  Row(
                                          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          
                                    children: [
                                      
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text('Nike',
                                          style: TextStyle(color: Colors.white)
                                        ),
                                      ),
                                      
                                      
                                    ],
                                  ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Icon(Icons.favorite_outline,color: Colors.white,),
                                          )
                          
                           
                                  
                          
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('EPIC-REACT',
                                      style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('130,00',
                                    style: TextStyle(color: Colors.white),),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  //todo image
                                  Image.asset('assets/images/shous1.png',height: 160 ,)
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
                          
                        ), 
                          
                        ),
                      
                          
                      ],
                      
                    )
                    
                  ],
                )
                  ]
                
              
            )

         
            
            
           



          ]
        ))
        );
}


}


