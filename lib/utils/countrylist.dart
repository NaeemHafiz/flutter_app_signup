import 'package:flutter/material.dart';
import 'package:flutter_app_signup/utils/widget_values.dart';



class CountryList extends StatelessWidget {
  List<String> strArr = ['Pakistan', 'China', 'Turkey', 'Russia', 'Sri Lanka'];
  String selectedValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Country List")),
      body: Container(
        child: buidList(),
      ),
    );
  }

  Widget buidList() {
    return ListView.builder(
      itemCount: strArr.length,
      itemBuilder: (context, index) {
        return listWidget(context, index, strArr);
      },
    );
  }

  Widget listWidget(BuildContext context, int index, List<String> countries) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context, countries[index]);
      },
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(countries[index], style: WidgetValues.textStyleListView),
                Text('+92', style: WidgetValues.textStyleListView),
              ],
            ),
            Divider(
              color: Colors.grey.withOpacity(0.7),
              thickness: 0.50,
            ),
          ],
        ),
      ),
    );
  }
}
