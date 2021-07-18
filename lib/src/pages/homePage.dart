import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:food_app/src/configs/textTheme.dart';
import 'package:food_app/src/components/Product.dart';
import 'package:food_app/src/components/widgetFunction.dart';
import 'package:food_app/src/pages/productPage.dart';

const product_data = [
  {
    "image": "pizza.png",
    "name": "Pizza",
    "rest": "Maritine Star Restaurant",
    "rating": "4.5 (164)",
    "price": 20,
    "currency": "\$"
  },
  {
    "image": "burger.png",
    "name": "Burger",
    "rest": "Maritine Star Restaurant",
    "rating": "4.7 (199)",
    "price": 10,
    "currency": "\$"
  },
  {
    "image": "fries.png",
    "name": "Fries",
    "rest": "Maritine Star Restaurant",
    "rating": "4.2 (101)",
    "price": 10,
    "currency": "\$"
  },
  {
    "image": "hotdog.png",
    "name": "HotDog",
    "rest": "Maritine Star Restaurant",
    "rating": "3.9 (150)",
    "price": 15,
    "currency": "\$"
  },
];

const category = [
  {"image": "assets/images/salad.png", "name": "Salad"},
  {"image": "assets/images/fastfood.png", "name": "Fast Food"},
  {"image": "assets/images/desert.png", "name": "Desert"},
  {"image": "assets/images/drinks.png", "name": "Drinks"},
  {"image": "assets/images/drinks.png", "name": "Drinks"},
];

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _LandingScreenState createState() => _LandingScreenState();
}

class _LandingScreenState extends State<HomePage> {
  final FocusNode _focusNode = FocusNode();

  @override
  void dispose() {
    super.dispose();
    _focusNode.unfocus();
  }

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: LayoutBuilder(
          builder: (context, constraints) {
            return Container(
              child: Column(
                children: [
                  Expanded(
                      flex: 4,
                      child: Stack(
                        fit: StackFit.expand,
                        children: [
                          Container(
                            color: color_green,
                          ),
                          Image.asset("assets/images/tree_v.png"),
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                        width: 70,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                          color: Colors.white,
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Image.asset(
                                              "assets/images/avatar.png"),
                                        )),
                                    addHorizontalSpace(10),
                                    Expanded(
                                      flex: 4,
                                      child: Text(
                                        "How Hungry are you Today?",
                                        style: textTheme.headline5!
                                            .apply(color: Colors.white),
                                      ),
                                    )
                                  ],
                                ),
                                TextField(
                                  focusNode: _focusNode,
                                  cursorColor: Colors.white,
                                  cursorRadius: Radius.circular(10.0),
                                  style: TextStyle(color: Colors.white),
                                  decoration: InputDecoration(
                                      hintText: "Search Food Items",
                                      hintStyle: TextStyle(color: Colors.white),
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                          borderSide: BorderSide.none),
                                      prefixIcon: Icon(
                                        Icons.search,
                                        color: Colors.white,
                                      ),
                                      suffixIcon: Container(
                                        height: 70,
                                        width: 70,
                                        decoration: BoxDecoration(
                                            color: Colors.white24,
                                            borderRadius: BorderRadius.only(
                                                topRight: Radius.circular(20.0),
                                                bottomRight:
                                                    Radius.circular(20.0))),
                                        child: Icon(
                                          Icons.menu,
                                          color: Colors.white,
                                        ),
                                      ),
                                      filled: true,
                                      fillColor: Colors.white24),
                                ),
                                addVerticalSpace(10),
                              ],
                            ),
                          )
                        ],
                      )),
                  Container(
                    width: constraints.maxWidth,
                    color: Colors.grey.shade200,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10.0, bottom: 10.0),
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Column(
                            children: [
                              addVerticalSpace(constraints.maxWidth * 0.35),
                              Row(
                                children: [
                                  Text(
                                    "Popular Foods",
                                    style: textTheme.headline5,
                                  ),
                                  Expanded(
                                    child: Center(),
                                  ),
                                  Text(
                                    "View All > ",
                                    style: textTheme.subtitle2!
                                        .apply(color: color_orange),
                                  ),
                                  addHorizontalSpace(10),
                                ],
                              ),
                              addVerticalSpace(10),
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                physics: BouncingScrollPhysics(),
                                child: Row(
                                  children: product_data
                                      .map((data) => InkWell(
                                            onTap: () {
                                              _focusNode.unfocus();
                                              Navigator.of(context).push(
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          ProductPage(
                                                              productData:
                                                                  data)));
                                            },
                                            child: ProductItem(
                                              width:
                                                  constraints.maxWidth * 0.50,
                                              productData: data,
                                            ),
                                          ))
                                      .toList(),
                                ),
                              ),
                            ],
                          ),
                          Positioned(
                            top: -40,
                            left: 0,
                            child: Container(
                              width: constraints.maxWidth,
                              height: constraints.maxWidth * 0.35,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                physics: BouncingScrollPhysics(),
                                children: category
                                    .map((category) => Container(
                                          margin: const EdgeInsets.only(
                                              right: 10.0),
                                          width: constraints.maxWidth * 0.25,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(20.0)),
                                          child: Padding(
                                            padding: EdgeInsets.all(10.0),
                                            child: Column(
                                              children: [
                                                Image.asset(
                                                    "${category['image']}"),
                                                addVerticalSpace(10),
                                                Text(
                                                  "${category['name']}",
                                                  style: textTheme.bodyText2!
                                                      .apply(
                                                          color: color_black),
                                                )
                                              ],
                                            ),
                                          ),
                                        ))
                                    .toList(),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}








// import 'package:flutter/material.dart';
// import 'package:food_app/src/configs/textTheme.dart';
// import 'package:food_app/src/pages/Product.dart';

// const product_Data = [
//   {
//     {
//       "image": "pizza.png",
//       "name": "Pizza",
//       "rest": "Maritine Star Restaurant",
//       "rating": "4.5 (164)",
//       "price": 20,
//       "currency": "\$"
//     },
//     {
//       "image": "burger.png",
//       "name": "Burger",
//       "rest": "Maritine Star Restaurant",
//       "rating": "4.7 (199)",
//       "price": 10,
//       "currency": "\$"
//     },
//     {
//       "image": "fries.png",
//       "name": "Fries",
//       "rest": "Maritine Star Restaurant",
//       "rating": "4.2 (101)",
//       "price": 10,
//       "currency": "\$"
//     },
//     {
//       "image": "hotdog.png",
//       "name": "HotDog",
//       "rest": "Maritine Star Restaurant",
//       "rating": "3.9 (150)",
//       "price": 15,
//       "currency": "\$"
//     },
//   }
// ];
// const categories = [
//   {"image": "salad.png", "name": "Salad"},
//   {"image": "fastfood.png", "name": "Fast Food"},
//   {"image": "desert.png", "name": "Desert"},
//   {"image": "drinks.png", "name": "Drinks"},
//   {"image": "drinks.png", "name": "Drinks"},
// ];

// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final TextTheme textTheme = Theme.of(context).textTheme;
//     return SafeArea(
//       child: Scaffold(
//         body: LayoutBuilder(builder: (BuildContext context, constraints) {
//           return Container(
//             child: Column(
//               children: [
//                 Expanded(
//                   flex: 4,
//                   child: Stack(
//                     fit: StackFit.expand,
//                     children: [
//                       Container(
//                         color: color_green,
//                       ),
//                       Image.asset('assets/img/tree_v.png'),
//                       Positioned(
//                         top: 30,
//                         left: 10,
//                         child: Column(
//                           children: [
//                             Row(
//                               children: [
//                                 Container(
//                                   width: 70,
//                                   decoration: BoxDecoration(
//                                       borderRadius: BorderRadius.circular(20)),
//                                   child: Image.asset('assets/img/avatar.png'),
//                                 ),
//                                 Text(
//                                   'How Hungry are you Today?',
//                                   style: textTheme.headline5!
//                                       .apply(color: Colors.white),
//                                 ),
//                               ],
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Container(
//                   width: constraints.maxHeight,
//                   height: 400,
//                 ),
//               ],
//             ),
//           );
//         }),
//       ),
//     );
//   }
// }
