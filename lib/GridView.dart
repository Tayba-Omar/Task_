import 'package:flutter/material.dart';
class gridView extends StatefulWidget {
  @override
  State<gridView> createState() => _gridViewState();
}

class _gridViewState extends State<gridView> {
  List<String> list=["home","contant","map","phone","camera","settings","album","WIFI"];
  Map<String, IconData> option = {
    'home': Icons.home,
    'contant': Icons.contact_phone,
    'map': Icons.map,
    'phone': Icons.phone,
    'camera': Icons.camera,
    'settings': Icons.settings,
    'photo': Icons.photo,
    'WIFI': Icons.wifi,
  };
  IconData getIconFromString(String name) {
    return option[name.toLowerCase()] ?? Icons.help;
  }

  Widget box(String chose){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.orange,
        ),
        child: Column(children: [
          SizedBox(
            height: 15,
          ),
          Icon(getIconFromString(chose),size: 40,),
          Text(chose,style:TextStyle(fontSize: 20),),
        ],

        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("Flutter grid view demo",
          style: TextStyle(color: Colors.white),)
      ),
      body: GridView.builder(
        itemCount: list.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          itemBuilder: (context,index){
          return box(list[index]);

    },
      ),
    );
  }
}


