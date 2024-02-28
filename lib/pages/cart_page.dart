import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:shouses/pages/detail_page.dart';
import 'package:shouses/pages/homepage.dart';
import 'package:shouses/provider/cart_provider.dart';
import 'package:shouses/widget/build_shous.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
   int index=0;
  @override
  Widget build(BuildContext context) {

    final provider=CartProvider.of(context);
    final finalList=provider.cart;
    _buildCatecory(IconData icon,int index){
      return 
    GestureDetector(
      onTap: () {
        setState(() {
          icon==Icons.add
          ?provider.incrementQunatity(index)
          :provider.decrementQunatity(index);
          //Icon
        });
      },
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.amberAccent
        ),
        child: Icon(
          icon,
          size: 20,
        ),
      ),
    );


    }

    
    return Scaffold(
      
      appBar: AppBar(
        elevation: 120,
        backgroundColor: finalList[index].Color,
        
        title: Column(
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => HomePage()));

                    
                  },
                  
                  child: Icon(Icons.arrow_back_rounded,color: Colors.black,size: 30,),
                  ),
              ],
            ),
            SizedBox(height: 10,),
            
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            //     Row(
            //       children: [
            //         Text('My  Bag',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
            //       ],
            //     ),
            //     Text('Total 3 items',style: TextStyle(fontSize: 10,color: Colors.black),)
            //   ],
            // ),
          ],
        )
        
      ),
      body: Column(
        

        
          children: [
            
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text('My Bag',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black),),
                    ],
                  ),
                  Text('Total 3 items',style: TextStyle(fontSize: 15,color: Colors.black),)
                ],
              ),
            ),
            Container(
              height: 1,
              width: 380,
              decoration: BoxDecoration(
                color: Colors.grey,
              ),
            ),
            

          
        
        
          Expanded(child: 
          ListView.builder(
            itemCount: finalList.length,
            itemBuilder: ( context,  index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),

                child: Slidable(
                   endActionPane: ActionPane(
                  motion: ScrollMotion(),
                  children: [
                    SlidableAction(onPressed: (context){
                      finalList[index].quantity=1;
                      finalList.removeAt(index);
                      setState(() {
                        
                      });
                    },
                    backgroundColor: Colors.red,
                    foregroundColor: Colors.white,
                    icon: Icons.delete,
                    label: 'Delete',
                    )

                ]),

                //todo end animation remove item...!
                  child: ListTile(
                    title: Text(finalList[index].name,
                    style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    subtitle: Text(finalList[index].price.toString(),
                    overflow: TextOverflow.ellipsis,),
                    leading: CircleAvatar(radius: 30,
                    backgroundImage: AssetImage(finalList[index].imagePath),
                    backgroundColor: finalList[index].Color,
                    ),
                    trailing: Column(
                      children: [
                        _buildCatecory(Icons.add,index),
                        Text(finalList[index].quantity.toString(),
                        style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                        _buildCatecory(Icons.remove, index)
                        
                              
                              
                      ],
                    ),
                    tileColor: Colors.white70,
                  ),
                ),
              );
            },
          ),),

        
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Total',style: TextStyle(fontSize: 20),),
                      
                        
             
                    ],
                         ),
                         
                      Text('\$${provider.getTotalPrice()}',
                      style: TextStyle(fontSize: 30,
                      fontWeight: FontWeight.bold),
                      ),
             
                 ],
               ),
             ),
             SizedBox(
              
               child: Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Row(
                  children: [
                    ConstrainedBox(
                      constraints: BoxConstraints.tightFor(width: 360,height: 40),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: finalList[index].Color,
                          elevation: 20,
                    
                        ),
                       
                        onPressed: (){}, child: Text('Next',style:
                         TextStyle(
                          
                          
                        ),)),
                    )
                  ],
                 ),
               ),
             )
          
        ],
      ),

    );
  }
}