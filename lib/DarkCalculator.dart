import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class DarkCalculator extends StatefulWidget {
  //const calculator({ Key? key }) : super(key: key);

  @override
  _DarkCalculatorState createState() => _DarkCalculatorState();
}

class _DarkCalculatorState extends State<DarkCalculator> {
  String equation = "0";
  String result = "0";
  String expression = "";
  double equationFontSize = 35;
  double resultFontSize = 48;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff22252C),
        //backgroundColor: const Color(0xff151515),
        body: Column(
          children: [
            //light mode and dart mode icons
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 50,
                  margin: EdgeInsets.only(top: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: const Color(0xff2A2D36),
                  ),
                  //padding: EdgeInsets.all(5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: FlatButton(
                          minWidth: 30,
                          height: 50,
                          onPressed: () {
                            Navigator.pushNamed(context, 'Light mode');
                          },
                          child: Icon(
                            Icons.wb_sunny_outlined,
                            color: Colors.grey[600],
                          ),
                        ),
                      ),
                      Container(
                        child: FlatButton(
                          minWidth: 30,
                          height: 50,
                          onPressed: () {},
                          child: Icon(
                            Icons.dark_mode_outlined,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 80,
            ),
            //results
            Container(
              alignment: Alignment.centerRight,
              margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
              //color: Colors.amber,
              child: Text(
                equation,
                style: TextStyle(
                  fontSize: equationFontSize,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerRight,
              margin: EdgeInsets.fromLTRB(10, 10, 10, 20),
              //color: Colors.amber,
              child: Text(
                result,
                style: TextStyle(
                  fontSize: resultFontSize,
                  color: Colors.white,
                ),
              ),
            ),

            //buttons
            Expanded(
              child: Container(
                padding: EdgeInsets.fromLTRB(30, 35, 30, 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                  color: const Color(0xff2A2D36),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        FlatButton(
                          onPressed: () {
                            setState(() {
                              equation = "0";
                              result = "0";
                              equationFontSize = 35.0;
                              resultFontSize = 48.0;
                            });
                          },
                          color: const Color(0xff22252C),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          textColor: Colors.lightBlueAccent[400],
                          height: 55,
                          minWidth: 60,
                          child: Text(
                            'AC',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        FlatButton(
                          onPressed: () {
                            setState(() {
                              if (equation == "0") {
                                equation = "(";
                              } else {
                                equation = equation + "(";
                              }
                              equationFontSize = 48.0;
                              resultFontSize = 35.0;
                            });
                          },
                          color: const Color(0xff22252C),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          textColor: Colors.lightBlueAccent[400],
                          height: 55,
                          minWidth: 60,
                          child: Text(
                            '(',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        FlatButton(
                          onPressed: () {
                            setState(() {
                              if (equation == "0") {
                                equation = ")";
                              } else {
                                equation = equation + ")";
                              }
                              equationFontSize = 48.0;
                              resultFontSize = 35.0;
                            });
                          },
                          color: const Color(0xff22252C),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          textColor: Colors.lightBlueAccent[400],
                          height: 55,
                          minWidth: 60,
                          child: Text(
                            ')',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        FlatButton(
                          onPressed: () {
                            setState(() {
                              if (equation == "0") {
                                equation = "÷";
                              } else {
                                equation = equation + "÷";
                              }
                              equationFontSize = 48.0;
                              resultFontSize = 35.0;
                            });
                          },
                          color: const Color(0xff22252C),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          textColor: Colors.redAccent,
                          height: 55,
                          minWidth: 60,
                          child: Text(
                            '÷',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        FlatButton(
                          onPressed: () {
                            setState(() {
                              if (equation == "0") {
                                equation = "7";
                              } else {
                                equation = equation + "7";
                              }
                              equationFontSize = 48.0;
                              resultFontSize = 35.0;
                            });
                          },
                          color: const Color(0xff22252C),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          textColor: Colors.white,
                          height: 55,
                          minWidth: 60,
                          child: Text(
                            '7',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        FlatButton(
                          onPressed: () {
                            setState(() {
                              if (equation == "0") {
                                equation = "8";
                              } else {
                                equation = equation + "8";
                              }
                              equationFontSize = 48.0;
                              resultFontSize = 35.0;
                            });
                          },
                          color: const Color(0xff22252C),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          textColor: Colors.white,
                          height: 55,
                          minWidth: 60,
                          child: Text(
                            '8',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        FlatButton(
                          onPressed: () {
                            setState(() {
                              if (equation == "0") {
                                equation = "9";
                              } else {
                                equation = equation + "9";
                              }
                              equationFontSize = 48.0;
                              resultFontSize = 35.0;
                            });
                          },
                          color: const Color(0xff22252C),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          textColor: Colors.white,
                          height: 55,
                          minWidth: 60,
                          child: Text(
                            '9',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        FlatButton(
                          onPressed: () {
                            setState(() {
                              if (equation == "0") {
                                equation = "×";
                              } else {
                                equation = equation + "×";
                              }
                              equationFontSize = 48.0;
                              resultFontSize = 35.0;
                            });
                          },
                          color: const Color(0xff22252C),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          textColor: Colors.redAccent,
                          height: 55,
                          minWidth: 60,
                          child: Text(
                            '×',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        FlatButton(
                          onPressed: () {
                            setState(() {
                              if (equation == "0") {
                                equation = "4";
                              } else {
                                equation = equation + "4";
                              }
                              equationFontSize = 48.0;
                              resultFontSize = 35.0;
                            });
                          },
                          color: const Color(0xff22252C),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          textColor: Colors.white,
                          height: 55,
                          minWidth: 60,
                          child: Text(
                            '4',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        FlatButton(
                          onPressed: () {
                            setState(() {
                              if (equation == "0") {
                                equation = "5";
                              } else {
                                equation = equation + "5";
                              }
                              equationFontSize = 48.0;
                              resultFontSize = 35.0;
                            });
                          },
                          color: const Color(0xff22252C),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          textColor: Colors.white,
                          height: 55,
                          minWidth: 60,
                          child: Text(
                            '5',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        FlatButton(
                          onPressed: () {
                            setState(() {
                              if (equation == "0") {
                                equation = "6";
                              } else {
                                equation = equation + "6";
                              }
                              equationFontSize = 48.0;
                              resultFontSize = 35.0;
                            });
                          },
                          color: const Color(0xff22252C),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          textColor: Colors.white,
                          height: 55,
                          minWidth: 60,
                          child: Text(
                            '6',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        FlatButton(
                          onPressed: () {
                            setState(() {
                              if (equation == "0") {
                                equation = "-";
                              } else {
                                equation = equation + "-";
                              }
                              equationFontSize = 48.0;
                              resultFontSize = 35.0;
                            });
                          },
                          color: const Color(0xff22252C),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          textColor: Colors.redAccent,
                          height: 55,
                          minWidth: 60,
                          child: Text(
                            '-',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        FlatButton(
                          onPressed: () {
                            setState(() {
                              if (equation == "0") {
                                equation = "1";
                              } else {
                                equation = equation + "1";
                              }
                              equationFontSize = 48.0;
                              resultFontSize = 35.0;
                            });
                          },
                          color: const Color(0xff22252C),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          textColor: Colors.white,
                          height: 55,
                          minWidth: 60,
                          child: Text(
                            '1',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        FlatButton(
                          onPressed: () {
                            setState(() {
                              if (equation == "0") {
                                equation = "2";
                              } else {
                                equation = equation + "2";
                              }
                              equationFontSize = 48.0;
                              resultFontSize = 35.0;
                            });
                          },
                          color: const Color(0xff22252C),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          textColor: Colors.white,
                          height: 55,
                          minWidth: 60,
                          child: Text(
                            '2',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        FlatButton(
                          onPressed: () {
                            setState(() {
                              if (equation == "0") {
                                equation = "3";
                              } else {
                                equation = equation + "3";
                              }
                              equationFontSize = 48.0;
                              resultFontSize = 35.0;
                            });
                          },
                          color: const Color(0xff22252C),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          textColor: Colors.white,
                          height: 55,
                          minWidth: 60,
                          child: Text(
                            '3',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        FlatButton(
                          onPressed: () {
                            setState(() {
                              if (equation == "0") {
                                equation = "+";
                              } else {
                                equation = equation + "+";
                              }
                              equationFontSize = 48.0;
                              resultFontSize = 35.0;
                            });
                          },
                          color: const Color(0xff22252C),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          textColor: Colors.redAccent,
                          height: 55,
                          minWidth: 60,
                          child: Text(
                            '+',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        FlatButton(
                          onPressed: () {
                            setState(() {
                              equation =
                                  equation.substring(0, equation.length - 1);
                              if (equation == "") {
                                equation = "0";
                              }
                              equationFontSize = 48.0;
                              resultFontSize = 35.0;
                            });
                          },
                          color: const Color(0xff22252C),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          textColor: Colors.white,
                          height: 55,
                          minWidth: 60,
                          child: Icon(Icons.arrow_back_rounded),
                        ),
                        FlatButton(
                          onPressed: () {
                            setState(() {
                              if (equation == "0") {
                                equation = "0";
                              } else {
                                equation = equation + "0";
                              }
                              equationFontSize = 48.0;
                              resultFontSize = 35.0;
                            });
                          },
                          color: const Color(0xff22252C),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          textColor: Colors.white,
                          height: 55,
                          minWidth: 60,
                          child: Text(
                            '0',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        FlatButton(
                          onPressed: () {
                            setState(() {
                              if (equation == "0") {
                                equation = ".";
                              } else {
                                equation = equation + ".";
                              }
                              equationFontSize = 48.0;
                              resultFontSize = 35.0;
                            });
                          },
                          color: const Color(0xff22252C),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          textColor: Colors.white,
                          height: 55,
                          minWidth: 60,
                          child: Text(
                            '.',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        FlatButton(
                          onPressed: () {
                            setState(() {
                              expression = equation;
                              expression = expression.replaceAll('×', '*');
                              expression = expression.replaceAll('÷', '/');
                              equationFontSize = 35.0;
                              resultFontSize = 48.0;
                              try {
                                Parser p = Parser();
                                Expression exp = p.parse(expression);
                                ContextModel cm = ContextModel();
                                result =
                                    '${exp.evaluate(EvaluationType.REAL, cm)}';
                              } catch (e) {
                                result = "Error";
                              }
                            });
                          },
                          color: const Color(0xff22252C),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          textColor: Colors.redAccent,
                          height: 55,
                          minWidth: 60,
                          child: Text(
                            '=',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
