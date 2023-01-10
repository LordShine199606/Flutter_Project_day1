import 'dart:convert';

import 'package:first_project_text/Model/place_model.dart';
import 'package:first_project_text/components/viagem.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PageInicial extends StatefulWidget {
  const PageInicial({super.key});

  @override
  State<PageInicial> createState() => _PageInicialState();
}

class _PageInicialState extends State<PageInicial> {
  List category = [
    "ALL",
    "Luanda",
    "Bié",
    "Kwanza Sul",
    "Namibe",
  ];
  int clicked = 0;

  @override
  void initState() {
    //WidgetsBinding.instance.addPersistentFrameCallback((timeStamp) async {
    loadjson();
   // });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double myHeigth = MediaQuery.of(context).size.height;
    double mywidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
          height: myHeigth,
          width: mywidth,
          child: Column(
            children: [
              Container(
                height: myHeigth * 0.2,
                child: Padding(
                  padding: EdgeInsets.only(
                      top: myHeigth * 0.05,
                      left: mywidth * 0.03,
                      right: mywidth * 0.03),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: myHeigth * 0.065,
                            width: mywidth * 0.1,
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                    image:
                                        AssetImage('assets/image/Miguel.jpg'),
                                    fit: BoxFit.cover)),
                          ),
                          SizedBox(
                            height: myHeigth * 0.5,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(13.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Olá Sr.',
                                  style: TextStyle(color: Colors.grey),
                                ),
                                Text(
                                  'Miguel Manuel',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      Image.asset(
                        'assets/Icon/Icon_notify.png',
                        height: myHeigth * 0.03,
                        color: Colors.deepPurple.shade700.withOpacity(0.5),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                height: myHeigth * 0.1,
                width: mywidth,
                child: Padding(
                  padding: EdgeInsets.only(
                      // top: myHeigth*0.05,
                      left: mywidth * 0.03,
                      right: mywidth * 0.03),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: myHeigth * 0.05,
                        width: mywidth * 0.8,
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 202, 196, 196)
                                .withOpacity(0.4),
                            borderRadius: BorderRadius.circular(20)),
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'PESQUISAR',
                              hintStyle:
                                  TextStyle(fontSize: 15, color: Colors.grey),
                              icon: Image.asset(
                                'assets/Icon/Seach2.png',
                                height: myHeigth * 0.03,
                                color: Colors.grey,
                              )),
                        ),
                      ),
                      SizedBox(
                        height: myHeigth * 0.03,
                      ),
                      Container(
                        height: myHeigth * 0.05,
                        width: mywidth * 0.1,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            gradient: const LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  Color.fromARGB(255, 159, 129, 209),
                                  Color.fromARGB(255, 223, 220, 220)
                                ])),
                        child: Center(
                          child: Image.asset(
                            'assets/Icon/Menu_icon_icon-icons.com_71858.png',
                            height: myHeigth * 0.03,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                height: myHeigth * 0.06,
                width: mywidth,
                child: ListView.builder(
                    itemCount: category.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: ((context, index) {
                      return categoryWidget(index);
                    })),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: myHeigth * 0.03,
                    left: mywidth * 0.05,
                    right: mywidth * 0.05),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Recomendado',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Ver Tudo',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                          color: Colors.grey),
                    )
                  ],
                ),
              ),
              Expanded(
                  child: ListView.builder(
                itemCount: placeList.length,
                itemBuilder: (context, index) {
                  return viagemPage(
                    index: index,
                    item: placeList,
                  );
                },
              ))
            ],
          )),
    );
  }

  Widget categoryWidget(int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: GestureDetector(
        onTap: () {
          setState(() {
            clicked = index;
          });
        },
        child: Container(
          padding: const EdgeInsets.all(7),
          decoration: clicked == index
              ? BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  gradient: const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color.fromARGB(255, 159, 129, 209),
                        Color.fromARGB(255, 223, 220, 220)
                      ]))
              : BoxDecoration(
                  borderRadius: BorderRadius.circular(12), color: Colors.white),
          child: Center(
              child: Text(
            category[index],
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: clicked == index ? Colors.white : Colors.grey,
                fontSize: 15),
          )),
        ),
      ),
    );
  }

  List myData = [];

  List<PlaceModel> placeList = [];

  loadjson() async {
    String data = await rootBundle.loadString('assets/json/data.json');

    setState(() {
      myData = jsonDecode(data);
      placeList = myData.map((e) => PlaceModel.fromJson(e)).toList();
      placeList = placeList;
    });
  }
}
