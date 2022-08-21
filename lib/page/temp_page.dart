import 'dart:convert';

import 'package:flutter/material.dart';

import '../temp.dart';

class TempPage extends StatefulWidget{
  TempPage({Key? key}) : super(key: key);

  @override
  State<TempPage> createState() => _TempPageState();
}

class _TempPageState extends State<TempPage> {
  final _controller = TextEditingController();
  final _temp = Temp();

  var _feedbackText = '';
  var _showTestButton = false;

  void handleClickNum1() {
    var answer =0;
    setState(() {
      _showTestButton = !_showTestButton;
    });

    print('Button clicked!');
    print(_controller.text);
    var number = int.tryParse(_controller.text);
    if (number == null) {
      setState(() {
        _feedbackText = 'Input error, please try again';
      });
    } else {
      var result = _temp.doTemp(number);
      if (result == Result.cf) {
        setState(() {
          _feedbackText = '$number celsius = $Result Fahrenheit';
        });
      }
    }
  }
    void handleClickNum2() {
      setState(() {
        _showTestButton = !_showTestButton;
      });

      print('Button clicked!');
      print(_controller.text);
      var number = int.tryParse(_controller.text);
      if (number == null) {
        setState(() {
          _feedbackText = 'Input error, please try again';
        });
      } else {
        var result = _temp.doTemp(number);
        if(result == Result.ck){
          setState(() {
            _feedbackText = '$number celsius = $result Kelvin';
          });
        }
      }
    }
  void handleClickNum3() {
    setState(() {
      _showTestButton = !_showTestButton;
    });

    print('Button clicked!');
    print(_controller.text);
    var number = int.tryParse(_controller.text);
    if (number == null) {
      setState(() {
        _feedbackText = 'Input error, please try again';
      });
    } else {
      var result = _temp.doTemp(number);
      if(result == Result.fc){
        setState(() {
          _feedbackText = '$number Fahrenheit = $result celsius';
        });
      }
    }
  }
  void handleClickNum4() {
    setState(() {
      _showTestButton = !_showTestButton;
    });

    print('Button clicked!');
    print(_controller.text);
    var number = int.tryParse(_controller.text);
    if (number == null) {
      setState(() {
        _feedbackText = 'Input error, please try again';
      });
    } else {
      var result = _temp.doTemp(number);
      if(result == Result.fk){
        setState(() {
          _feedbackText = '$number Fahrenheit = $result Kelvin';
        });
      }
    }
  }
  void handleClickNum5() {
    setState(() {
      _showTestButton = !_showTestButton;
    });

    print('Button clicked!');
    print(_controller.text);
    var number = int.tryParse(_controller.text);
    if (number == null) {
      setState(() {
        _feedbackText = 'Input error, please try again';
      });
    } else {
      var result = _temp.doTemp(number);
      if(result == Result.kc){
        setState(() {
          _feedbackText = '$number Kelvin = $result celsius';
        });
      }
    }
  }
  void handleClickNum6() {
    setState(() {
      _showTestButton = !_showTestButton;
    });

    print('Button clicked!');
    print(_controller.text);
    var number = int.tryParse(_controller.text);
    if (number == null) {
      setState(() {
        _feedbackText = 'Input error, please try again';
      });
    } else {
      var result = _temp.doTemp(number);
      if(result == Result.kf){
        setState(() {
          _feedbackText = '$number Kelvin = $result Fahrenheit';
        });
      }
    }
  }

      @override
      Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Midterm Exam'),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Temperature Converter'),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextField(
                        controller: _controller,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Enter a temperature value to convert',
                        ),
                      ),
                      Center(
                        child: Row(
                          children: [
                            ElevatedButton(
                              onPressed: handleClickNum1,
                              child: Text('Celsius to Fahrenheit'),
                            ),
                            ElevatedButton(
                              onPressed: handleClickNum2,
                              child: Text('Celsius to Kelvin'),
                            ),
                          ],
                        ),
                      ),
                      Center(
                        child: Row(
                          children: [
                            ElevatedButton(
                              onPressed: handleClickNum3,
                              child: Text('Fahrenheit to Celsius'),
                            ),
                            ElevatedButton(
                              onPressed: handleClickNum4,
                              child: Text('Fahrenheit to Kelvin'),
                            ),
                          ],
                        ),
                      ),
                      Center(
                        child: Row(
                          children: [
                            ElevatedButton(
                              onPressed: handleClickNum5,
                              child: Text('Kelvin to Celsius'),
                            ),
                            ElevatedButton(
                              onPressed: handleClickNum6,
                              child: Text('Kelvin to Fahrenheit'),
                            ),
                          ],
                        ),
                      ),
                      Text(_feedbackText),
                    ],
                  ),

                ),
              ],
            ),
          ),
        );
      }
    }

