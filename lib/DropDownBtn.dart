import 'package:flutter/material.dart';

class dropDoun extends StatefulWidget {
  @override
  State<dropDoun> createState() => _dropDounState();
}

class _dropDounState extends State<dropDoun> {
  String? initValue;
  List<String> coloritem=["red","green","blue","yellow"];
  String? selectedItem;
  Color color = Colors.grey;

  Map<String, Color> colorMap = {
    'red': Colors.red,
    'green': Colors.green,
    'blue': Colors.blue,
    'yellow': Colors.yellow,
    'white': Colors.white,
  };

  Color getColorFromString(String colorName) {
    return colorMap[colorName] ?? Colors.white;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: color,
        body: Center(
            child: SizedBox(
              width: 200,
              child: DropdownButtonFormField(
                decoration: InputDecoration(
                    fillColor: Colors.grey[200],
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)
                    )
                ),
                value: initValue,
                items: coloritem.map((item){
                  return DropdownMenuItem(child: Text(item),
                    value: item,);
                }).toList(),
                onChanged: (v){
                  setState(() {
                    selectedItem=v;
                    color= getColorFromString(selectedItem!);
                  });
                },
                borderRadius: BorderRadius.circular(40),
                icon: Icon(Icons.colorize),
                menuMaxHeight: 140,

              ),
            )

        )
    );
  }
}

