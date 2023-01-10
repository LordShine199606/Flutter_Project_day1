import 'dart:ui';

import 'package:first_project_text/Model/place_model.dart';
import 'package:first_project_text/views/pages/selecaoPagina.dart';
import 'package:flutter/material.dart';

class viagemPage extends StatelessWidget {
  final List<PlaceModel>? item;
  final index;

  viagemPage({this.item, this.index});

  @override
  Widget build(BuildContext context) {
    double myHeigth = MediaQuery.of(context).size.height;
    double mywidth = MediaQuery.of(context).size.width;
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(26.0),
        child: GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      SelecaodePaginas(selecaoLugares: item![index]),
                ));
          },
          child: Container(
              height: myHeigth * 0.4,
              width: mywidth * 0.8,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 109, 79, 247),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        blurRadius: 7,
                        spreadRadius: 3,
                        offset: const Offset(0, 5)),
                  ],
                  image: DecorationImage(
                      image: AssetImage(item![index].image.toString()),
                      fit: BoxFit.cover)),
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 20, top: 10),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        height: myHeigth * 0.06,
                        width: mywidth * 0.12,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.grey.withOpacity(0.5)),
                        child: Icon(
                          Icons.bookmark,
                          color: Colors.white,
                          size: 20,
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
                          Text(
                            'Angola',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.location_on,
                                color: Colors.white,
                              ),
                              Text(
                                item![index].name.toString(),
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          SizedBox(
                            height: myHeigth * 0.01,
                          ),
                          Row(
                            children: [
                              Text('Viagem',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              SizedBox(
                                width: mywidth * 0.03,
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 10),
                                // height: myHeigth * 0.06,
                                // width: mywidth * 0.12,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Colors.grey.withOpacity(0.5)),
                                child: Text(
                                    item![index].price.toString() + '\ kzs',
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
              )
              ),
        ),
      ),
    );
  }
}
