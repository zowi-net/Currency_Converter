// import 'package:currency_converter_app/currency_converter2.dart';
import 'package:flutter/material.dart';
// import 'package:currency_converter_app/currency_converter_page.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _MyAppState();
}

class _MyAppState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: const Color.fromRGBO(74, 114, 70,1),
        body: Column(
          // mainAxisAlignment: MainAxisAlignment.end,
          // crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const SizedBox(height: 450),
            const Padding(
              padding: EdgeInsets.only(left: 25,right: 140),
              child: Text(' With MOMA',
                 style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),),
            ),
              const SizedBox(
                width: 220,
                child: Text('Convert Currency With Instant Current Exchange Rates',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
                ),
              ),
        
              const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: (){
                    Navigator.pushNamed(
                      context, 
                      "/converterpage");
                  },
                  style:  const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.white),
                  ),
                   
                  child: const SizedBox(
                    width: 200,
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Center(
                        child: Text('Get Started',
                        style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                      ),
                    ),
                  ),
                  ),
        
          ],
        ),
        
      );
  }
}