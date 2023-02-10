import 'package:demoapp/utils/appcolor.dart';
import 'package:demoapp/utils/string.dart';
import 'package:demoapp/utils/style.dart';
import 'package:flutter/material.dart';

class UserCard extends StatefulWidget {
  const UserCard({super.key});

  @override
  State<UserCard> createState() => _UserCardState();
}

class _UserCardState extends State<UserCard> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Card(
        margin: const EdgeInsets.all(10),
        shape: RoundedRectangleBorder(
          side: const BorderSide(
            color: redbutton,
          ),
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(
                      left: 20, top: 10, right: 20, bottom: 30),
                  child: const CircleAvatar(
                    radius: 35,
                    backgroundImage: AssetImage('assets/images/avator.png'),
                  ),
                ),
                Container(
                    height: 100,
                    margin: const EdgeInsets.only(top: 10, bottom: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Test",
                          style: textStyleDark,
                        ),
                        const Text(id, style: textStyleGrey),
                        freshContainer(fresh),
                        Row(
                          children: const [
                            Text(
                              phNumber,
                              style: textStyleGrey,
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Icon(
                              Icons.call_outlined,
                              size: 15.0,
                            )
                          ],
                        )
                      ],
                    )),
              ],
            ),
            const Divider(
              thickness: 1,
            ),
            ButtonBar(
              alignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  child: buttonWidgetPrimary(caseh),
                ),
                GestureDetector(
                  child: buttonWidgetPrimary(call),
                ),
                GestureDetector(
                  child: buttonWidgetPrimary(msg),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
