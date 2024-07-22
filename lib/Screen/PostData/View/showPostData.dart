import 'package:flutter/material.dart';
import 'package:json_data/Screen/PostData/Provider/postJsonProvider.dart';
import 'package:provider/provider.dart';

class ShowPostData extends StatelessWidget {
  const ShowPostData({super.key});

  @override
  Widget build(BuildContext context) {
    PostJsonProvider postJsonProvider = Provider.of<PostJsonProvider>(context);
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
            itemCount: postJsonProvider.postModel.posts.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: Card(
                color: const Color(0xff222428),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: Text(
                            'User Id : ${postJsonProvider.postModel.posts[index].userId.toString()}',
                            style: TextStyle(fontSize: width * 0.0365)),
                      ),
                      const SizedBox(height: 2),
                      Text(
                          "'${postJsonProvider.postModel.posts[index].title}'"),
                      const SizedBox(height: 2),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                            postJsonProvider.postModel.posts[index].tags.length,
                            (index) => Text(
                                '${postJsonProvider.postModel.posts[index].tags[index]}, ')),
                      ),
                      const SizedBox(height: 2),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                              'likes : ${postJsonProvider.postModel.posts[index].reactions.likes.toString()}  '),
                          Text(
                              'dislikes : ${postJsonProvider.postModel.posts[index].reactions.dislikes.toString()}'),
                        ],
                      ),
                    ],
                  ),
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
