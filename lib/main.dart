import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/model/TravelModel.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 2;
  double imageSize = 55;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        //safeArea برای اینکه تداخلی در استاتوس بار و اپ به وجود نیاد
        //‍‍\ایین کشیدن برنامه جهت عدم تداخل دراستاتوس بار
        body: SafeArea(
      child: Column(
        children: [
          Container(
              color: Colors.red,
              width: double.infinity,
              height: size.height / 1.8,
              //شروع استک
              child: Stack(children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(65),
                          bottomRight: Radius.circular(65)),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(travelList[_selectedIndex].image))),
                  width: double.infinity,
                  height: size.height / 2.1,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FloatingActionButton(
                        mini: true,
                        materialTapTargetSize: MaterialTapTargetSize.padded,
                        backgroundColor:
                            const Color.fromARGB(80, 255, 255, 255),
                        shape: const CircleBorder(),
                        child: const Icon(CupertinoIcons.chevron_back),
                        onPressed: () {},
                      ),
                      FloatingActionButton(
                        mini: true,
                        materialTapTargetSize: MaterialTapTargetSize.padded,
                        backgroundColor:
                            const Color.fromARGB(80, 255, 255, 255),
                        shape: const CircleBorder(),
                        onPressed: () {},
                        child: const Icon(CupertinoIcons.heart),
                      ),
                    ]),
                /*Positioned(
                  right: 20,
                  bottom: 10,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: const BorderRadius.all(
                                  Radius.elliptical(10, 10)),
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(travelList[0].image))),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: const BorderRadius.all(
                                  Radius.elliptical(10, 10)),
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(travelList[1].image))),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: const BorderRadius.all(
                                  Radius.elliptical(10, 10)),
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(travelList[2].image))),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: const BorderRadius.all(
                                  Radius.elliptical(10, 10)),
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(travelList[3].image))),
                        ),
                      ),
                    ],
                  ),
                )
              */
                ListView.builder(
                  itemCount: travelList.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: InkWell(
                            child: AnimatedContainer(
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.white, width: 2),
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(travelList[index].image)),
                              ),
                              width: _selectedIndex == index
                                  ? imageSize + 20
                                  : imageSize,
                              height: _selectedIndex == index
                                  ? imageSize + 20
                                  : imageSize,
                              duration: const Duration(milliseconds: 200),
                            ),
                            onTap: () {
                              setState(() {
                                _selectedIndex = index;
                              });
                            },
                          ),
                        ),
                      ],
                    );
                  },
                )
              ])),
          Expanded(
            child: Container(color: Colors.blue, width: double.infinity),
          ),
        ],
      ),
    ));
  }
}
