import 'package:flutter/material.dart';

class Tugas extends StatefulWidget {
  const Tugas({Key? key}) : super(key: key);

  @override
  State<Tugas> createState() => _TugasState();
}

class _TugasState extends State<Tugas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Website Pemesanan Makanan',
          style: TextStyle(
            color: Color.fromARGB(255, 255, 200, 105),
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 3,
        backgroundColor: const Color.fromARGB(255, 124, 0, 161),
        actions: const [
          Icon(
            Icons.logout,
            color: Colors.white,
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.person,
            color: Colors.white,
          ),
          SizedBox(
            width: 10,
          ),
        ],
        leading: const Icon(
          Icons.settings,
          color: Colors.white,
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      margin: const EdgeInsets.all(16),
                      padding: const EdgeInsets.all(16),
                      width: 300,
                      height: 300,
                      child: Image.asset('assets/images/123.jpg'),
                    ),
                    Container(
                      margin: const EdgeInsets.all(16),
                      padding: const EdgeInsets.all(16),
                      width: 300,
                      height: 300,
                      child: Image.asset('assets/images/123.jpg'),
                    ),
                  ],
                );
              },
              itemCount: 10,
              separatorBuilder: (context, index) {
                return const Divider();
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              //physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return const Card(
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/123.jpg'),
                    ),
                    title: Text('Judul ❤️'),
                    subtitle: Text('asik'),
                    trailing: Icon(Icons.thumb_up, color: Colors.blue),
                  ),
                );
              },
              itemCount: 10,
            ),
          ),
        ],
      ),
    );
  }
}
