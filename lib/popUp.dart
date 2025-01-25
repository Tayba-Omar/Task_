import 'package:flutter/material.dart';

class PopUpMenu extends StatefulWidget {
  @override
  State<PopUpMenu> createState() => _PopUpMenuState();
}

class _PopUpMenuState extends State<PopUpMenu> {
  List<String> coloritem=["red","green","blue","yellow"];
  String? selectedItem;
  Color color = Colors.black;

  Map<String, Color> colorMap = {
    'red': Colors.red,
    'green': Colors.green,
    'blue': Colors.blue,
    'yellow': Colors.yellow,
    'white': Colors.white,
  };

  Color getColorFromString(String colorName) {
    return colorMap[colorName] ?? Colors.black;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: color,
        title: Text("app bar"),
        actions: [
          PopupMenuButton(itemBuilder: (context){
            return coloritem.map((i){
              return PopupMenuItem(

                child: Text(i),
                value: i,);
            }).toList();

          },
            onSelected:(i){setState(() {
              selectedItem=i;
              color= getColorFromString(selectedItem!);

            });

            },
            onCanceled: (){
              print("close");
            },
            icon: Icon(Icons.search),
            position: PopupMenuPosition.under,
          )
        ],
      ),
    );
  }
}
