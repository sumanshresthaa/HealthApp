import 'package:flutter/material.dart';

class RowPage extends StatelessWidget {
  const RowPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [

            Text('Namaste '),
            Text('Welcome to Nepal Police App'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
crossAxisAlignment: CrossAxisAlignment.start,
//we have three container with icons in the row
              children: [
                //First item
                Expanded(
                  child: Container(
                    height: 100,
                    color: Colors.redAccent,

                    //the column consist image and the image label
                    child: Column(
                      children: [
                        Image.asset('assets/icon1.png', scale: 2.25,),
                        SizedBox(height: 16,),
                        Text('Report COVID 19'),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 100,
                    color: Colors.blueAccent,
                    //the column consist image and the image label
                    child: Column(
                      children: [
                        Image.asset('assets/icon2.png', scale: 2.25,),
                        SizedBox(height: 16,),

                        Text('Report Incident'),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 100,
                    color: Colors.yellowAccent,
                    //the column consist image and the image label
                    child: Column(
                      children: [
                        Image.asset('assets/icon3.png', scale: 2.25,),
                        SizedBox(height: 16,),

                        Text('Emergency Num'),
                      ],
                    ),
                  ),
                ),

              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
//we have three container with icons in the row
              children: [
                //First item
                Expanded(
                  child: Container(
                    height: 100,
                    color: Colors.redAccent,

                    //the column consist image and the image label
                    child: Column(
                      children: [
                        Image.asset('assets/icon1.png', scale: 2.25,),
                        SizedBox(height: 16,),
                        Text('Report COVID 19'),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 100,
                    color: Colors.blueAccent,
                    //the column consist image and the image label
                    child: Column(
                      children: [
                        Image.asset('assets/icon2.png', scale: 2.25,),
                        SizedBox(height: 16,),

                        Text('Report Incident'),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 100,
                    color: Colors.yellowAccent,
                    //the column consist image and the image label
                    child: Column(
                      children: [
                        Image.asset('assets/icon3.png', scale: 2.25,),
                        SizedBox(height: 16,),

                        Text('Emergency Num'),
                      ],
                    ),
                  ),
                ),

              ],
            ),


          ],
        ),
      ),
    );
  }
}
