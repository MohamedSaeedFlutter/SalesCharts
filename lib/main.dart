import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

void main() {
  return runApp(_ChartApp());
}

class _ChartApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      home: _MyHomePage(),
    );
  }
}

class _MyHomePage extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  _MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<_MyHomePage> {
  List<_SalesData> data = [
    _SalesData('Jan', 35),
    _SalesData('Feb', 28),
    _SalesData('Mar', 34),
    _SalesData('Apr', 32),
    _SalesData('May', 40)
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('7 different Charts'),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 48),
          child: ListView(
            physics: const ScrollPhysics(),
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            children: [
              SfCartesianChart(
                primaryXAxis: CategoryAxis(),
                // Chart title
                title: ChartTitle(text: 'Half yearly sales analysis'),
                // Enable legend
                legend: Legend(isVisible: true),
                // Enable tooltip
                tooltipBehavior: TooltipBehavior(enable: true),
                series: <ChartSeries<_SalesData, String>>[
                  LineSeries<_SalesData, String>(
                      dataSource: data,
                      xValueMapper: (_SalesData sales, _) => sales.year,
                      yValueMapper: (_SalesData sales, _) => sales.sales,
                      name: 'Sales',
                      // Enable data label
                      dataLabelSettings: const DataLabelSettings(isVisible: true)
                  )
                ]),
              SfSparkLineChart.custom(
                //Enable the trackball
                trackball: const SparkChartTrackball(
                    activationMode: SparkChartActivationMode.tap),
                //Enable marker
                marker: const SparkChartMarker(
                    displayMode: SparkChartMarkerDisplayMode.all),
                //Enable data label
                labelDisplayMode: SparkChartLabelDisplayMode.all,
                xValueMapper: (int index) => data[index].year,
                yValueMapper: (int index) => data[index].sales,
                dataCount: 5,
              ),
              SfSparkAreaChart.custom(
                //Enable the trackball
                trackball: const SparkChartTrackball(
                    activationMode: SparkChartActivationMode.tap),
                //Enable marker
                marker: const SparkChartMarker(
                    displayMode: SparkChartMarkerDisplayMode.all),
                //Enable data label
                labelDisplayMode: SparkChartLabelDisplayMode.all,
                xValueMapper: (int index) => data[index].year,
                yValueMapper: (int index) => data[index].sales,
                dataCount: 5,
              ),
              SfSparkBarChart.custom(
                //Enable the trackball
                trackball: const SparkChartTrackball(
                    activationMode: SparkChartActivationMode.tap),
                //Enable marker
                // marker: const SparkChartMarker(
                //     displayMode: SparkChartMarkerDisplayMode.all),
                //Enable data label
                labelDisplayMode: SparkChartLabelDisplayMode.all,
                xValueMapper: (int index) => data[index].year,
                yValueMapper: (int index) => data[index].sales,
                dataCount: 5,
              ),
              SfCircularChart(
                  title: ChartTitle(text: 'Sales by sales person'),
                  legend: Legend(isVisible: true),
                  series: <PieSeries<_SalesData, String>>[
                    PieSeries<_SalesData, String>(
                        explode: true,
                        explodeIndex: 0,
                        dataSource: data ,
                        xValueMapper: (_SalesData data, _) => data.year,
                        yValueMapper: (_SalesData data, _) => data.sales,
                        dataLabelMapper: (_SalesData data, _) => data.year,
                        dataLabelSettings: const DataLabelSettings(isVisible: true)),
                  ]
              ),
              SfPyramidChart(
                legend: Legend(isVisible: true),
                title: ChartTitle(text: 'Sales by sales person'),
                series: PyramidSeries(
                  xValueMapper: (dynamic sales, _) => sales.year,
                  yValueMapper: (dynamic sales, _) => sales.sales,
                  name: 'Sales',
                  dataSource: data
                ),
              ),
              SfFunnelChart (
                legend: Legend(isVisible: true),
                title: ChartTitle(text: 'Sales by sales person'),
                series: FunnelSeries(
                    xValueMapper: (dynamic sales, _) => sales.year,
                    yValueMapper: (dynamic sales, _) => sales.sales,
                    name: 'Sales',
                    dataSource: data
                ),
              ),
            ],
           // Column(children: [
           //    //Initialize the chart widget
           //
           //  ]),
          ),
        ));
  }
}

class _SalesData {
  _SalesData(this.year, this.sales);

  final String year;
  final double sales;
}
















// import 'package:charts/subscriber_charts.dart';
// import 'package:charts_flutter/flutter.dart' as charts;
// import 'package:flutter/material.dart';
//
// import 'home.dart';
//
// /// The main gallery app widget.
// class GalleryApp extends StatefulWidget {
//   GalleryApp({Key key}) : super(key: key);
//
//   @override
//   GalleryAppState createState() => GalleryAppState();
// }
//
// class GalleryAppState extends State<GalleryApp> {
//
//   @override
//   Widget build(BuildContext context) {
//     return  MaterialApp(
//       debugShowCheckedModeBanner: false,
//         title: "Charts",
//         home:Scaffold(
//           body: Center(child: HomePage(),),
//         )
//        );
//   }
// }
//
// void main() {
//   runApp(GalleryApp());
// }