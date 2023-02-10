import 'package:demoapp/Model/test_model.dart';
import 'package:demoapp/utils/appcolor.dart';

import 'package:demoapp/utils/string.dart';
import 'package:demoapp/utils/style.dart';
import 'package:flutter/material.dart';

class AppointmentList extends StatefulWidget {
  const AppointmentList({super.key});

  @override
  State<AppointmentList> createState() => _AppointmentListState();
}

class _AppointmentListState extends State<AppointmentList> {
  //late List<DummyData> testdata;

  @override
  void initState() {
    super.initState();
    // testdata = getListData();
    // print(testdata);
  }

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: const EdgeInsets.all(10),
        shape: RoundedRectangleBorder(
          side: const BorderSide(
            color: redbutton,
          ),
          borderRadius: BorderRadius.circular(6.0), //<-- SEE HERE
        ),
        child: InkWell(
          onTap: () {},
          child: SizedBox(
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 120,
                      margin: const EdgeInsets.only(left: 10, top: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const Text("05:30", style: textStyleSecondary),
                          const Text("PM", style: textStyleSmall),
                          freshContainer(fresh)
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 10, bottom: 5),
                      child: const Text(
                        "Test ",
                        style: textStyleDark,
                      ),
                    )
                  ],
                ),
                const Icon(
                  Icons.navigate_next,
                  color: greycolor,
                )
              ],
            ),
          ),
        ));
  }

// class AppointmentList extends StatefulWidget {
//   const AppointmentList({super.key});

//   @override
//   State<AppointmentList> createState() => _AppointmentListState();
// }

// class _AppointmentListState extends State<AppointmentList> {
//   late List<DummyData> testdata;

//   @override
//   void initState() {
//     super.initState();
//     // testdata = getListData();
//     // print(testdata);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//         child: ListView.builder(
//             physics: const ScrollPhysics(),
//             scrollDirection: Axis.vertical,
//             itemCount: testdata.length,
//             itemBuilder: (context, index) {
//               return Card(
//                   margin: const EdgeInsets.all(10),
//                   shape: RoundedRectangleBorder(
//                     side: const BorderSide(
//                       color: redbutton,
//                     ),
//                     borderRadius: BorderRadius.circular(6.0), //<-- SEE HERE
//                   ),
//                   child: SizedBox(
//                     height: 60,
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Column(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Container(
//                               width: 120,
//                               margin: const EdgeInsets.only(left: 10, top: 5),
//                               child: Row(
//                                 mainAxisAlignment:
//                                     MainAxisAlignment.spaceBetween,
//                                 crossAxisAlignment: CrossAxisAlignment.end,
//                                 children: [
//                                   Text(testdata[index].time,
//                                       style: textStyleSecondary),
//                                   Text(testdata[index].time.split(' ', 1),
//                                       style: textStyleSmall),
//                                   freshContainer(fresh)
//                                 ],
//                               ),
//                             ),
//                             Container(
//                               margin:
//                                   const EdgeInsets.only(left: 10, bottom: 5),
//                               child: Text(
//                                 testdata[index].testName,
//                                 style: textStyleDark,
//                               ),
//                             )
//                           ],
//                         ),
//                         const Icon(
//                           Icons.navigate_next,
//                           color: greycolor,
//                         )
//                       ],
//                     ),
//                   ));
//             }));
//   }
}
