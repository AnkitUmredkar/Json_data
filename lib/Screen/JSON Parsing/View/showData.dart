import 'package:flutter/material.dart';
import 'package:json_data/Screen/JSON%20Parsing/Provider/jsonProvider.dart';
import 'package:provider/provider.dart';

class ShowData extends StatelessWidget {
  const ShowData({super.key});

  @override
  Widget build(BuildContext context) {
    JsonProvider jsonProvider = Provider.of<JsonProvider>(context);
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: const Icon(
            Icons.menu,
            color: Colors.white,
          ),
          toolbarHeight: 70,
          centerTitle: true,
          backgroundColor: Colors.blue.shade700,
          title: const Text(
            'JSON Parsing',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.fromLTRB(
              width * 0.02, height * 0.016, width * 0.02, height * 0.014),
          child: ListView.builder(
            itemCount: jsonProvider.photoList.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: Card(
                color: const Color(0xff222428),
                child: ListTile(
                  leading: Container(
                    width: width * 0.14,
                    height: width * 0.14,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image:
                                NetworkImage(jsonProvider.photoList[index].url),
                            fit: BoxFit.cover)),
                  ),
                  title: Text(jsonProvider.photoList[index].title),
                  subtitle: Text(
                      'id : ${jsonProvider.photoList[index].id.toString()}'),
                ),
              ),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.blue.shade700,
          onPressed: () {},
          child: Icon(
            Icons.javascript_sharp,
            size: width * 0.094,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
