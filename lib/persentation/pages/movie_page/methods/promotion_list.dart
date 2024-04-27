import 'package:flutter/material.dart';

List<Widget> promotionList(List<String> promotionList) => [
      const Padding(
        padding: EdgeInsets.only(left: 24, bottom: 15),
        child: Text(
          'Promotions',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
      ),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
            children: promotionList
                .map((promo) => Container(
                  width: 240,
                  height: 160,
                  margin: EdgeInsets.only(
                    left: promo == promotionList.first ? 24 : 10,
                        right: promo == promotionList.last ? 24 : 0,
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: AssetImage('assets/$promo'),
                          fit: BoxFit.cover)),
                ))
                .toList()),
      )
    ];
