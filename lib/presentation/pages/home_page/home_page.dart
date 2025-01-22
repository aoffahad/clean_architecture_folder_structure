import 'package:flutter/material.dart';
import 'package:flutter_practice/presentation/pages/details_page.dart';
import 'package:go_router/go_router.dart';

import '../../widgets/custom_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile Card"),
      ),
      body: Center(
        child: Column(
          children: [
            CustomCard(
              onChangeCallback: () {
                context.pushNamed('/details');
              },
              title: 'Md Omar Faruque Fahad',
              subtitle: "Flutter",
              icon: Icons.accessibility_new_sharp,
              backgroundColor: Colors.white10,
            )
          ],
        ),
      ),
    );
  }
}
