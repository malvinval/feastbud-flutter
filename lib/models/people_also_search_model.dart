import 'package:flutter/material.dart';

class PeopleAlsoSearch {
    String name;
    String desc;
    Color backgroundColor;
    String icon;

    // wtf is this
    PeopleAlsoSearch({
        required this.name,
        required this.desc,
        required this.backgroundColor,
        required this.icon
    });

    static List<PeopleAlsoSearch> getPeopleAlsoSearch() {
        List<PeopleAlsoSearch> peopleAlsoSearch = [];

        peopleAlsoSearch.add(
            PeopleAlsoSearch(desc: "Easy | 30mins | 180kCal",name: "Drizzle Cake", backgroundColor: const Color(0xffC58BF2), icon: "assets/icons/drizzle.svg")
        );

        peopleAlsoSearch.add(
            PeopleAlsoSearch(desc: "Easy | 20mins | 160kCal",name: "Cardamom Cake", backgroundColor: const Color(0xff92A3FD), icon: "assets/icons/cardamom.svg")
        );

        peopleAlsoSearch.add(
            PeopleAlsoSearch(desc: "Easy | 15mins | 150kCal",name: "Fudgy Choco", backgroundColor: const Color(0xffC58BF2), icon: "assets/icons/choco.svg")
        );

        peopleAlsoSearch.add(
            PeopleAlsoSearch(desc: "Easy | 10mins | 130kCal",name: "Vegan Muffins", backgroundColor: const Color(0xff92A3FD), icon: "assets/icons/vegan-muffin.svg")
        );

        peopleAlsoSearch.add(
            PeopleAlsoSearch(desc: "Easy | 5mins | 110kCal",name: "Malt Loaf", backgroundColor: const Color(0xffC58BF2), icon: "assets/icons/malt-loaf.svg")
        );

        return peopleAlsoSearch;
    }
}