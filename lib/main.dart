import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TransportationSelection(),
    );
  }
}

class TransportationSelection extends StatefulWidget {
  @override
  _TransportationSelectionState createState() =>
      _TransportationSelectionState();
}

class _TransportationSelectionState extends State<TransportationSelection> {
  String _selectedTransport = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Expanded(
                child: Card(
                  elevation: 5.0, // add this
                  child: Container(
                    height: 120,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Radio<String>(
                          value: 'Car',
                          groupValue: _selectedTransport,
                          onChanged: (value) {
                            setState(() {
                              _selectedTransport = value!;
                              print('$_selectedTransport Selected');
                            });
                          },
                        ),
                        Icon(Icons.directions_car,
                            size: 50.0,
                            color: _selectedTransport == 'Car'
                                ? Colors.blue
                                : Colors.black),
                        Text('Car'),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Card(
                  elevation: 5.0, // add this
                  child: Container(
                    height: 120,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Radio<String>(
                          value: 'Motorbike',
                          groupValue: _selectedTransport,
                          onChanged: (value) {
                            setState(() {
                              _selectedTransport = value!;
                              print('$_selectedTransport Selected');
                            });
                          },
                        ),
                        Icon(Icons.motorcycle,
                            size: 50.0,
                            color: _selectedTransport == 'Motorbike'
                                ? Colors.blue
                                : Colors.black),
                        Text('Motorbike'),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Card(
                  elevation: 5.0, // add this
                  child: Container(
                    height: 120,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Radio<String>(
                          value: 'Bicycle',
                          groupValue: _selectedTransport,
                          onChanged: (value) {
                            setState(() {
                              _selectedTransport = value!;
                              print('$_selectedTransport Selected');
                            });
                          },
                        ),
                        Icon(Icons.directions_bike,
                            size: 50.0,
                            color: _selectedTransport == 'Bicycle'
                                ? Colors.blue
                                : Colors.black),
                        Text('Bicycle'),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
