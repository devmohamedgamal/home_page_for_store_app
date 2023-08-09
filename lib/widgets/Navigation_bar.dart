import 'package:flutter/material.dart';

class BottomNavigationBarWidget extends StatelessWidget {
  const BottomNavigationBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient:
            LinearGradient(colors: [Color(0xff4338CA), Color(0xff6D28D9)]),
      ),
      child: BottomAppBar(
        elevation: 0,
        color: Colors.transparent,
        child: SizedBox(
          height: 70,
          width: MediaQuery.of(context).size.width,
          child: const Padding(padding:  EdgeInsets.only(left:25,right: 25,),
          child:Row(
              mainAxisAlignment: MainAxisAlignment.center,
            children: [
            ],),
          ),
        ),
      ),
    );
  }
}
