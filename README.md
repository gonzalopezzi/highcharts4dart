Highcharts for Dart
-------------------
Highcharts for Dart is a component for **Angular Dart** that will help you integrate Highcharts in your Dart Web Applications. 
This component uses **dart:js** to communicate with the Highcharts API, but it has been written to take full advantage of all the features that make Dart an amazing platform for large scale applications. 

Features
--------
Highcharts for Dart has the following features: 
> - This component does not use JQuery. It uses the [standalone-framework](https://github.com/highslide-software/highcharts.com/blob/master/js/adapters/standalone-framework.src.js) instead wich has a much lower bandwidth impact. 
> - The configuration of the chart consists of a full set of typed objects, instead of plain javascript objects (maps) so you will not have to remember all the properties: press **Ctrl + Space** and you will get the hints you need (piece of cake!)

How does it work?
-----------------
First of all, add the dependency to your **pubspec.yaml**: 
```
dependencies: 
  highcharts4dart: any
```

Then, don't forget to add the required js scripts to your main html file: 
```
<head>
  [...]
  <script src="packages/highcharts4dart/standalone-framework.src.js"></script>
</head>
<body>
  [...]
  <script src="packages/highcharts4dart/highcharts.src.js"></script>
</body>
```

Bind the HighchartComponent to your **AngularDart Module**: 
```
import 'package:highcharts/highcharts.dart';

class MainModule extends Module {
  MainModule() {
    /* ... */
    bind(HighChartComponent);
  }
}
```

Add the component to your view (html): 
```
<high-chart chart-options="ctrl.basicLineChart"></high-chart>
```

Create the chart options object in your controller: 
```
basicLineChart = new HighChart ()
                  ..title = (new Title ()
                              ..text = 'Basic Line')
                  ..chart = (new Chart ()
                              ..type = "line"
                              ..borderColor = "#CCC"
                              ..borderWidth = 1
                              ..borderRadius = 8
                              ..backgroundColor = "rgba(0,0,0,0)"
                             )
                  ..credits = credits
                  ..subtitle = (new Subtitle()
                                  ..text = 'Monthly Average Temperature'
                                  ..x = -20)
                  ..xAxis = (new XAxis()
                                  ..categories = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun',
                                                  'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'])
                  ..yAxis = (new YAxis ()
                                  ..title = (new AxisTitle()
                                                   ..text = "Temperature (ºC)"))
                  ..tooltip = (new Tooltip()
                                        ..valueSuffix = "ºC"
                                        ..formatter = toolTipFormatter)
                  ..legend = (new Legend ()
                                        ..layout = "vertical"
                                        ..align = "right"
                                        ..verticalAlign = "middle" 
                                        ..borderWidth = 0)
                  ..series = [
                        new Series()..numData = [7.0, 6.9, 9.5, 14.5, 
                                                18.2, 21.5, 25.2, 26.5, 
                                                23.3, 18.3, 13.9, 9.6]
                                    ..name = 'Tokyo'
                                    ..type = 'line', 
                        new Series()..numData = [-0.2, 0.8, 5.7, 11.3, 
                                                17.0, 22.0, 24.8, 24.1, 
                                                20.1, 14.1, 8.6, 2.5]
                                    ..name = 'New York'
                                    ..type = 'line',
                        new Series()..numData = [-0.9, 0.6, 3.5, 8.4, 
                                                13.5, 17.0, 18.6, 17.9, 
                                                14.3, 9.0, 3.9, 1.0]
                                    ..name = 'Berlin'
                                    ..type = 'line',
                        new Series()..numData = [3.9, 4.2, 5.7, 8.5, 
                                                11.9, 15.2, 17.0, 16.6, 
                                                14.2, 10.3, 6.6, 4.8]
                                    ..name = 'London'
                                    ..type = 'line'
                      ];
```

Samples
-------
Go to the [samples page](http://highcharts-samples.gonzalopezzi.com/) for a bunch of running examples. 
If you are not used to using Highcharts, the configuration of a new chart can be quite overwhelming. You will find those examples very useful. 


**Do you need more?** there are plenty of examples in the [official Highcharts demo site](www.highcharts.com/demo). Though it is written in javascript, it is pretty much the same code and you will notice that the typed configuration in Dart will make your life easier. 


Disclaimer
----------
*This is just a work in progress. This component is not yet available via pub, but it will be sooner than later. This is just a piece of software to help people use Highcharts in their Dart projects, but the author is not part of the Highcharts team. *
*Keep in mind that if you want to use Highcharts in commercial applications, you will have to acquire a developer licence* 
