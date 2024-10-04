import 'package:flutter/material.dart';


class ConverterPage extends StatefulWidget {
  const ConverterPage({super.key});

  @override
  State<ConverterPage> createState() => _MyAppState();
}

class _MyAppState extends State<ConverterPage> {
  double currencyValue = 0.0;
  double usdValue    =   0.0;
  double turkeyValue =   0.0;
  double swedenValue =   0.0;
  double japanValue =    0.0;
  double audValue   =    0.0;
  double cadValue   =    0.0;
  double  koreaValue =   0.0;
  double mayValue =      0.0;
  double ukValue =       0.0;
  TextEditingController displayResult = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
        backgroundColor: const Color.fromRGBO(74, 114, 70,1),
        body: ListView(
          children: [ Column(
            // mainAxisAlignment: MainAxisAlignment.end,
            // crossAxisAlignment: CrossAxisAlignment.end,
            children: [
                   const Center(
                    child: Text('Currency Converter',
                    style: TextStyle(
                      fontSize: 25,color: Colors.white),
                    ),
                  ),
          
                  const SizedBox(height: 20),
            Column(
              children: [
                Center(
                  child: SizedBox(
                    width: 350,
                    child: TextField(
                      controller: displayResult,
                      style: const TextStyle(color: Colors.white),
                      decoration: const InputDecoration(
                        hintText: '1800',
                        label: Text('1800',style: TextStyle(color: Colors.white),),
                        filled: true,
                        fillColor: Color.fromRGBO(39, 57, 44, 1),
                        prefix: Padding
                        (padding:EdgeInsets.all(12),
                        child: Icon(Icons.monetization_on), ),
                        suffixIcon: Padding(
                          padding: EdgeInsets.all(12.0),
                          child: Icon(Icons.calculate,color: Colors.white,),
                          ),
                          border:  OutlineInputBorder(
                            // borderRadius: BorderRadius.circular(40), // Adjust the value for more or less curve
                        ),
                      ),    
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                //wrape with a gesture button
                ElevatedButton(
                  //ontapped buttton
                  onPressed: (){
                    setState(() {
                      usdValue = double.parse(displayResult.text) * 1664.15;
                      turkeyValue = double.parse(displayResult.text) * 154; 
                      swedenValue = double.parse(displayResult.text) * 163.21;
                      japanValue = double.parse(displayResult.text) * 163.21;
                      audValue = double.parse(displayResult.text) * 1137.68;
                      cadValue = double.parse(displayResult.text) * 1137.68;  
                    });
                  }, 
                  child: const Text('Convert',style: TextStyle(color: Colors.black),),
                  ),
                //more widgets
              ],
            ),
              const SizedBox(height: 20),
          
              Column(
                children: [
                  Container(
                    // color: Colors.white,
                    width: 480,
                    height: 580,
                      decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                     topRight: Radius.circular(30.0),
                     ),
                    ),
                      child: ListView(
                        children: [ Column(
                          children: [
                            const Row(
                              children: [
                                SizedBox(height: 50),
                                Padding(
                                  padding: EdgeInsets.only(left: 29),
                                  child: Text('Favourites Currencies',style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),),
                                ),
                                
                              ],
                            ),
                            SizedBox(
                              height: 90,
                              child: Card(
                                child: ListTile(
                                  subtitle:  Padding(
                                    padding: const EdgeInsets.only(left: 60,right: 70),
                                    child: ElevatedButton(
                                      onPressed: (){
                                          setState(() {
                                            usdValue = double.parse(displayResult.text) * 1652.17;    
                                          });
                                      }, 
                                      child: const Text('Convert USD',style: TextStyle(color: Colors.black),)),
                                  ),
                                  leading: Image.asset('usa.png'),
                                      title: const Text('USA'),
                                      trailing:  Text(
                                      'USD ${usdValue.toStringAsFixed(2)}',
                                      style: const TextStyle(
                                        fontSize: 16.0, // You can adjust the font size
                                        color: Colors.grey, // You can adjust the color
                                      ),
                                    ),
                                    ),
                              ),
                            ),
                                SizedBox(
                                  height: 90,
                                  child: Card(
                                    child: GestureDetector(
                                      onTap: () => {
                                        showDialog
                                        (context: context, 
                                        builder: (BuildContext context){
                                          return  Card(
                                            child: ListTile(
                                              subtitle:  const Padding(
                                            padding: EdgeInsets.only(left: 60,right: 70),
                                            child: Text('Convert TKY',style: TextStyle(color: Colors.black),),
                                    ),
                            leading: Image.asset('tky.png'),
                                              title: const Text('TURKEY'),
                                              trailing:   Text(
                                              'TKY ${turkeyValue.toStringAsFixed(2)}',
                                              style: const TextStyle(
                                              fontSize: 16.0, // You can adjust the font size
                                              color: Colors.grey, // You can adjust the color
                                              ),
                                            ),
                                            ),
                                          ) ;
                                        }
                                        ),
                                      },
                                      child: ListTile(
                                        subtitle:  const Padding(
                                      padding: EdgeInsets.only(left: 60,right: 70),
                                      child: Text('Convert TKY',style: TextStyle(color: Colors.black),),
                                                                        ),
                                                                leading: Image.asset('tky.png'),
                                        title: const Text('TURKEY'),
                                        trailing:   Text(
                                        'TKY ${turkeyValue.toStringAsFixed(2)}',
                                        style: const TextStyle(
                                          fontSize: 16.0, // You can adjust the font size
                                          color: Colors.grey, // You can adjust the color
                                        ),
                                      ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 90,
                                  child: Card(
                                    child: GestureDetector(
                                      onTap: () => {
                                        showDialog(
                                          context: context,
                                           builder: (BuildContext context){
                                              return  Card(
                                                child: ListTile(
                                        subtitle:  Padding(
                                      padding: const EdgeInsets.only(left: 60,right: 70),
                                      child: ElevatedButton(
                                        onPressed: (){
                                            setState(() {
                                              // swedenValue = double.parse(displayResult.text) * 163.21;    
                                            });
                                        }, 
                                        child: const Text('Convert SWD',style: TextStyle(color: Colors.black),)),
                                                                        ),
                                                                leading: Image.asset('swd.png'),
                                        title: const Text('SWEDEN'),
                                        trailing:  Text(
                                        'SWD ${swedenValue.toStringAsFixed(2)}',
                                        style: const TextStyle(
                                          fontSize: 16.0, // You can adjust the font size
                                          color: Colors.grey, // You can adjust the color
                                        ),
                                      ),
                                      ),
                                              );
                                           }
                                          ),
                                      },
                                      child: ListTile(
                                        subtitle:  Padding(
                                      padding: const EdgeInsets.only(left: 60,right: 70),
                                      child: ElevatedButton(
                                        onPressed: (){
                                            setState(() {
                                              // swedenValue = double.parse(displayResult.text) * 163.21;    
                                            });
                                        }, 
                                        child: const Text('Convert SWD',style: TextStyle(color: Colors.black),)),
                                                                        ),
                                                                leading: Image.asset('swd.png'),
                                        title: const Text('SWEDEN'),
                                        trailing:  Text(
                                        'SWD ${swedenValue.toStringAsFixed(2)}',
                                        style: const TextStyle(
                                          fontSize: 16.0, // You can adjust the font size
                                          color: Colors.grey, // You can adjust the color
                                        ),
                                      ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 90,
                                  child: Card(
                                    child: ListTile(
                                      subtitle:  Padding(
                                    padding: const EdgeInsets.only(left: 60,right: 70),
                                    child: ElevatedButton(
                                      onPressed: (){
                                          setState(() {
                                            // japanValue = double.parse(displayResult.text) * 163.21;    
                                          });
                                      }, 
                                      child: const Text('Convert JPY',style: TextStyle(color: Colors.black),)),
                                  ),
                                                              leading: Image.asset('jpy.png'),
                                      title: const Text('JAPAN'),
                                      trailing:  Text(
                                      'JPY ${japanValue.toStringAsFixed(2)}',
                                      style: const TextStyle(
                                        fontSize: 16.0, // You can adjust the font size
                                        color: Colors.grey, // You can adjust the color
                                      ),
                                    ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 90,
                                  child: Card(
                                    child: ListTile(
                                      subtitle:  Padding(
                                    padding: const EdgeInsets.only(left: 60,right: 70),
                                    child: ElevatedButton(
                                      onPressed: (){
                                          setState(() {
                                            // audValue = double.parse(displayResult.text) * 1137.68;    
                                          });
                                      }, 
                                      child: const Text('Convert AUD',style: TextStyle(color: Colors.black),)),
                                  ),
                                                              leading: Image.asset('tky.png'),
                                      title: const Text('AUSTRILIA'),
                                      trailing:  Text(
                                      'AUD ${audValue.toStringAsFixed(3)}',
                                      style: const TextStyle(
                                        fontSize: 16.0, // You can adjust the font size
                                        color: Colors.grey, // You can adjust the color
                                      ),
                                    ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 90,
                                  child: Card(
                                    child: ListTile(
                                      subtitle:  Padding(
                                    padding: const EdgeInsets.only(left: 60,right: 70),
                                    child: ElevatedButton(
                                      onPressed: (){
                                          setState(() {
                                            // cadValue = double.parse(displayResult.text) * 1137.68;    
                                          });
                                      }, 
                                      child: const Text('Convert CAD',style: TextStyle(color: Colors.black),)),
                                  ),
                                                              leading: Image.asset('cad.png'),
                                      title: const Text('CANADA'),
                                      trailing:  Text(
                                      'CAD ${cadValue.toStringAsFixed(2)}',
                                      style: const TextStyle(
                                        fontSize: 16.0, // You can adjust the font size
                                        color: Colors.grey, // You can adjust the color
                                      ),
                                    ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 90,
                                  child: Card(
                                    child: ListTile(
                                      subtitle:  Padding(
                                    padding: const EdgeInsets.only(left: 60,right: 70),
                                    child: ElevatedButton(
                                      onPressed: (){
                                          setState(() {
                                            mayValue = double.parse(displayResult.text) * 4.11;    
                                          });
                                      }, 
                                      child: const Text('Convert MAYLISIA',style: TextStyle(color: Colors.black),)),
                                  ),
                                                              leading: Image.asset('malaysia.png'),
                                      title: const Text('MALAYSIA'),
                                      trailing: Text(
                                      'MAY ${mayValue.toStringAsFixed(2)}',
                                      style: const TextStyle(
                                        fontSize: 16.0, // You can adjust the font size
                                        color: Colors.grey, // You can adjust the color
                                      ),
                                    ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 90,
                                  child: Card(
                                    child: ListTile(
                                      subtitle:  Padding(
                                    padding: const EdgeInsets.only(left: 60,right: 70),
                                    child: ElevatedButton(
                                      onPressed: (){
                                          setState(() {
                                            koreaValue = double.parse(displayResult.text) * 1.26;    
                                          });
                                      }, 
                                      child: const Text('Convert KWN',style: TextStyle(color: Colors.black),)),
                                  ),
                                                              leading: Image.asset('kr.png'),
                                      title: const Text('KOREA'),
                                      trailing:  Text(
                                      'KWN ${koreaValue.toStringAsFixed(2)}',
                                      style: const TextStyle(
                                        fontSize: 16.0, // You can adjust the font size
                                        color: Colors.grey, // You can adjust the color
                                      ),
                                    ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  child: Card(
                                    child: ListTile(
                                      subtitle:  Padding(
                                    padding: const EdgeInsets.only(left: 60,right: 70),
                                    child: ElevatedButton(
                                      onPressed: (){
                                          setState(() {
                                            ukValue = double.parse(displayResult.text) * 2211.03;    
                                          });
                                      }, 
                                      child: const Text('Convert UK',style: TextStyle(color: Colors.black),)),
                                  ),
                                                              leading: Image.asset('usa.png'),
                                      title: const Text('UNITED KINGDOM'),
                                      trailing:  Text(
                                      'GBP ${ukValue.toStringAsFixed(2)}',
                                      style: const TextStyle(
                                        fontSize: 16.0, // You can adjust the font size
                                        color: Colors.grey, // You can adjust the color
                                      ),
                                    ),
                                    ),
                                  ),
                                ),
                                
                          ],
                        ),
                      ],
                      ),
                  ),
                ],
              ),
                   //more widegets
            ],
          ),
          ],
        ),
        
      );
  }
}