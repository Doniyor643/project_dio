
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_provider/services/dio_service.dart';
import 'package:project_provider/views/home_view.dart';
import '../models/post_model.dart';
import 'new_post.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<Post>? items = [];
  @override
  void initState() {
    DioService().getResponse().then((response) => {
      setState((){
        items = response;
      })
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Provider & Dio"),
        ),
        body: Stack(
          children: [
            DioService.isLoading
                ?
            const Center(
              child: CircularProgressIndicator(),
                )
                :
            ListView.builder(
              itemCount: items!.length,
              itemBuilder: (context,index){
                return viewOfBody(items![index]);
              })
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>const CreateUser()));
          },
          child: const Icon(Icons.add),
        ));
  }
}
