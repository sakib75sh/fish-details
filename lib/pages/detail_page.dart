import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:two_app/pages/blog_data.dart';
import 'package:two_app/route_page.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key, required this.id});
  final int id;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Most cultured species in Bangladesh"),
        centerTitle: true,
      ),
      body: IntrinsicHeight(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: const Color.fromARGB(255, 238, 219, 160),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(
                    blog[id - 1].commonName,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Row(
                    children: [
                      const Text(
                        "Scientific Name: ",
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      Text(
                        blog[id - 1].scientificName,
                        style: const TextStyle(fontStyle: FontStyle.italic),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      const Text(
                        "Local Name: ",
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      Text(blog[id - 1].localname)
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),

                  //details

                  Text.rich(
                      textAlign: TextAlign.justify,
                      TextSpan(children: [
                        const TextSpan(
                          text: "Details: ",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(text: blog[id - 1].details)
                      ])),
                  ElevatedButton(
                      onPressed: () {
                        context.go(Routes.profile, 
                          // '${Routes.about}/${Routes.picture}'
                          );
                      },
                      child: const Text("picture"))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
