import 'package:flutter/material.dart';
import 'package:gallery_project/Photo/photo_list.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffbfc9c2),
        toolbarHeight: 100,


        title: Center(
          child: Text(
            "Gallery ",

                style: TextStyle(color: Colors.black, fontSize: 30),
          ),
        ),

      ),
      body: GridView.builder(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        crossAxisSpacing: 5,

      ),

          itemCount: Photo.length,

          itemBuilder: (BuildContext Context, int indext){
        return Container(
          padding: EdgeInsets.all(15),

          child: Center(child: Image.network('${Photo[indext].url} ',height: 200, width: 250, fit:BoxFit.cover ,), ),
        );
          }



      ),
    );
  }
}
