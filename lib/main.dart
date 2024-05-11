import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Wisdom(),
  ));
}

class Wisdom extends StatefulWidget {
  const Wisdom({super.key});

  @override
  State<Wisdom> createState() => _WisdomState();
}

class _WisdomState extends State<Wisdom> {
  List quotes = [
    "Life isn't about getting and having, it's about giving and being",
    "Whatever the mind of man can conceive and believe, it can achieve",
    "Strive not to be a success, but rather to be of value",
    "You miss 100% of the shots you don't take",
    "The most difficult thing is the decision to act, the rest is merely tenacity",
    "We become what we think about"
  ];
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Center(
              child: Container(
                  width: 350,
                  height: 200,
                  margin: const EdgeInsets.all(30.0),
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(14.5)),
                  child: Center(child: Text(quotes[_index], style: TextStyle(
                    color: Colors.grey.shade600,
                    fontSize: 20,
                    fontStyle: FontStyle.italic
                  ),))),
            ),
          ),
          const Divider(
            thickness: 1.3,
          ),
          const Padding(padding: EdgeInsets.only(top: 18.0)),
          TextButton.icon(
            onPressed: _showQuote,
            style: ButtonStyle(
                backgroundColor: MaterialStateColor.resolveWith(
                    (states) => Colors.greenAccent)),
            icon: const Icon(Icons.wb_sunny),
            label: const Text(
              "Inspire me!",
              style: TextStyle(color: Colors.white, fontSize: 18.8),
            ),
          ),
          const Spacer(flex: 1,)
        ],
      ),
    );
  }

  _showQuote() {
    setState(() {
      _index += 1;
      if (_index > 5) {
        _index = 0;
      }
    });
  }
}
