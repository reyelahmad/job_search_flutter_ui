import 'package:flutter/material.dart';

class SearchOption extends StatelessWidget {
  const SearchOption({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 300,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(35),
          image: DecorationImage(
              image: AssetImage("assets/images/search_bg.png"),
              fit: BoxFit.cover)),
      child: Padding(
        padding: const EdgeInsets.only(top: 25,left: 20,right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Fast Search",style: TextStyle(fontSize: 32,fontWeight: FontWeight.w600, color: Colors.white.withOpacity(.8)),),
            Text("You can search quickly for \nthe job you want",style: TextStyle(fontSize: 22,height: 1.6,color: Colors.white.withOpacity(.8)),),
            SizedBox(height: 10,),
            Container(height: 50,width: double.infinity,decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.9),
              borderRadius: BorderRadius.circular(25),
            ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                    Icon(Icons.search,size: 35,color: Colors.grey.shade500,),
                    Text("Search",style: TextStyle(fontSize: 17,height: 1.6,color: Colors.grey.withOpacity(.8)))
                  ],),
              ),
            )
          ],
        ),
      ),
    );
  }
}
