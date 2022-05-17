import 'package:flutter/material.dart';

class BodyHome extends StatelessWidget {
  const BodyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
       Container(
        //  child:  TextFormField(),
          child: Image.asset(
            'assets/img/rubi.png',
            height: 680,
          ),
          color: const Color.fromARGB(255, 168, 149, 148),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: DraggableScrollableSheet(
            initialChildSize: 0.3,
            minChildSize: 0.1,
            maxChildSize: 0.6,
            builder: (context, scrollController) => Container(
              decoration: const BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: ListView.separated(
                  controller: scrollController,
                  itemBuilder: ((context, index) {
                    return ListTile(
                      title: Text('Item $index'),
                      trailing: const Icon(Icons.chevron_right),
                    );
                  }),
                  separatorBuilder: (__, _) => const Divider(),
                  itemCount: 20,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
