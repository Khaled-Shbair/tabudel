import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  int selectedIndex = 0;
  List<IconData> data = [
    Icons.person,
    Icons.volunteer_activism_sharp,
    Icons.notifications_active,
    Icons.home,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 50,
        margin: const EdgeInsetsDirectional.only(
          start: 37,
          end: 37,
          bottom: 24,
        ),
        decoration: BoxDecoration(
          color: const Color(0XFF464698),
          borderRadius: BorderRadius.circular(10),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(40),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int x = 0; x < data.length; x++) ...<Expanded>{
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        selectedIndex=x;
                      });
                    },
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(data[x], color: Colors.white),
                        ],
                      ),
                    ),
                  ),
                ),
              }
            ],
          ),
        ),
      ),
    );
  }
}
/*

 bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20),
        child: Material(
          elevation: 10,
          borderRadius: BorderRadius.circular(20),
          color: const Color(0XFF464698),
          child: Container(
            height: 49,
            width: double.infinity,
            child: ListView.builder(
              itemCount: data.length,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = index;
                    });
                  },
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 150),
                    width: 5,
                    // padding:EdgeInsetsDirectional.all(5),
                    margin: EdgeInsetsDirectional.only(bottom: 15),
                    decoration: BoxDecoration(
                      border: index == selectedIndex
                          ? const Border(
                              bottom: BorderSide(width: 3, color: Colors.white),
                            )
                          : null,
                    ),
                    child: Icon(
                      data[index],
                      size: 35,
                      color: index == selectedIndex
                          ? Colors.black
                          : Colors.grey.shade800,
                    ),
                  ),
                ),
              ),
              scrollDirection: Axis.horizontal,
            ),
          ),
        ),
      ),
 */
/*

 Padding(
        padding: const EdgeInsets.all(20),
        child: Material(
          elevation: 10,
          borderRadius: BorderRadius.circular(20),
          color: Colors.black,
          child: Container(
            height: 70,
            width: double.infinity,
            child: ListView.builder(
              itemCount: data.length,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = index;
                    });
                  },
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 250),
                    width: 35,
                    decoration: BoxDecoration(

                      border: index == selectedIndex
                          ? const Border(
                              bottom: BorderSide(width: 3, color: Colors.white),
                      )
                          : null,

                    ),
                    child: Icon(
                      data[index],
                      size: 35,
                      color: index == selectedIndex
                          ? Colors.black
                          : Colors.grey.shade800,
                    ),
                  ),
                ),
              ),
              scrollDirection: Axis.horizontal,
            ),
          ),
        ),
      ),

*/

/*
Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20),
        child: Material(
          elevation: 10,
          borderRadius: BorderRadius.circular(20),
          color: const Color(0XFF464698),
          child: Container(
            height: 49,
            width: double.infinity,
            child: ListView.builder(
              itemCount: data.length,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = index;
                    });
                  },
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 150),
                    width: 5,
                   // padding:EdgeInsetsDirectional.all(5),
                    margin: EdgeInsetsDirectional.only(bottom: 15),
                    decoration: BoxDecoration(

                      border: index == selectedIndex
                          ? const Border(
                              bottom: BorderSide(width: 3, color: Colors.white),
                      )
                          : null,

                    ),
                    child: Icon(
                      data[index],
                      size: 35,
                      color: index == selectedIndex
                          ? Colors.black
                          : Colors.grey.shade800,
                    ),
                  ),
                ),
              ),
              scrollDirection: Axis.horizontal,
            ),
          ),
        ),
      ),
    );
* */
/*

Stack(
        children: [
          Align(
            alignment: const Alignment(0.0, 1.0),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(30)),
                child: BottomNavigationBar(
                  selectedItemColor: Colors.white,
                  unselectedItemColor: Colors.grey,
                  showSelectedLabels: true,
                  showUnselectedLabels: false,
                  backgroundColor: Colors.black,
                  onTap: (int index) {
                    setState(() {
                      selectedIndex = index;
                    });
                  },
                  items: const [

                    BottomNavigationBarItem(

                        icon: Icon(Icons.home),
                      label: '',
                    ),
                    BottomNavigationBarItem(

                      icon: Icon(Icons.home),
                      label:'',
                    ),
                    BottomNavigationBarItem(

                      icon: Icon(Icons.home),
                      label: '',
                    ),

                  ],
                ),
              ),
            ),
          ),
        ],
      ),
 */
