import 'package:flutter/material.dart';
import 'package:two_app/pages/blog_data.dart';

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
          padding: const EdgeInsets.all(5),
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
                    blog[id].commonName,
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
                        blog[id].scientificName,
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
                      Text(blog[id].localname)
                    ],
                  ),
                  Row(
                    children: [
                      const Text(
                        "Deails: ",
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      Text(
                        blog[id].details,
                        textAlign: TextAlign.justify,
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
