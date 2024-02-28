import 'package:flutter/material.dart';

class AvailbleSize extends StatefulWidget {
  final String size;

  const AvailbleSize({super.key,required this.size});

  @override
  State<AvailbleSize> createState() => _AvailbleSizeState();
}

class _AvailbleSizeState extends State<AvailbleSize> {
  bool isSselected =false;
  @override
  Widget build(BuildContext context) =>GestureDetector(
    onTap: () {
      setState(() {
        isSselected=!isSselected;
      });
    },
  
    child: Container(
      height: 40,
      width: 54,
      decoration: BoxDecoration(
        
        color: isSselected? Colors.black:Colors.transparent,
        borderRadius: BorderRadius.circular(6),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Center(
        child: Text(widget.size,style: TextStyle(
          fontWeight: FontWeight.bold,
          color: isSselected?Colors.white:Colors.black
        ),),
      ),

      
    ),
    );
  
}