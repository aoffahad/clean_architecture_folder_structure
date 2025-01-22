import 'package:flutter/material.dart';
import 'package:flutter_practice/data/models/user_model_class.dart';
import 'package:go_router/go_router.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Details Page'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MaterialButton(
              onPressed: () {
                context.pushNamed('/profile',
                    extra: User(
                        name: "Md Omar Faruque Fahad",
                        designation: "Junior Software Engineer",
                        imageUrl:
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSXWvZXCZfiBSxyh1HDivG8mdLaDHptyrY80w&s"));
              },
              color: Colors.purple,
              child: const Text(
                "Profile Page",
                style: TextStyle(color: Colors.white),
              ),
            ),
            MaterialButton(
              onPressed: () {
                context
                    .pushNamed('/pricing', pathParameters: {"price": "99.99"});
              },
              color: Colors.purpleAccent,
              child: const Text(
                "Pricing Page",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Icon(Icons.arrow_back),
      ),
    );
  }
}
