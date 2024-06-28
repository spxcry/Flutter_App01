// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class PostScreen extends StatelessWidget {
  const PostScreen({super.key});

  Future<List> fetchPost() async {
    try {
      // final resp = await Dio().get("https://jsonplaceholder.typicode.com/posts");
      final resp = await Dio().get("https://reqres.in/api/users?page=1");
      if (resp.statusCode == 200) {
        // return resp.data ?? [];
        return resp.data['data'] ?? [];
      }
      return [];
      // print(resp.statusCode);
    } catch (e) {
      throw (e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fetch data from JSON API"),
      ),
      body: FutureBuilder(
        future: fetchPost(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                var user = snapshot.data![index];
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(user["avatar"]),
                  ),
                  title: Text("${user["first_name"]} ${user["last_name"]}"),
                  subtitle: Text("${user["email"]}"),
                );
              },
            );
          } else {
            return const CircularProgressIndicator();
          }
        },
      ),
    );
  }
}
