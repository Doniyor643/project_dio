import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:project_provider/models/post_model.dart';

Widget viewOfBody(Post post) {
  return Slidable(
    endActionPane: ActionPane(motion: const DrawerMotion(), children: [
      SlidableAction(
        backgroundColor: Colors.red,
        onPressed: (context) {},
        icon: Icons.delete_outline,
        label: "Delete",
      ),
      SlidableAction(
        backgroundColor: Colors.green,
        onPressed: (context) {},
        icon: Icons.drive_file_rename_outline,
        label: "Rename",
      ),
    ]),
    child: Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
      child: Column(children: [
        Text(post.title.toUpperCase(), style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
        Text(post.body, style: const TextStyle(color: Colors.black)),
        const SizedBox(height: 20,),
        Container(
          height: 2,
          width: double.infinity,
          color: Colors.purpleAccent,
        )
      ]),
    ),
  );
}
