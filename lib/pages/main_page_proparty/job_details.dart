import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:job_search_flutter_ui/model/job_data.dart';

class JobDetails extends StatelessWidget {
  final JobInfo job_d;
  JobDetails({required this.job_d});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40), topRight: Radius.circular(40))),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 5,
                    width: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.black.withOpacity(.5),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      child: Image.asset("${job_d!.logoUrl}"),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      "${job_d!.company}",
                      style: TextStyle(
                          fontSize: 22,
                          color: Colors.black,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.favorite_outline,
                      size: 32,
                      color: Colors.black.withOpacity(0.5),
                    ),
                    Icon(Icons.onetwothree_outlined,
                        size: 32, color: Colors.black.withOpacity(0.5)),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "${job_d!.title}",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.add_location_rounded,
                      color: Colors.yellow,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "${job_d!.location}",
                      style: TextStyle(
                          fontSize: 16, color: Colors.black.withOpacity(0.5)),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.add_location_rounded,
                      color: Colors.yellow,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Full Time",
                      style: TextStyle(
                          fontSize: 16, color: Colors.black.withOpacity(0.5)),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              "Requirements",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            SizedBox(
              height: 10,
            ),
            ...job_d.req
                .map((e) => SingleChildScrollView(
              scrollDirection: Axis.vertical,
                  child: Container(
                        margin: EdgeInsets.all(5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 8,
                              width: 8,
                              decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(0.7),
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            ConstrainedBox(
                              constraints: BoxConstraints(maxWidth: 310),
                              child: Text(
                                e,
                                style:
                                    TextStyle(fontSize: 16, color: Colors.black),
                              ),
                            )
                          ],
                        ),
                      ),
                ))
                .toList(),
            SizedBox(
              height: 7,
            ),
            Container(

              height: 50,
             // width: 300,
              decoration: BoxDecoration(
                  color: Colors.lightBlueAccent,
                  borderRadius: BorderRadius.circular(25)),
              child: Center(
                child: Text(
                  "Apply Now",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            )
            // Text("${job_d!.title}")
          ],
        ),
      ),
    );
  }
}
