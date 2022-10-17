import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:practice/pages/pages.dart';

import 'instagram/main_page.dart';

class Directory extends StatelessWidget {
  const Directory({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: pages.length,
        itemBuilder: (BuildContext ctx, int idx) {
          return Container(
            height: 100,
            child: Card(
              child: InkWell(
                onTap: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const FeedScreen(),
                    ),
                  )
                },
                child: Card(
                  child: Row(children: [Text(pages[idx].title)]),
                ),
              ),
            ),
          );
        });
  }
}
