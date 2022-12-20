import 'package:flutter/material.dart';
import 'dart:math';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<FormState> _addDataKey = GlobalKey<FormState>();
  final TextEditingController _minController = TextEditingController();
  final TextEditingController _maxController = TextEditingController();
  final TextEditingController _sizeController = TextEditingController();
  int min = 0;
  int max = 50;
  int size = 5;
  List<int> numbers = [];
  void randomNumber(min,max,size){
    // generate size random numbers between min and max and store them in numbers
    final random = Random();
    setState(() {
      numbers = List<int>.generate(size, (i) => min + random.nextInt(max - min));
      if (numbers.isNotEmpty) {
        numbers.sort();
      }
      // check if all the numbers are unique
      if (numbers.toSet().length != numbers.length) {
        randomNumber(min,max,size);
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(widget.title),
        )
      ),
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(height: 10),
            Form(
              key: _addDataKey,
              child: Column(
                children: [
                  updateTextFormField(
                    labeltext: 'Max Value',
                    validator: (inputVal){
                      try{
                        if (inputVal!.isEmpty){
                          inputVal = 50.toString();
                        }
                        setState(() {
                          max = int.parse(inputVal!);
                        });
                        return null;
                      } catch (e){
                        return 'Please enter a valid integer';
                      }
                    },
                    controller: _maxController,
                    initialValue: max,
                  ),
                  updateTextFormField(
                    labeltext: 'Min Value',
                    validator: (inputVal){
                      try{
                        if (inputVal!.isEmpty){
                          inputVal = 0.toString();
                        }
                        if(int.parse(inputVal) > max){
                          return 'Min value must be less than max value';
                        }
                        setState(() {
                          min = int.parse(inputVal!);
                        });
                        return null;
                      } catch (e){
                        return 'Please enter a valid integer';
                      }
                    },
                    controller: _minController,
                    initialValue: min,
                  ),
                  
                  updateTextFormField(
                    labeltext: 'Output numbers size',
                    validator: (inputVal){
                      try{
                        if (inputVal!.isEmpty){
                          inputVal = 5.toString();
                        }
                        if(int.parse(inputVal) > max - min){
                          return "The size mustn't greater than max-min";
                        }
                        setState(() {
                          size = int.parse(inputVal!);
                        });
                        return null;
                      } catch (e){
                        return 'Please enter a valid integer';
                      }
                    },
                    controller: _sizeController,
                    initialValue: size,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                if (_addDataKey.currentState!.validate()){
                  randomNumber(min,max,size);
                }
              },
              child: const Text('Generate'),
            ),
            const SizedBox(height: 10),
            Text(
              'Your numbers are:',
              style: Theme.of(context).textTheme.headline6,
            ),
            const SizedBox(height: 10),
            Text(
              numbers.toString(),
              style: Theme.of(context).textTheme.headline6,
            ),

          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () async {
      //     if(_addDataKey.currentState!.validate()){
      //       random_number(min,max,size);
      //     }
      //   },
      // ),
    );
  }
}

Widget updateTextFormField({required String? labeltext,required String? Function(String?)? validator,required TextEditingController? controller, required int? initialValue}) {
    return Container(
      padding: const EdgeInsets.only(top:10, left: 20, right: 20,bottom: 15),
      child: TextFormField(
        validator: validator,
        controller: controller,
        style: const TextStyle(
          fontSize: 17,
          color: Colors.black,
        ),
        decoration: InputDecoration(
          labelText: '$labeltext ($initialValue)',
          labelStyle: const TextStyle(
            fontSize: 15,
            // fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 0, 0, 0),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Color.fromARGB(255, 255, 0, 0),
              width: 2,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Color.fromARGB(255, 235, 101, 34),
              width: 2,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Color.fromARGB(255, 134, 169, 223),
              width: 2,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Color.fromARGB(255, 134, 169, 223),
              width: 2,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      )
    );
  }

