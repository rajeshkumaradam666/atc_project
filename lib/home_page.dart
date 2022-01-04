import 'package:atc_project/bottom_sheet.dart';
import 'package:atc_project/details_page.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dotted_line/dotted_line.dart';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = CarouselController();
  late ScrollController screollcontroller = ScrollController();

  bool fabIsVisible = true;

  @override
  void initState() {
    // TODO: implement initState

    screollcontroller.addListener(() {
      setState(() {
        fabIsVisible = screollcontroller.position.userScrollDirection == ScrollDirection.forward;
      });
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(children: [
          Positioned(
            top: 0,
            right: 0,
            left: 0,
            child: Container(
                height: 300,
                width: MediaQuery.of(context).size.width,
                color: const Color(0xFFFF4855),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Expanded(
                          flex: 2,
                          child: Container(
                            margin: const EdgeInsets.only(top: 50),
                            child: const Center(
                              child: Text(
                                "Trainings",
                                style: TextStyle(color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                        Expanded(flex: 1, child: Container()),
                        Expanded(
                            flex: 1,
                            child: Container(
                              margin: const EdgeInsets.only(top: 50),
                              child: IconButton(
                                icon: const Icon(
                                  Icons.menu,
                                  color: Colors.white,
                                ),
                                onPressed: () {},
                              ),
                            )),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Expanded(
                          flex: 2,
                          child: Container(
                            margin: const EdgeInsets.only(top: 30),
                            child: const Center(
                              child: Text(
                                "Highlights",
                                style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                        Expanded(flex: 3, child: Container())
                      ],
                    ),
                  ],
                )),
          ),
          Positioned(
            top: 180,
            right: 0,
            left: 0,
            child: SizedBox(
              height: 200,
              child: Center(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: ElevatedButton(
                        child: const Icon(
                          Icons.chevron_left,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          prvious();
                        },
                        style: ElevatedButton.styleFrom(
                            primary: Colors.transparent, padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 20), textStyle: const TextStyle(fontSize: 5, fontWeight: FontWeight.bold)),
                      ),
                    ),
                    // const SizedBox(
                    //   width: 5,
                    // ),
                    Expanded(
                      flex: 10,
                      child: CarouselSlider(
                        carouselController: controller,
                        items: [
                          Container(
                              margin: const EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                image: const DecorationImage(
                                  image: AssetImage('assets/images/atc1.jpg'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: Container(
                                margin: const EdgeInsets.only(left: 70.0, top: 50),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    const Text(
                                      ' Safe Scrum Master',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18.0,
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(left: 5.0, top: 5, bottom: 5),
                                      child: Text(
                                        'West Des Moines. IA- 30 Oct -31 oct',
                                        style: TextStyle(color: Colors.white, fontSize: 15.0, fontWeight: FontWeight.bold),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: const [
                                        Expanded(
                                          flex: 2,
                                          child: Text(
                                            "\$896",
                                            style: TextStyle(
                                              color: Colors.red,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18.0,
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 2,
                                          child: Text(
                                            'View Details →',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 17.0,
                                            ),
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              )),
                          Container(
                            margin: const EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              image: const DecorationImage(
                                image: AssetImage('assets/images/atc2.jpg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Container(
                              margin: const EdgeInsets.only(left: 70.0, top: 50),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  const Text(
                                    ' Safe Scrum Master',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18.0,
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(left: 5.0, top: 5, bottom: 5),
                                    child: Text(
                                      'West Des Moines. IA- 30 Oct -31 oct',
                                      style: TextStyle(color: Colors.white, fontSize: 15.0, fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: const [
                                      Expanded(
                                        flex: 2,
                                        child: Text(
                                          "\$896",
                                          style: TextStyle(
                                            color: Colors.red,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18.0,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 2,
                                        child: Text(
                                          'View Details →',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 17.0,
                                          ),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              image: const DecorationImage(
                                image: AssetImage('assets/images/atc3.jpg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Container(
                              margin: const EdgeInsets.only(left: 70.0, top: 50),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  const Text(
                                    ' Safe Scrum Master',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18.0,
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(left: 5.0, top: 5, bottom: 5),
                                    child: Text(
                                      'West Des Moines. IA- 30 Oct -31 oct',
                                      style: TextStyle(color: Colors.white, fontSize: 15.0, fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: const [
                                      Expanded(
                                        flex: 2,
                                        child: Text(
                                          "\$896",
                                          style: TextStyle(
                                            color: Colors.red,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18.0,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 2,
                                        child: Text(
                                          'View Details →',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 17.0,
                                          ),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                        options: CarouselOptions(
                          height: 280.0,
                          enlargeCenterPage: true,
                          autoPlay: false,
                          aspectRatio: 16 / 9,
                          autoPlayCurve: Curves.fastOutSlowIn,
                          enableInfiniteScroll: true,
                          autoPlayAnimationDuration: const Duration(milliseconds: 800),
                          viewportFraction: 1.4,
                        ),
                      ),
                    ),
                    // const SizedBox(
                    //   width: 5,
                    // ),
                    Expanded(
                      flex: 1,
                      // left: 20,
                      child: ElevatedButton(
                        child: const Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          next();
                        },
                        style: ElevatedButton.styleFrom(
                            primary: Colors.transparent, padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 20), textStyle: const TextStyle(fontSize: 5, fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 380,
            right: 0,
            left: 10,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                OutlinedButton.icon(
                  label: const Text(
                    'Filter',
                    style: TextStyle(color: Colors.grey),
                  ),
                  icon: const Icon(
                    Icons.list,
                    color: Colors.grey,
                  ),
                  onPressed: () {
                    showModalBottomSheet(
                        isScrollControlled: true,
                        context: context,
                        builder: (_) {
                          return const Bottomsheet1();
                        });
                  },
                ),
              ],
            ),
          ),
          Container(
              margin: const EdgeInsets.only(top: 400),
              // scrollDirection: Axis.vertical,
              // height: MediaQuery.of(context).size.height,
              // width: MediaQuery.of(context).size.width - 50,
              child: ListView.builder(
                  itemCount: 3,
                  primary: false,
                  controller: screollcontroller,
                  scrollDirection: Axis.vertical,
                  physics: const AlwaysScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const DetailPage()));
                      },
                      child: Card(
                        margin: const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 2.0, top: 12.0),
                        elevation: 4.5,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: ListTile(
                              title: Row(
                            children: [
                              Column(
                                children: <Widget>[
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      const SizedBox(
                                          // width: MediaQuery.of(context).size.width - 140,
                                          child: Text(
                                        "Oct 11 - 13,2019",
                                        style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                                      )),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "8.30am - 12.30 pm".toString(),
                                        style: const TextStyle(color: Colors.grey),
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      const SizedBox(
                                          // width: MediaQuery.of(context).size.width - 140,
                                          child: Text(
                                        "Convention Hall",
                                        style: TextStyle(fontSize: 17),
                                      )),
                                      const SizedBox(
                                        height: 2,
                                      ),
                                      Text(
                                        "Greater Des Moines".toString(),
                                        style: const TextStyle(color: Colors.grey),
                                      )
                                    ],
                                  )
                                ],
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const DottedLine(
                                direction: Axis.vertical,
                                lineLength: 100.0,
                                lineThickness: 1.0,
                                dashLength: 2.0,
                                dashColor: Colors.black,
                                // dashGradient: [Colors.red, Colors.blue],
                                dashRadius: 0.0,
                                dashGapLength: 5.0,
                                dashGapColor: Colors.transparent,
                                // dashGapGradient: [Colors.red, Colors.blue],
                                dashGapRadius: 10.0,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      const SizedBox(
                                          // width: MediaQuery.of(context).size.width - 140,
                                          child: Text(
                                        "Filling Fast",
                                        style: TextStyle(fontSize: 13, color: Colors.red),
                                      )),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "Safe Scrum Master (4.6)".toString(),
                                        style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10.0,
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Container(
                                        width: 30,
                                        height: 30,
                                        decoration: BoxDecoration(
                                            color: Colors.transparent,
                                            borderRadius: BorderRadius.circular(60 / 2),
                                            image: const DecorationImage(fit: BoxFit.cover, image: AssetImage("assets/images/dp.jpg"))),
                                      ),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          const SizedBox(
                                              child: Text(
                                            "Keynode Speaker",
                                            style: TextStyle(fontSize: 17),
                                          )),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            "Helen Gribbie".toString(),
                                            style: const TextStyle(color: Colors.grey),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10.0,
                                  ),
                                  Container(
                                    height: 30,
                                    margin: const EdgeInsets.only(left: 80.0),
                                    alignment: Alignment.topRight,

                                    // ignore: deprecated_member_use
                                    child: RaisedButton(
                                      textColor: Colors.white,
                                      color: const Color(0xFFFF4855),
                                      onPressed: () {},
                                      child: const Text('Enroll Now'),
                                    ),
                                    // ],
                                  )
                                ],
                              ),
                            ],
                          )),
                        ),
                      ),
                    );
                  })),
        ]));
  }

  void next() => controller.nextPage(duration: const Duration(milliseconds: 500));
  void prvious() => controller.previousPage(duration: const Duration(milliseconds: 500));
}
