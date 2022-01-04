import 'package:flutter/material.dart';

class Bottomsheet1 extends StatefulWidget {
  const Bottomsheet1({Key? key}) : super(key: key);

  @override
  _Bottomsheet1State createState() => _Bottomsheet1State();
}

class _Bottomsheet1State extends State<Bottomsheet1> {
  // ignore: non_constant_identifier_names
  List<Filter> list_name = [Filter(name: "Sort By"), Filter(name: "Location"), Filter(name: "Training Name"), Filter(name: "Trainer")];
  int selectedindex = 0;
  PageController pageController = PageController();
  final placed = [
    Placessetting(title: 'West Des Moines'),
    Placessetting(title: 'Chicago, IL'),
    Placessetting(title: 'Phonix, AZ'),
    Placessetting(title: 'Dallas, TX'),
    Placessetting(title: 'San Diago, CA'),
    Placessetting(title: 'San Francisco, CA'),
    Placessetting(title: 'New York, NY'),
    Placessetting(title: 'America, AA'),
    Placessetting(title: 'Singapore, SA'),
    Placessetting(title: 'Malysia, MA'),
    Placessetting(title: 'Paris, PA'),
  ];
  final training = [
    Trainingssetting(title: 'Marketing'),
    Trainingssetting(title: 'Web Developement'),
    Trainingssetting(title: 'App Developement'),
    Trainingssetting(title: 'Mobile Engineering'),
    Trainingssetting(title: 'Cloud Computing'),
    Trainingssetting(title: 'Data Structures'),
    Trainingssetting(title: 'Data Mining'),
    Trainingssetting(title: 'OOPS Concept'),
    Trainingssetting(title: 'Python Development'),
    Trainingssetting(title: 'Mobile Marketing'),
    Trainingssetting(title: 'Personal Skills'),
  ];
  final trainer = [
    Trainersetting(title: 'Liam'),
    Trainersetting(title: 'Noah'),
    Trainersetting(title: 'Christopher'),
    Trainersetting(title: 'Donald'),
    Trainersetting(title: 'Margaret'),
    Trainersetting(title: 'Steven'),
    Trainersetting(title: 'Stephanie'),
    Trainersetting(title: 'Timothy'),
    Trainersetting(title: 'Nicholas'),
    Trainersetting(title: 'Jonathan'),
    Trainersetting(title: 'Stephen'),
  ];

  //place check box code
  Widget buildplaceCheckbox(Placessetting varplace) => buildCheckbox(
        varplace: varplace,
        onClicked: () {
          setState(() {
            final newValue = !varplace.value;
            varplace.value = newValue;
          });
        },
      );

  Widget buildCheckbox({
    required Placessetting varplace,
    required VoidCallback onClicked,
  }) =>
      ListTile(
        onTap: onClicked,
        leading: Checkbox(
          value: varplace.value,
          onChanged: (value) => setState(() {
            onClicked();
          }),
        ),
        title: Text(
          varplace.title,
          style: const TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),
        ),
      );

  //Trainings check box Code

  Widget buildtrainingCheckbox(Trainingssetting trainings) => trainingCheckbox(
        vartraining: trainings,
        onClicked: () {
          setState(() {
            final newValue = !trainings.value;
            trainings.value = newValue;
          });
        },
      );

  Widget trainingCheckbox({
    required Trainingssetting vartraining,
    required VoidCallback onClicked,
  }) =>
      ListTile(
        onTap: onClicked,
        leading: Checkbox(
          value: vartraining.value,
          onChanged: (value) => setState(() {
            onClicked();
          }),
        ),
        title: Text(
          vartraining.title,
          style: const TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),
        ),
      );

  //trainer check box code
  Widget buildtrainerCheckbox(Trainersetting vartrainer) => buildtainersCheckbox(
        vartrainer: vartrainer,
        onClicked: () {
          setState(() {
            final newValue = !vartrainer.value;
            vartrainer.value = newValue;
          });
        },
      );

  Widget buildtainersCheckbox({
    required Trainersetting vartrainer,
    required VoidCallback onClicked,
  }) =>
      ListTile(
        onTap: onClicked,
        leading: Checkbox(
          value: vartrainer.value,
          onChanged: (value) => setState(() {
            onClicked();
          }),
        ),
        title: Text(
          vartrainer.title,
          style: const TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),
        ),
      );

  //search box code
  final txtSearch = TextEditingController();
  final filteredplace = [];
  final filteredtraining = [];
  final filteredtrainier = [];
  void search(value, int type) {
    //keyPress
    String vv = value.toString().toUpperCase();
    if (vv == "") {
      if (type == 1) {
        filteredplace.add(placed);
      } else if (type == 2) {
        filteredtraining.add(training);
      } else {
        filteredtrainier.add(trainer);
      }
    } else {
      if (type == 1) {
        placed.clear();

        placed.addAll(placed.where((element) => element.title.toString().contains(vv)).toList());
      } else if (type == 2) {
        training.clear();
        setState(() {
          training.addAll(training.where((element) => element.title.toString().contains(vv)).toList());
        });
      } else {
        trainer.clear();
        setState(() {
          trainer.addAll(trainer.where((element) => element.title.toString().contains(vv)).toList());
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .600,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                const Text(
                  "Sort and Filters",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
                ),
                const Spacer(),
                IconButton(
                  icon: const Icon(
                    Icons.clear,
                    color: Colors.black,
                    size: 25,
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 1,
                  child: SizedBox(
                    width: 120,
                    child: ListView.separated(
                      shrinkWrap: true,
                      itemCount: 4,
                      separatorBuilder: (BuildContext context, int index) {
                        return const SizedBox(height: 5);
                      },
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedindex = index;
                              pageController.jumpToPage(index);
                              txtSearch.text = "";
                            });
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              AnimatedContainer(
                                duration: const Duration(
                                  milliseconds: 500,
                                ),
                                color: const Color(0xFFFF4855),
                                width: 5,
                                height: (selectedindex == index) ? 50 : 0,
                              ),
                              Expanded(
                                  child: AnimatedContainer(
                                duration: const Duration(
                                  milliseconds: 500,
                                ),
                                alignment: Alignment.centerLeft,
                                height: 70,
                                color: (selectedindex == index) ? Colors.blueGrey.withOpacity(0.2) : Colors.transparent,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 5),
                                  child: Text(
                                    list_name[index].brand.toString(),
                                    textAlign: TextAlign.left,
                                    style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ))
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ),
                Expanded(
                    flex: 2,
                    child: Column(
                      children: [
                        SizedBox(
                            height: MediaQuery.of(context).size.height - 450,
                            child: PageView(
                              controller: pageController,
                              children: [
                                Container(),
                                SizedBox(
                                  height: MediaQuery.of(context).size.height,
                                  child: ListView(
                                    children: [
                                      Container(
                                        width: 50,
                                        height: 50,
                                        alignment: Alignment.center,
                                        margin: const EdgeInsets.only(
                                          top: 10.0,
                                          right: 15.0,
                                          left: 15.0,
                                        ),
                                        child: TextField(
                                          // autofocus: true,
                                          controller: txtSearch,
                                          keyboardType: TextInputType.text,
                                          textInputAction: TextInputAction.next,
                                          decoration: const InputDecoration(
                                            fillColor: Colors.black,
                                            enabledBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                              borderSide: BorderSide(color: Colors.black),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                              borderSide: BorderSide(color: Colors.black),
                                            ),
//                  border: Border.all(color: Colors.black,width: 1.0,style: BorderStyle.solid),
                                            hintText: 'Search',
                                            labelStyle: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                              fontFamily: 'Alatsi',
                                            ),
                                          ),
                                          onChanged: (String value) {
                                            setState(() {
                                              search(value, 1);
                                            });
                                          },
                                          onSubmitted: (String value) {
                                            setState(() {
                                              search(value, 1);
                                            });
                                          },
                                        ),
                                      ),
                                      ...placed.map(buildplaceCheckbox).toList(),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: MediaQuery.of(context).size.height,
                                  child: ListView(
                                    children: [
                                      Container(
                                        width: 50,
                                        height: 50,
                                        alignment: Alignment.center,
                                        margin: const EdgeInsets.only(
                                          top: 10.0,
                                          right: 15.0,
                                          left: 15.0,
                                        ),
                                        child: TextField(
                                          // autofocus: true,
                                          controller: txtSearch,
                                          keyboardType: TextInputType.text,
                                          textInputAction: TextInputAction.next,
                                          decoration: const InputDecoration(
                                            fillColor: Colors.black,
                                            enabledBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                              borderSide: BorderSide(color: Colors.black),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                              borderSide: BorderSide(color: Colors.black),
                                            ),
//                  border: Border.all(color: Colors.black,width: 1.0,style: BorderStyle.solid),
                                            hintText: 'Search',
                                            labelStyle: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                              fontFamily: 'Alatsi',
                                            ),
                                          ),
                                          onChanged: (String value) {
                                            setState(() {
                                              search(value, 2);
                                            });
                                          },
                                          onSubmitted: (String value) {
                                            setState(() {
                                              search(value, 2);
                                            });
                                          },
                                        ),
                                      ),
                                      ...training.map(buildtrainingCheckbox).toList(),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: MediaQuery.of(context).size.height,
                                  child: ListView(
                                    children: [
                                      Container(
                                        width: 50,
                                        height: 50,
                                        alignment: Alignment.center,
                                        margin: const EdgeInsets.only(
                                          top: 10.0,
                                          right: 15.0,
                                          left: 15.0,
                                        ),
                                        child: TextField(
                                          // autofocus: true,
                                          controller: txtSearch,
                                          keyboardType: TextInputType.text,
                                          textInputAction: TextInputAction.next,
                                          decoration: const InputDecoration(
                                            fillColor: Colors.black,
                                            enabledBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                              borderSide: BorderSide(color: Colors.black),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                              borderSide: BorderSide(color: Colors.black),
                                            ),
//                  border: Border.all(color: Colors.black,width: 1.0,style: BorderStyle.solid),
                                            hintText: 'Search',
                                            labelStyle: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                              fontFamily: 'Alatsi',
                                            ),
                                          ),
                                          onChanged: (String value) {
                                            setState(() {
                                              search(value, 3);
                                            });
                                          },
                                          onSubmitted: (String value) {
                                            setState(() {
                                              search(value, 3);
                                            });
                                          },
                                        ),
                                      ),
                                      ...trainer.map(buildtrainerCheckbox).toList(),
                                    ],
                                  ),
                                ),
                              ],
                            ))
                      ],
                    )

                    // flex: 3,

                    )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class Filter {
  String brand = "";
  Filter({required String name}) {
    brand = name;
  }
}

class Placessetting {
  String title = "";
  bool value;
  Placessetting({
    required this.title,
    this.value = false,
  }) {
    // title = name;
  }
}

class Trainingssetting {
  String title = "";
  bool value;
  Trainingssetting({
    required this.title,
    this.value = false,
  }) {
    // title = name;
  }
}

class Trainersetting {
  String title = "";
  bool value;
  Trainersetting({
    required this.title,
    this.value = false,
  }) {
    // title = name;
  }
}
