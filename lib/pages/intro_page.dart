import 'package:flutter/material.dart';

import 'home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // logo
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:20.0),
                child: Image.asset(
                  'assets/images/nike.png',
                  height: 240,),
              ),
              
              const SizedBox(height: 48),
         
              // title
              Text("JUST DO IT.",
              style:TextStyle(fontWeight: FontWeight.bold,
              fontSize: 20,
              ) ,),
              const SizedBox(height: 24),
        
              // sub title
              const Text("Brand new nike shoes and custom kicks made with premium quality",
              style:TextStyle(
                fontWeight: FontWeight.bold,
              fontSize: 16,
              color: Colors.grey,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 48),
        
              // start now button
              GestureDetector(
                onTap: () => Navigator.push(context,MaterialPageRoute(builder: (context) =>HomePage(),),),
                child: Container(
                  decoration: BoxDecoration(color: Colors.grey[900],
                  borderRadius: BorderRadius.circular(12),
                  ),
                  padding: const EdgeInsets.all(25),
                  child: Center(
                    child: const Text("Shop Now",
                    style: TextStyle(color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,),),
                  ),
                ),
              )
        
            ],),
        ),
      ),
    );
  }
}