import 'package:flutter/material.dart';

class ListMenu extends StatefulWidget {
  const ListMenu({Key? key}) : super(key: key);

  @override
  _ListMenuState createState() => _ListMenuState();
}

class _ListMenuState extends State<ListMenu> {
  final _listmenu = ['🚀 All', '🔥 Popular', '🎁 Featured', '💕 Upcoming', '😀 Recent','❤ Favorite'];

  var selected = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,

      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: (){setState(() {
                selected=index;
              });},
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                      width: 1.5,
                      color: selected==index?Colors.black:Colors.transparent),
                  color:selected==index? Colors.yellow:Colors.white.withOpacity(.2),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 8,right: 8,top: 5,bottom: 5),
                  child: Center(child: Text(_listmenu[index],style: TextStyle(color: Colors.black,fontSize: 14),)),
                ),
              ),
            );
          },
          separatorBuilder: (context, index) => SizedBox(
                width: 10,
              ),
          itemCount: _listmenu.length),
    );
  }
}
