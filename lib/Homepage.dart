import 'package:flutter/material.dart';
import 'package:tong_layout/data/dataSet.dart';
import 'package:tong_layout/models/ModelData.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    List<String> items = List<String>.generate(10000, (i) => 'Item $i');
    List<ModelProduct> item_data = List.from(DataSet.dataSet);
    return Scaffold(
      body: ListView.builder(
        itemCount: item_data.length,
        itemBuilder: (context, index) {
          return Card(
            // elevation: 300,
            shape: RoundedRectangleBorder(
              side: const BorderSide(color: Colors.white70, width: 1),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Container(
              height: 100,
              child: ListTile(
                  leading: const FlutterLogo(),
                  title: Text(
                    item_data[index].itemName,
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(item_data[index].setUp.toString()),
                      Text(item_data[index].department.toString())
                    ],
                  ),
                  trailing: Column(
                    children: [
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        'MaesMax:' + item_data[index].measMax.toString(),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text('MaesMin:' + item_data[index].measMin.toString()),
                    ],
                  )),
            ),
          );
        },
      ),
    );
  }
}
