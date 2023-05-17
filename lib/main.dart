import 'package:flutter/material.dart';

void main() {
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> images = [
      'https://optimise2.assets-servd.host/maniacal-finch/production/animals/african-lion-01-01.jpg?w=1200&auto=compress%2Cformat&fit=crop&dm=1658933674&s=4b63f926a0f524f2087a8e0613282bdb',
      'https://images.unsplash.com/photo-1601625463687-25541fb72f62?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8Mnx8fGVufDB8fHx8&w=1000&q=80'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('TEst_7'),
          centerTitle: true,
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 300,
                child: PageView.builder(
                    itemCount: 2,
                    pageSnapping: true,
                    itemBuilder: (ctx, position) {
                      return Container(
                        margin: const EdgeInsets.all(10),
                        child: Image.network(
                          images[position],
                          fit: BoxFit.contain,
                        ),
                      );
                    }),
              ),
              const SizedBox(
                height: 20,
              ),
              const Card(
                child: ListTile(
                  leading: Icon(
                    Icons.person_2_outlined,
                    size: 20,
                  ),
                  title: Text(
                    'Dorah Swai',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Card(
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    size: 20,
                  ),
                  title: Text(
                    'Dorahswai@gmail.com',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Card(
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    size: 20,
                  ),
                  title: Text(
                    '255766303775',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
