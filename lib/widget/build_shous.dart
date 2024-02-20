import 'package:flutter/material.dart';

class BuildShous extends StatelessWidget {
  const BuildShous({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SafeArea(
        child:Row
       
  
            (children: [
              Expanded(
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: [
                  



                    
                  ],
                ),
              )
            ]),
          
        
        

      ),
               
    );
  }
}


  Widget buldShous()=>Padding(
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
                                  Text('nike',style: TextStyle(color: Colors.white),),
                                  
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
                              Text('EPIC-REACT',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)
                            ],
                        
                            
                          ),
                          
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('12000',style: TextStyle(color: Colors.white,fontSize: 15),),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Image.asset('assets/images/shous1.png',height: 150,)
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
            );

