import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const CalculatorScreen(),
    );
  }
}

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  // manage the sum section
  double sum = 0;

  // either use a TextEditingController for each input field to get the value
  TextEditingController add1Controller = TextEditingController();
  TextEditingController add2Controller = TextEditingController();

  // or store each value in the state
  double firstAddNum = 0;
  double secondAddNum = 0;
  
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Unit 5 Calculator"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          // Add Row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: TextField(
                  controller: add1Controller,
                  decoration: InputDecoration(labelText: "First Number"),
                  // update the firstAddNum state
                  onChanged: (value) {
                    setState(() {
                      firstAddNum = double.tryParse(value) ?? 0;
                    });
                  },
                ),
              ),
              const Text(" + "),
              Expanded(
                child: TextField(
                  controller: add2Controller,
                  decoration: InputDecoration(labelText: "Second Number"),
                   onChanged: (value) {
                    setState(() {
                      secondAddNum = double.tryParse(value) ?? 0;
                    });
                  },
                ),
              ),

              Text(' = $sum'),
              
              IconButton(
                onPressed:(){setState(() {sum = firstAddNum + secondAddNum;});}, 
                icon: Icon(Icons.toc)
                ),
              ElevatedButton(
                onPressed:() {
                  setState((){
                    add1Controller.clear();
                    add2Controller.clear();
                    firstAddNum = 0;
                    secondAddNum = 0;
                    sum = 0;
                    }
                  );
                }, 
                child: const Text("Clear Button"))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: TextField(
                  controller: add1Controller,
                  decoration: InputDecoration(labelText: "First Number"),
                  // update the firstAddNum state
                  onChanged: (value) {
                    setState(() {
                      firstAddNum = double.tryParse(value) ?? 0;
                    });
                  },
                ),
              ),
              const Text(" - "),
              Expanded(
                child: TextField(
                  controller: add2Controller,
                  decoration: InputDecoration(labelText: "Second Number"),
                   onChanged: (value) {
                    setState(() {
                      secondAddNum = double.tryParse(value) ?? 0;
                    });
                  },
                ),
              ),

              Text(' = $sum'),
              
              IconButton(
                onPressed:(){setState(() {sum = firstAddNum - secondAddNum;});}, 
                icon: Icon(Icons.toc)
                ),
              ElevatedButton(
                onPressed:() {
                  setState((){
                    add1Controller.clear();
                    add2Controller.clear();
                    firstAddNum = 0;
                    secondAddNum = 0;
                    sum = 0;
                    }
                  );
                }, 
                child: const Text("Clear Button"))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: TextField(
                  controller: add1Controller,
                  decoration: InputDecoration(labelText: "First Number"),
                  // update the firstAddNum state
                  onChanged: (value) {
                    setState(() {
                      firstAddNum = double.tryParse(value) ?? 0;
                    });
                  },
                ),
              ),
              const Text(" x "),
              Expanded(
                child: TextField(
                  controller: add2Controller,
                  decoration: InputDecoration(labelText: "Second Number"),
                   onChanged: (value) {
                    setState(() {
                      secondAddNum = double.tryParse(value) ?? 0;
                    });
                  },
                ),
              ),

              Text(' = $sum'),
              
              IconButton(
                onPressed:(){setState(() {sum = firstAddNum * secondAddNum;});}, 
                icon: Icon(Icons.toc)
                ),
              ElevatedButton(
                onPressed:() {
                  setState((){
                    add1Controller.clear();
                    add2Controller.clear();
                    firstAddNum = 0;
                    secondAddNum = 0;
                    sum = 0;
                    }
                  );
                }, 
                child: const Text("Clear Button"))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: TextField(
                  controller: add1Controller,
                  decoration: InputDecoration(labelText: "First Number"),
                  // update the firstAddNum state
                  onChanged: (value) {
                    setState(() {
                      firstAddNum = double.tryParse(value) ?? 0;
                    });
                  },
                ),
              ),
              const Text(" + "),
              Expanded(
                child: TextField(
                  controller: add2Controller,
                  decoration: InputDecoration(labelText: "Second Number"),
                   onChanged: (value) {
                    setState(() {
                      secondAddNum = double.tryParse(value) ?? 0;
                    });
                  },
                ),
              ),

              Text(' = $sum'),
              
              IconButton(
                onPressed:(){setState(() {sum = firstAddNum/secondAddNum;});}, 
                icon: Icon(Icons.toc)
                ),
              ElevatedButton(
                onPressed:() {
                  setState((){
                    add1Controller.clear();
                    add2Controller.clear();
                    firstAddNum = 0;
                    secondAddNum = 0;
                    sum = 0;
                    }
                  );
                }, 
                child: const Text("Clear Button"))
            ],
          ),
        ],
      ),
    );
  }
}
