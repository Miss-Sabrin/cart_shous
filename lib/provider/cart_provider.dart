import 'package:flutter/material.dart';
import 'package:shouses/data/shous_model.dart';
import 'package:provider/provider.dart';


class CartProvider extends ChangeNotifier{
final List<Shous>_cart=[];
List<Shous> get cart=>_cart;  


void toggleShous(Shous shous){
  
  if(_cart.contains(shous)){
    for(Shous  element in _cart){
      element.quantity++;
    }
  }else{
    _cart.add(shous);
  }
  notifyListeners();
  


}



incrementQunatity(int index)=>_cart[index].quantity++;
decrementQunatity(int index)=>_cart[index].quantity--;

//todo total price code

getTotalPrice(){
  double total =0;
  for(Shous element in _cart){
    total+=element.price *element.quantity;
  }
  return total;
}





static CartProvider of(
  BuildContext context,{
      bool listen=true,


  }
){
  return Provider.of<CartProvider>(
    context,
    listen:listen
  );
}





}