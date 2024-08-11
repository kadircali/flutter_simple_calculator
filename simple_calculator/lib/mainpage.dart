import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  String textFieldTextOne = "";
  String textFieldTextTwo = "";
  TextEditingController controller_one = TextEditingController();
  TextEditingController controller_two = TextEditingController();
  TextEditingController controller_three = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CALCULATOR"),
        backgroundColor: Colors.blue,
      ),
      //ana konteyner
      body: Container(
          child: Column(
        children: [
          //textfield ve buton conteyner
          Container(
            margin: EdgeInsets.only(top: 10),
            child: TextField(
              controller: controller_one,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "first number",
              ),
            ),
          ),

          Container(
            margin: EdgeInsets.only(top: 10, bottom: 10),
            child: TextField(
              controller: controller_two,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "second number",
              ),
            ),
          ),

          Container(
            margin: EdgeInsets.only(top: 10, bottom: 10),
            child: TextField(
              controller: controller_three,
              readOnly: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "result",
              ),
            ),
          ),

          //buton container
          Container(
            child: ElevatedButton(
                onPressed: () {
                  textFieldTextOne = controller_one.text;
                  textFieldTextTwo = controller_two.text;

                  try {
                    double n1 = double.parse(textFieldTextOne);
                    double n2 = double.parse(textFieldTextTwo);

                    double result = n1 + n2;

                    setState(() {
                      print(result);
                      controller_three.text = result.toString();
                    });
                  } catch (e) {
                    print("error ${e.toString()}");
                  }
                },
                child: Icon(Icons.add)),
          ),
          Container(
            child: ElevatedButton(
                onPressed: () {
                  textFieldTextOne = controller_one.text;
                  textFieldTextTwo = controller_two.text;

                  try {
                    double n1 = double.parse(textFieldTextOne);
                    double n2 = double.parse(textFieldTextTwo);

                    double result = n1 - n2;

                    setState(() {
                      print(result);
                      controller_three.text = result.toString();
                    });
                  } catch (e) {
                    print("error ${e.toString()}");
                  }
                },
                child: Icon(Icons.remove)),
          ),
          Container(
            child: ElevatedButton(
              onPressed: () {
                textFieldTextOne = controller_one.text;
                textFieldTextTwo = controller_two.text;

                try {
                  double n1 = double.parse(textFieldTextOne);
                  double n2 = double.parse(textFieldTextTwo);

                  double result = n1 * n2;

                  setState(() {
                    print(result);
                    controller_three.text = result.toString();
                  });
                } catch (e) {
                  print("error ${e.toString()}");
                }
              },
              child: Icon(Icons.close),
            ),
          ),

          Container(
            child: ElevatedButton(
              onPressed: () {
                try {
                  double n1 = double.parse(textFieldTextOne);
                  double n2 = double.parse(textFieldTextTwo);

                  double result = n1 / n2;

                  setState(() {
                    print(result);
                    controller_three.text = result.toString();
                  });
                } catch (e) {
                  print("error ${e.toString()}");
                }
              },
              child: Text("/"),
            ),
          )
        ],
      )),
    );
  }
}
