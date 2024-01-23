import "package:fitness/models/category_model.dart";
import "package:fitness/models/diet_model.dart";
import "package:flutter/material.dart";
import "package:flutter_svg/svg.dart";

class HomePage extends StatefulWidget {
    const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
    List<CategoryModel> categories = [];
    List<DietModel> dietRecommendation = [];

    void _getCategories() {
        categories = CategoryModel.getCategories();
    }

    void _getDietRecommendation() {
        dietRecommendation = DietModel.getDietRecommendation();
    }

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

    Column categoriesSection() {
        return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                const Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                        "Category",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w600
                        ),
                    ),
                ),

                const SizedBox(
                    height: 15,
                ),

                Container(
                    height: 120,
                    child: ListView.separated(
                        padding: const EdgeInsets.only(
                            left: 20,
                            right: 20
                        ),
                        scrollDirection: Axis.horizontal,
                        itemCount: categories.length,
                        separatorBuilder: (context, index) {
                            return const SizedBox(
                                width: 25,
                            );
                        },
                        itemBuilder: (context, index) {
                            return Container(
                                height: 50,
                                width: 100,
                                decoration: BoxDecoration(
                                    color: categories[index].backgroundColor.withOpacity(0.2),
                                    borderRadius: BorderRadius.circular(15)
                                ),

                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                        Container(
                                            width: 50,
                                            height: 50,
                                            child: SvgPicture.asset(categories[index].icon),
                                        ),
                                        Text(
                                            categories[index].name,
                                            style: const TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 14,
                                                color: Colors.black
                                            ),
                                        )
                                    ],
                                ),
                            );
                        },
                    ),
                )
            ],
        );
    }

    Column dietRecommendationSection() {
      return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                const Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                        "Recommendation for diet",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w600
                        ),
                    ),
                ),

                const SizedBox(
                    height: 15,
                ),

                Container(
                    height: 250,
                    child: ListView.separated(
                        padding: const EdgeInsets.only(
                            left: 20,
                            right: 20
                        ),
                        itemCount: dietRecommendation.length,
                        separatorBuilder: (context, index) {
                            return const SizedBox(
                                width: 25,
                            );
                        },
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                            return Container(
                                height: 400,
                                width: 250,
                                decoration: BoxDecoration(
                                    color: categories[index].backgroundColor.withOpacity(0.2),
                                    borderRadius: BorderRadius.circular(15)
                                ),

                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                        Container(
                                            width: 90,
                                            height: 90,
                                            child: SvgPicture.asset(
                                                dietRecommendation[index].icon
                                            ),
                                        ),
                                        Text(
                                            dietRecommendation[index].name,
                                            style: const TextStyle(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 16,
                                                color: Colors.black
                                            ),
                                        ),
                                        Text(
                                            dietRecommendation[index].desc,
                                            style: const TextStyle(
                                                fontWeight: FontWeight.w700,
                                                fontSize: 14,
                                                color: Colors.grey
                                            ),
                                        ),
                                        ElevatedButton(onPressed: (){},
                                            style: const ButtonStyle(
                                                backgroundColor: MaterialStatePropertyAll(Color(0xffC58BF2))
                                            ),
                                            child: const Text(
                                                "View",
                                                style: TextStyle(
                                                    color: Colors.white
                                                ),
                                            )
                                        )
                                    ],
                                ),
                            );
                        },
                    ),
                )
            ],
        );
    }

    @override
    Widget build(BuildContext context) {
        _getCategories();
        _getDietRecommendation();

        return Scaffold(
            backgroundColor: Colors.white,
            appBar: appBar(),
            body: ListView(
                children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                            textField(),
                            
                            const SizedBox(
                                height: 40,
                            ),

                            categoriesSection(),

                            const SizedBox(
                                height: 40,
                            ),

                            dietRecommendationSection()
                        ],
                    )
                ],
            )
        );
    }
}