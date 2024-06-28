import 'package:flutter/material.dart';
import '../ui/menu_item.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  void goTo(BuildContext context, String path) {
    Navigator.of(context).pushNamed(path);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: GridView.count(crossAxisCount: 3,
        children: [
          MenuItem(
            label: "User",
            icon: Icons.people,
            color: Color.fromARGB(255, 3, 36, 247),
            onPress: () => goTo(context, '/login'),
          ),
          MenuItem(
            label: "Tool",
            icon: Icons.list,
            color: Color.fromARGB(255, 77, 77, 77),
          ),
          MenuItem(
            label: "Photo",
            icon: Icons.camera,
            color: Color.fromARGB(255, 255, 32, 32),
          ),
          MenuItem(
            label: "Album",
            icon: Icons.image,
            color: Color.fromARGB(255, 28, 7, 7),
          ),
          MenuItem(
            label: "Comment",
            icon: Icons.comment,
            color: Color.fromARGB(255, 10, 238, 162),
            onPress: () => goTo(context, '/post'),
          ),
          MenuItem(
            label: "Post",
            icon: Icons.post_add,
            color: Color.fromARGB(255, 40, 0, 151),
            onPress: () => goTo(context, '/post'),
          ),
        ],
      ),
    );
  }
}