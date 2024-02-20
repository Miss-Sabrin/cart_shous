import 'package:flutter/material.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';
import 'package:shouses/data/shous_model.dart';
import 'package:shouses/data/shous_sata.dart';
import 'package:shouses/pages/detail_page.dart';

class CratPage extends StatefulWidget {
  const CratPage({super.key});

  @override
  State<CratPage> createState() => _CratPageState();
}

class _CratPageState extends State<CratPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => DetailPage()));

            },
            child: Row(
              children: [
                
                Icon(Icons.arrow_back,color: Colors.black,size: 30,)
              ],
            ),
          ),
        ),

     
       
      
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text('My Bag',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)
                  ],
                ),
                Text('Total 3 item')
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                
                height: 1,
                decoration: BoxDecoration(
                  color: Colors.grey[350]
                ),
              ),
            ),

            //todo item bay
            SizedBox(
              height: 100,
              
              child: ScrollSnapList(
                scrollDirection: Axis.vertical,
                itemBuilder: bayShous,
                 itemCount: plants.length, 
                 itemSize: 370,
                  onItemFocus: (index){}),
            )


            // ListView.builder(
            //   itemCount: plants.length,
            //   itemBuilder: (BuildContext context, int index) {
                
            //     return bayShous(context, index) ;
            //   },
            // ),

      
         
            ///
          ],
        ),
      ),
      
      
    );
  }

  Widget bayShous(BuildContext context ,int index){
    Shous shous=plants[index];
    return 
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Row(
                    children: [
                      Stack(
                        children: [
                          Container(
                            width: 90,
                            height: 100,
                            decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                              )
                            ),
                            child: Image.asset(shous.imagePath,height: 100,width: 200,fit: BoxFit.fill,),
                          ),
                          
                        ],
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    child: Column(
                      children: [
                       Row(
                        children: [
                          
                              Text(shous.name)
                        ],
                       ),
                       SizedBox(height: 15,),
                       Text('\$${shous.price}'),
                       Row(
                        children: [
                          Row(
                            children: [
                              TextButton(onPressed: (){}, 
                              child: Icon(Icons.minimize,size: 25,color: Colors.black,))
                            ],
                          ),
                          Text('1'),
                          
                          TextButton(onPressed: (){},
                          
                           child: Icon(Icons.add,size: 25,
                           color: Colors.black,))
                        ],
                       )
                      ],
                    ),
                  )
                ],
              ),
            );
  }
}