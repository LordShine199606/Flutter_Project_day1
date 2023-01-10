import 'package:first_project_text/Model/place_model.dart';
import 'package:flutter/material.dart';

class SelecaodePaginas extends StatefulWidget {
  PlaceModel? selecaoLugares;

  SelecaodePaginas({this.selecaoLugares});

  @override
  State<SelecaodePaginas> createState() => _SelecaodePaginasState();
}

class _SelecaodePaginasState extends State<SelecaodePaginas> {
  @override
  void initState() {
    itemPreco = widget.selecaoLugares!.price!;
    totalPreco = widget.selecaoLugares!.price!;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double myHeigth = MediaQuery.of(context).size.height;
    double mywidth = MediaQuery.of(context).size.width;

    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Container(
          height: myHeigth,
          width: mywidth,
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.only(left: 0, right: 0, top: 0, bottom: 0),
                child: Container(
                    height: myHeigth * 0.4,
                    width: mywidth * 0.9,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 109, 79, 247),
                        borderRadius: BorderRadius.circular(20),
                        // boxShadow: [
                        // BoxShadow(
                        // color: Colors.grey.withOpacity(0.5),
                        // blurRadius: 7,
                        // spreadRadius: 3,
                        // offset: const Offset(0, 5)),
                        // ],
                        image: DecorationImage(
                            image: AssetImage(
                                widget.selecaoLugares!.image.toString()),
                            fit: BoxFit.cover)),
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 5),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Container(
                                height: myHeigth * 0.06,
                                width: mywidth * 0.12,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Colors.grey.withOpacity(0.4)),
                                child: Icon(
                                  Icons.arrow_back,
                                  color: Colors.white,
                                  size: 20,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, bottom: 30),
                          child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 10),
                                  // height: myHeigth * 0.06,
                                  width: mywidth * 0.3,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      color: Colors.grey.withOpacity(0.5)),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.location_on,
                                        color: Colors.white,
                                      ),
                                      Text(
                                        widget.selecaoLugares!.name.toString(),
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: myHeigth * 0.01,
                                ),
                                Text(
                                  'Viagens em Angola',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: myHeigth * 0.01,
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: mywidth * 0.05,
                                    ),
                                    Container(
                                      child: Text(
                                          widget.selecaoLugares!.price
                                                  .toString() +
                                              ' \kzs',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold)),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    )),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 17, vertical: 13),
                child: Row(
                  children: [
                    Text(
                      'Sobre Este Lugar',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 17, vertical: 13),
                child: Row(
                  children: [
                    Flexible(
                      child: Text(
                        widget.selecaoLugares!.about.toString(),
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.normal),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 17, vertical: 13),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.access_time_filled),
                        SizedBox(
                          width: mywidth * 0.02,
                        ),
                        Text(
                          'Duração',
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Text(
                      widget.selecaoLugares!.length.toString() + " Dias",
                      style:
                          TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 17, vertical: 13),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.people_alt),
                        SizedBox(
                          width: mywidth * 0.02,
                        ),
                        Text(
                          'Pessoas',
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            if (itenCompras > 0) {
                              itenCompras--;
                              totalPreco = totalPreco - itemPreco;
                            }
                          },
                          child: Container(
                            height: myHeigth * 0.05,
                            width: mywidth * 0.09,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.black),
                            child: Icon(
                              Icons.remove,
                              color: Colors.white,
                              size: 13,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: mywidth * 0.02,
                        ),
                        Text(itenCompras.toString()),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                itenCompras++;
                                totalPreco = totalPreco + itemPreco;
                              });
                            },
                            child: Container(
                              height: myHeigth * 0.05,
                              width: mywidth * 0.09,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.black),
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 10,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Container(
                      width: mywidth * 0.6,
                      child: Stack(
                        children: [
                          profileItem('assets/image/Miguel.jpg'),
                          Positioned(
                              left: mywidth * 0.1,
                              child:
                                  profileItem('assets/image/AdidasStar.jpg')),
                          Positioned(
                              left: mywidth * 0.2,
                              child: profileItem('assets/image/Naruto.jpg')),
                          Positioned(
                              left: mywidth * 0.3,
                              child:
                                  profileItem('assets/image/Kakashi (1).jpg')),
                          Positioned(left: mywidth * 0.4, child: moreItem()),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                  child: Container(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            totalPreco.toString() + ' \kzs',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 17),
                          ),
                          Row(
                            children: [
                              itenCompras == 1
                                  ? Text(
                                      "" + itenCompras.toString() + " Bilhetes",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17))
                                  : Text(
                                      "" + itenCompras.toString() + " Bilhetes",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17)),
                              Icon(Icons.telegram_rounded),
                            ],
                          ),
                        ],
                      ),
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.black,
                        ),
                        child: Text('COMPRE AGORA',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 10,
                                color: Colors.white)),
                      )
                    ],
                  ),
                ),
              ))
            ],
          ),
        ),
      ),
    ));
  }

  int itenCompras = 0;
  int itemPreco = 0;
  int totalPreco = 0;

  Widget profileItem(String img) {
    double myHeigth = MediaQuery.of(context).size.height;
    double mywidth = MediaQuery.of(context).size.width;

    return Container(
      height: myHeigth * 0.1,
      width: mywidth * 0.13,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.white, width: 3),
          color: Colors.amber,
          shape: BoxShape.circle,
          image: DecorationImage(image: AssetImage(img))),
    );
  }

  Widget moreItem() {
    double myHeigth = MediaQuery.of(context).size.height;
    double mywidth = MediaQuery.of(context).size.width;

    return Container(
      height: myHeigth * 0.1,
      width: mywidth * 0.13,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white, width: 3),
        color: Colors.grey,
        shape: BoxShape.circle,
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 21, left: 8),
        child: Text(
          '+25',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
        ),
      ),
    );
  }
}
