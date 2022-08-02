import 'package:flutter/material.dart';
import 'package:job_search_flutter_ui/model/job_data.dart';
import 'package:job_search_flutter_ui/pages/main_page_proparty/job_details.dart';

class JobProfile extends StatelessWidget {
  final joblist = JobInfo.generatedJobList();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: joblist.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                showModalBottomSheet(
                  isScrollControlled: true,
                    context: (context),
                    builder: (context) => JobDetails( job_d:  joblist[index]));
              },
              child: Container(
                margin: EdgeInsets.all(7),
                width: 260,
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        spreadRadius: -5,
                        blurRadius: 4,
                      )
                    ],
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 15, left: 15, right: 10, bottom: 5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                  height: 30,
                                  width: 30,
                                  child: Image(
                                      image:
                                          AssetImage(joblist[index].logoUrl))),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                joblist[index].company,
                                style: TextStyle(
                                    fontSize: 18, color: Colors.black),
                              ),
                            ],
                          ),
                          Icon(Icons.favorite_outline),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        joblist[index].title,
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 15,
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
                            joblist[index].location,
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.black.withOpacity(0.5)),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
