// import 'package:charts/first_package/subscriber_series.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:charts_flutter/flutter.dart' as charts;
//
// class SubscriberCharts extends StatelessWidget {
//   const SubscriberCharts({this.data});
//   final List<SubscriberSeries> data;
//   @override
//   Widget build(BuildContext context) {
//     List<charts.Series<SubscriberSeries , String>> series =
//     [
//       charts.Series(
//         id: "Subscribers",
//         data: data,
//         domainFn: (SubscriberSeries series , _) => series.year,
//         measureFn: (SubscriberSeries series, _) => series.subscribers,
//         // colorFn:  (SubscriberSeries series, _) => series.barColor,
//
//       )
//     ];
//     return
//       Container(
//         height: 400,
//         padding:  const EdgeInsets.all(20),
//         child: Column(children:  [
//           const Text("World of WarCraft Subscriber per year",
//           style: TextStyle(fontSize: 24,fontWeight: FontWeight.w500),),
//           Expanded(child: charts.BarChart(series ,animate: true,)),
//         ],),);
//   }
// }
//
//
