import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Provider/userJsonProvider.dart';

class ShowUserData extends StatelessWidget {
  const ShowUserData({super.key});

  @override
  Widget build(BuildContext context) {
    UserJsonProvider userJsonProvider = Provider.of<UserJsonProvider>(context);

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
            itemCount: userJsonProvider.userList.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: Card(
                color: const Color(0xff222428),
                child: ListTile(
                  leading: Text(userJsonProvider.userList[index].id.toString(),
                      style: TextStyle(fontSize: width * 0.0365)),
                  title: Text(userJsonProvider.userList[index].name),
                  subtitle: Text(userJsonProvider.userList[index].username),
                  trailing: Text(userJsonProvider.userList[index].company.name),
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
