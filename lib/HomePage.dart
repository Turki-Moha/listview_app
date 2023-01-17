import 'package:flutter/material.dart';

List<Color> col = [
  Colors.red,
  Colors.blue,
  Colors.cyan,
  Colors.green,
  Colors.orange,
  Colors.red,
  Colors.blue,
  Colors.cyan,
  Colors.green,
  Colors.orange,
];                           

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Youtube Music"),
        backgroundColor: Colors.red[700],
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          SizedBox(
            height: 200,
            child: ListView.builder(
              itemCount: 5,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Container(
                height: 180,
                width: 150,
                margin: const EdgeInsets.all(15),
                color: Colors.red,
                child: Column(
                  children: [
                    Image.asset('assets/Coldplay.png'),
                    Text(
                      'Remix ${index + 1}',
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Flexible(
            child: ListView.builder(
              itemCount: 10,
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) => Container(
                height: 70,
                width: 300,
                margin: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: col[index],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset('assets/Coldplay.png'),
                    Text(
                      'Track ${index + 1}',
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const Text(
                      'Yellow',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                        fontSize: 16,
                      ),
                    ),
                    const Text(
                      'Coldplay',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
