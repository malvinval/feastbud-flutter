import "package:flutter/material.dart";
import "package:flutter_svg/svg.dart";

class HomePage extends StatelessWidget {
  const HomePage({super.key});

    AppBar appBar() {
        return AppBar(
            backgroundColor: Colors.white,
            title: const Text(
                'FeastBud',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                ),
            ),
            centerTitle: true,

            // icon back disebelah kiri AppBar
            leading: Container(
                width: 35,
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: const Color.fromARGB(10, 0, 0, 0),
                    borderRadius: BorderRadius.circular(10)
                ),

                child: SvgPicture.asset(
                    "assets/icons/back.svg",
                ),

            ),

            // actions: This property takes in a list of widgets as a parameter to be displayed after the title if the AppBar is a row.
            actions: <Widget>[
                GestureDetector(
                    onTap: () {

                    },

                    child: Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.all(10),
                        width: 35,
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(10, 0, 0, 0),
                            borderRadius: BorderRadius.circular(10)
                        ),

                        child: SvgPicture.asset(
                            "assets/icons/nine-dots.svg",
                        ),
                    )
                )
            ],
        );
    }

    Container textField() {
        return Container(
            margin: const EdgeInsets.only(top: 40, right: 20, left: 20),
            decoration: BoxDecoration(
                boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.11),
                        spreadRadius: 0.0,
                        blurRadius: 40
                    )
                ]
            ),
            child: TextField(
              decoration: InputDecoration(
                  hintText: "Search pancake...",
                  filled: true,
                  fillColor: Colors.white,
          
                  // icon sebagai prefix dalam text field
                  prefixIcon: Padding(
                      padding: const EdgeInsets.all(15),
                      child: SvgPicture.asset(
                          "assets/icons/search.svg",
                          width: 20,
                      ),
                  ),
          
                  // icon sebagai suffix dalam text field
                  suffixIcon: Padding(
                      padding: const EdgeInsets.all(15),
                      child: SvgPicture.asset(
                          "assets/icons/filter.svg"
                      ),
                  ),
          
                  contentPadding: const EdgeInsets.all(15),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide.none
                  )
              ),
          ),
        );
    }

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: appBar(),
            body: Column(
                children: [
                    textField()

                    // LANJUT BIKIN SECTION CATEGORY
                ],
            ),
        );
    }
}