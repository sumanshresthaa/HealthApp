
import 'package:flutter/material.dart';
import 'package:healthapp/row.dart';

import 'column.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        //leading: for firts item ,
        //for last item
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Icon(Icons.notifications, color: Color(0xff6E6E6E),),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //First item
            Text('Namaste, Your Name', style: TextStyle(
              color: Color(0xFF292929),
              fontSize: 18,
              fontWeight: FontWeight.w700
            ),),
            //blank space
            SizedBox(height: 8,),
            //Second item
            Text('Welcome to Nepal Police App. Your comprehensive tool for modern policing.',
            style: TextStyle(
               color: Color(0xFF6E6E6E),
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
            ),
          SizedBox(
            height: 30,
          ),
          //Third item
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
//we have three container with icons in the row
              children: [
                //First item
                DashboardItem(imageLink: 'assets/icon1.png', itemText: 'Report COVID 19',colorForSpecific: Colors.green),
                DashboardItem(imageLink: 'assets/icon2.png',itemText: 'Report Incident'),
                DashboardItem(imageLink: 'assets/icon3.png',itemText: 'Emergency Num'),

              ],
            ),
            SizedBox(
              height: 45,
            ),
            //4th item of column
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

//we have three container with icons in the row
              children: [
                //First item
                DashboardItem(imageLink: 'assets/icon4.png', itemText: 'News'),
                DashboardItem(imageLink: 'assets/icon5.png', itemText: 'Notice'),
                DashboardItem(imageLink: 'assets/icon6.png', itemText: 'FM', colorForSpecific: Colors.yellow),

              ],
            ),
            SizedBox(
              height: 45,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
//we have three container with icons in the row
              children: [
                //First item
                DashboardItem(imageLink: 'assets/icon7.png', itemText: 'Station Nearby'),
                DashboardItem(imageLink: 'assets/icon8.png',itemText: 'e-Complaint'),
                DashboardItem(imageLink: 'assets/icon9.png', itemText: 'Clearance Report', colorForSpecific:Colors.red),


              ],
            ),
            
            
            // SizedBox(height: 20,),
            // TextButton(onPressed: (){
            //   Navigator.push(context, MaterialPageRoute(builder: (context){
            //     return ColumnPage();
            //   }));
            // }, child: Text('Column')),
            // TextButton(onPressed: (){
            //   Navigator.push(context, MaterialPageRoute(builder: (context){
            //     return RowPage();
            //   }));
            // }, child: Text('Row'))

          ],
        ),
      ),
      


    );
  }
}

class DashboardItem extends StatelessWidget {
    var imageLink;
  var itemText;
  var colorForSpecific;
//  var colorForSpecific;


  //Required
DashboardItem({required  this.imageLink,required  this.itemText, this.colorForSpecific});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: colorForSpecific,

        //the column consist image and the image label
        child: Column(

          children: [
            Image.asset(imageLink, scale: 2.25,),
            SizedBox(height: 16,),
            Text(itemText),
          ],
        ),
      ),
    );
  }
}
