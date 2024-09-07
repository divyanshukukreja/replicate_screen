import 'package:flutter/material.dart';

import 'dental_model.dart';

class replicate extends StatefulWidget {
  const replicate({super.key});

  @override
  State<replicate> createState() => _replicateState();
}

class _replicateState extends State<replicate> {
  var dentalList = <DentalModel>[
    DentalModel(
        leadingIcon: Icons.abc,
        title: "Consulation",
        subTitle: "Dental Checkup",
        trailingIcon: "assets/images/teeth.png",
        isChecked: false),
    DentalModel(
        leadingIcon: Icons.abc,
        title: "Cleaning Or Whitening",
        subTitle: "Oral Cleansing",
        trailingIcon: "assets/images/clean.png",
        isChecked: false),
    DentalModel(
        leadingIcon: Icons.abc,
        title: "Dentures",
        subTitle: "Dental Replacement Teeth",
        trailingIcon: "assets/images/screw.png",
        isChecked: false),
    DentalModel(
        leadingIcon: Icons.abc,
        title: "Braces",
        subTitle: "Orthodontic Treatment",
        trailingIcon: "assets/images/braces.png",
        isChecked: false),
    DentalModel(
        leadingIcon: Icons.abc,
        title: "Dental Senstivity",
        subTitle: "Toothache Discomfort",
        trailingIcon: "assets/images/x-ray.png",
        isChecked: false),
  ];

  Color primaryColor = const Color.fromARGB(255, 69, 89, 105);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 17, 94, 156),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 17, 94, 156),
        title: const Center(
          child: Text(
            "Dental",
            style: TextStyle(color: Colors.white),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
                onTap: () {},
                child: Container(
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 120, 163, 238),
                      borderRadius: BorderRadius.all(
                        Radius.circular(50),
                      )),
                  child: const Icon(
                    Icons.close,
                    size: 40,
                    color: Colors.white,
                  ),
                )),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Progress",
                  style: TextStyle(color: Colors.white),
                ),
                Spacer(),
                Text(
                  "1 of 2",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: LinearProgressIndicator(
              backgroundColor: Colors.grey,
              value: 0.5,
              color: Colors.white,
            ),
          ),
          const Text(
            "What Would You ",
            style: TextStyle(fontSize: 40, color: Colors.white),
          ),
          const Text(
            "Like To Discuss?",
            style: TextStyle(fontSize: 40, color: Colors.white),
          ),
          const Text(
            "Choose Evaluate The Usefulness",
            style: TextStyle(fontSize: 15, color: Colors.white),
          ),
          ListView.builder(
              shrinkWrap: true,
              itemCount: dentalList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 16, 68, 110),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Center(
                            child: InkWell(
                              onTap: () {
                                dentalList[index].isChecked =
                                    !dentalList[index].isChecked;
                                print(
                                    "dentalList[index].isChecked ${dentalList[index].isChecked}");
                                setState(() {});
                              },
                              child: Container(
                                width: 39,
                                height: 39,
                                decoration: BoxDecoration(
                                  color: dentalList[index].isChecked
                                      ? Colors.white
                                      : primaryColor,
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                child: Center(
                                  child: dentalList[index].isChecked
                                      ? Icon(
                                          Icons.check,
                                          color: dentalList[index].isChecked
                                              ? Colors.black
                                              : primaryColor,
                                        )
                                      : null,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                dentalList[index].title,
                                style: TextStyle(color: Colors.white),
                              ),
                              Text(
                                dentalList[index].subTitle,
                                style: TextStyle(color: Colors.white24),
                              ),
                            ],
                          ),
                        ),
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Container(
                              width: 39,
                              height: 39,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 15, 105, 179),
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child:
                                  Image.asset(dentalList[index].trailingIcon)),
                        )
                      ],
                    ),
                  ),
                );
              }),
        ],
      ),
    );
  }
}
