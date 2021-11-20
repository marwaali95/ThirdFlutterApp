
import 'package:flutter/material.dart';

void main() {

 runApp(MaterialApp(
   title: "Exploring Long List ",
   home: Scaffold(
     appBar: AppBar(
       title: Text("Basic Long List "),
     ),
       body: GetLongList(),
     floatingActionButton: FloatingActionButton(
         onPressed: null,
       child: Icon(Icons.add),
       tooltip: "Add one more Item",
     ),

   )
 ));
}
List<String> getListElement()
{
  var listItems = List<String>.generate(1000, (counter)=>"Item $counter");
  return listItems;
}
Widget GetLongList()
{
  var listItems= getListElement();
  var listview=ListView.builder(
      itemBuilder: (context, index)
      {
        return ListTile(
title:Text(listItems[index]),
          leading: Icon(Icons.favorite),
        onTap: (){},
        );
      } );
return listview;
}
/*Widget GetListView()
{

  var listView = ListView(
    children: <Widget>[
      ListTile(
        leading: Icon(Icons.landscape),
        title: Text("Choose Landscape Image"),
        subtitle: Text("beautiful view"),
        trailing: Icon(Icons.wb_sunny),
        onTap: (){
          debugPrint("Landscape Tapped");
        },
      )
    ,
      ListTile(
        leading: Icon(Icons.ac_unit),
        title: Text("Temperature"),
        ),
      ListTile(
        leading: Icon(Icons.phone),
        title: Text("Phone"),
      )
      ,
      Text("New List View Item of Text Widget")
      ,
      Container(
        color: Colors.teal,
        width: 100.0,
        height: 70.0,
      )
    ],
  );
  return listView;
}*/