
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }
  void _resetCounter() {
    setState(() {
      _counter =0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Counter',style: TextStyle(
                fontSize: 27,fontWeight: FontWeight.bold
            ),
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton.icon(
                  onPressed: (){
                    _incrementCounter();
                  }, icon: Icon(Icons.add), label: Text('min'),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.green
                  ),
                ),
                SizedBox(width: 10,),
                ElevatedButton.icon(
                  onPressed: (){
                    _decrementCounter();
                  }, icon: Icon(Icons.remove), label: Text('add'),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.redAccent
                  ),
                ),
              ],),
            ElevatedButton.icon(
              onPressed: (){
                _resetCounter();
              }, icon: Icon(Icons.settings_backup_restore), label: Text('add'),
              style: ElevatedButton.styleFrom(
                  primary: Colors.red
              ),
            ),

          ],
        ),


      ),

    );
  }
}