import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:two_app/pages/blog_data.dart';
import 'package:two_app/route_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Available inland fish species in Bangladesh"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.separated(
            separatorBuilder: (context, state) => const Divider(),
            itemCount: blog.length,
            itemBuilder: (context, index) => ListTile(
              onTap: () => context.goNamed(Routes.details,
                  pathParameters: {'id': blog[index].id.toString()}),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              tileColor: const Color.fromARGB(255, 131, 247, 139),
              title: Text(
                blog[index].commonName,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    blog[index].scientificName,
                    style: const TextStyle(
                        fontStyle: FontStyle.italic,
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    blog[index].details,
                    maxLines: 2,
                    style: const TextStyle(color: Colors.black),
                    textAlign: TextAlign.justify,
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
