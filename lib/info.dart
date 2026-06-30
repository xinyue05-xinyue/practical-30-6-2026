import 'package:flutter/material.dart';

class Info extends StatelessWidget {
  final String bmi;
  const Info({super.key, required this.bmi});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Body Mass Index Info'),

      ),
      body: Padding(
          padding: EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              children: [
                Text('Body mass index (BMI) is a value derived from the mass'
                    '(weight) and the height of a person.\n\nThe BMI is defined'
                    'as the body mass divided by the square of the body height, and is expressed in units of kf/m\u00B2'
                ),

                Table(
                  border: TableBorder.all(
                    color: Colors.orangeAccent

                  ),
                  children: [
                    TableRow(
                      children:
                        [
                          TableCell(
                            child: Text(
                            'BMI Value',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          ),

                          TableCell(
                            child: Text(
                            'Classification',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          ),
                        ],
                    ),
                    TableRow(
                      children:
                        [
                          TableCell(
                            child: Center(
                              child: Text(
                                'Below 18.5',
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),

                          TableCell(
                            child: Center(
                              child: Text(
                                'Underweight',
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),

                        ],
                    ),

                    TableRow(
                        children:
                        [
                          TableCell(
                            child: Center(
                              child: Text(
                                '18.5 - 24.9',
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),

                          TableCell(
                            child: Center(
                              child: Text(
                                'Normal',
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),

                        ],
                    ),

                    TableRow(
                        children:
                        [
                          TableCell(
                            child: Center(
                              child: Text(
                                'Above 25',
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),

                          TableCell(
                            child: Center(
                              child: Text(
                                'Overweight',
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),

                        ],
                    ),
                  ],
                ),
                bmi == ''? Text('Please enter your weight and height.')
                    : Text('Your BMI value is : $bmi'),
                Expanded(child: SizedBox()),
                ElevatedButton(onPressed: () {
                  Navigator.pop(context);
                },
                  child: Text('Back'),
                ),

              ],
            ),
          ),
      ),
    );
  }
}
