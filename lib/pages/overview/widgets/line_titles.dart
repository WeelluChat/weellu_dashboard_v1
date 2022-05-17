import 'package:charts_flutter/flutter.dart';
import 'package:fl_chart/fl_chart.dart';

class LinesTitles {
  static getTitleData() => FlTitlesData(
        show: true,
        bottomTitles: SideTitles(
          showTitles: true,
          reservedSize: 22,
          getTitles: (value) {
            switch (value.toInt()) {
              case 0:
                return '06-04';
              case 1:
                return '07-04';
              case 2:
                return '08-04';
              case 3:
                return '09-04';
              case 4:
                return '10-04';
              case 5:
                return '11-04';
              case 6:
                return '12-04';
            }
            return '';
          },
          margin: 8,
        ),
        leftTitles: SideTitles(
          showTitles: true,
          getTitles: (value) {
            switch (value.toInt()) {
              case 100:
                return '100';
              case 500:
                return '500';
              case 1000:
                return '1000';
              case 1500:
                return '1500';
              case 2000:
                return '2000';
              case 2500:
                return '2500';
              case 3000:
                return '3000';
              case 3500:
                return '3500';
              case 4000:
                return '4000';
              case 10000:
                return '10000';
            }

            return '';
          },
          reservedSize: 38,
          margin: 15,
        ),
        rightTitles: SideTitles(
            reservedSize: 38,
            showTitles: true,
            margin: 15,
            getTitles: (value) {
              switch (value.toInt()) {
                case 0:
                  return '';
              }

              return '';
            }),
      );
}
