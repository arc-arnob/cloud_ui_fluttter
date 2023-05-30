import 'package:flutter/material.dart';

class ProjectPage extends StatefulWidget {
  final String folderName;
  const ProjectPage({super.key, required this.folderName});

  @override
  State<ProjectPage> createState() => _ProjectPageState();
}

class _ProjectPageState extends State<ProjectPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade100,
        // TODO: REPETATIVE CODE
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(
                vertical: 25,
                horizontal: 25,
              ),
              alignment: Alignment.bottomCenter,
              height: 170,
              decoration: BoxDecoration(color: Colors.grey.shade200),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Chatbox',
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Project',
                        style: TextStyle(
                          fontSize: 17,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.grey.shade300,
                        ),
                        child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.search,
                              size: 28,
                              color: Colors.blue,
                            )),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.grey.shade300),
                        child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.share,
                              size: 28,
                              color: Colors.blue,
                            )),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 25, top: 25),
              height: 145,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  buildAvatar('Arnob', 'amber'),
                  buildAvatar('Arnob', 'amber'),
                  buildAvatar('Arnob', 'amber'),
                  buildAvatar('Arnob', 'amber'),
                  buildAvatar('Arnob', 'amber'),
                  buildAvatar('Arnob', 'amber'),
                  buildAvatar('Arnob', 'amber'),
                  buildAvatar('Arnob', 'amber'),
                  buildAvatar('Arnob', 'amber')
                ],
              ),
            ),
            const Divider(),
          ],
        ));
  }

  Widget buildAvatar(String name, String color) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Column(
        children: [
          const CircleAvatar(
            radius: 30,
            backgroundColor: Colors.amber,
          ),
          const SizedBox(
            height: 8,
          ),
          Text(name,
              style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 15))
        ],
      ),
    );
  }
}
