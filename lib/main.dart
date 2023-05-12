import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class Person {
  String? image;
  String? user;
  String? name;

  Person(this.image, this.user, this.name);

  @override
  String toString() {
    return 'Person{image: $image, user: $user, name: $name}';
  }
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final List<Person> _personList = [
      Person('https://randomuser.me/api/portraits/women/36.jpg', 'Su Su',
          '@susus'),
      Person(
          'https://randomuser.me/api/portraits/women/37.jpg', 'Ma Ma', '@mama'),
      Person('https://randomuser.me/api/portraits/women/38.jpg', 'Aye Aye',
          '@ayeaye'),
      Person('https://randomuser.me/api/portraits/women/39.jpg', 'Christna',
          '@christ'),
      Person('https://randomuser.me/api/portraits/women/40.jpg', 'Su Su',
          '@susus'),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text("Contact List"),
      ),
      body: ListView.builder(
          itemCount: _personList.length,
          itemBuilder: (BuildContext context, index) {
            return Card(
                child: ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage("${_personList[index].image}"),
              ),
              title: Text("${_personList[index].user}"),
              subtitle: Text("${_personList[index].name}"),
              trailing:
                  ElevatedButton(onPressed: () {}, child: const Text('follow')),
            ));
          }),
    );
  }
}
