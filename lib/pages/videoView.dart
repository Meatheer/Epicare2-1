import 'package:flutter/material.dart';
import 'package:flutter_application_1/shared/color.dart';
import 'package:grouped_list/grouped_list.dart';

List _dataDummy = [
  {
    "id": 1,
    "title": "التسجيل 1",
    "time": "05:00",
    "date": "1/12/2024",
    "group": "ديسمبر",
    "image": "https://via.placeholder.com/150/92c952"
  },
  {
    "id": 2,
    "title": "التسجيل 2",
    "time": "05:00",
    "date": "3/12/2024",
    "group": "ديسمبر",
    "image": "https://via.placeholder.com/150/771796"
  },
  {
    "id": 3,
    "title": "التسجيل 3",
    "time": "02:00",
    "date": "5/12/2024",
    "group": "ديسمبر",
    "image": "https://via.placeholder.com/150/24f355"
  },
  {
    "id": 4,
    "title": "التسجيل 4",
    "time": "05:00",
    "date": "9/12/2024",
    "group": "ديسمبر",
    "image": "https://via.placeholder.com/150/d32776"
  },
  {
    "id": 5,
    "title": "التسجيل 5",
    "time": "01:00",
    "date": "9/12/2024",
    "group": "ديسمبر",
    "image": "https://via.placeholder.com/150/f66b97"
  },
  {
    "id": 6,
    "title": "التسجيل 7",
    "time": "02:00",
    "date": "29/12/2024",
    "group": "ديسمبر",
    "image": "https://via.placeholder.com/150/56a8c2"
  },
  {
    "id": 7,
    "title": "التسجيل 8",
    "time": "05:00",
    "date": "29/12/2024",
    "group": "ديسمبر",
    "image": "https://via.placeholder.com/150/b0f7cc"
  },
];

class VideoView extends StatefulWidget {
  const VideoView({super.key});

  @override
  State<VideoView> createState() => _VideoViewState();
}

class _VideoViewState extends State<VideoView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.lightBeige,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: Container(
          margin: EdgeInsets.only(top: 30, left: 16, right: 16),
          child: AppBar(
            backgroundColor: AppColor.lightBeige,
            centerTitle: true,
            automaticallyImplyLeading: false,
            actions: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_forward,
                  size: 30,
                ),
              ),
            ],
            title: Text(
              "قائمة التسجيلات",
              textAlign: TextAlign.center,
             style: TextStyle(fontSize: 25,color: AppColor.darkPurplr),
            ),
          ),
        ),
      ),
      body: GroupedListView<dynamic, String>(
        elements: _dataDummy,
        groupBy: (element) => element['group'],
        groupSeparatorBuilder: (String groupByValue) => Padding(
          padding: EdgeInsets.all(10),
          child: Row(
            children: [
              Flexible(
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10, right: 10),
                      child: Text(
                        groupByValue,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        itemBuilder: (context, dynamic element) {
          return Card(
            elevation: 10,
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            shape: RoundedRectangleBorder(
              side: BorderSide(color: AppColor.darkPurplr, width:2.5),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Container(
              color: AppColor.lightBeige,
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  
                  IconButton(
                    icon: Icon(Icons.delete, color: Colors.grey),
                    onPressed: () {
                      setState(() {
                        _dataDummy
                            .removeWhere((item) => item['id'] == element['id']);
                      });
                    },),
                  Expanded(
                    flex: 5,
                    child: Container(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 10, right: 10),
                            child: Text(
                              element['title'],
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold,color: AppColor.darkPurplr),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsets.only(left: 10, right: 10, top: 5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  '${element['time']}',
                                  style: TextStyle(fontSize: 14),
                                ),
                                Text(
                                  '${element['date']}',
                                  style: TextStyle(fontSize: 14),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  
                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: NetworkImage(element['image']),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        itemComparator: (item1, item2) =>
            item1['id'].compareTo(item2['id']), 
        useStickyGroupSeparators: true,
        floatingHeader: true,
      ),
    );
  }
}