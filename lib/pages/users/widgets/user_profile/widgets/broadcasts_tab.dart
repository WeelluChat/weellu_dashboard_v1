import 'package:flutter/material.dart';

class BroadcastsTab extends StatelessWidget {
  const BroadcastsTab({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 5),
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'S.no',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Text(
                  'Broadcast Title',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Text(
                  'Users',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Text(
                  'Report Count',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Text(
                  'Actions',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 4),
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(color: Colors.white),
                bottom: BorderSide(color: Colors.white),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  '1',
                  style: TextStyle(fontSize: 14),
                ),
                Text(
                  'Broadcast Title',
                  style: TextStyle(fontSize: 14),
                ),
                Text(
                  '1',
                  style: TextStyle(fontSize: 14),
                ),
                Text(
                  '0',
                  style: TextStyle(fontSize: 14),
                ),
                Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.remove_red_eye,
                          color: Colors.grey,
                        ),
                        tooltip: 'View',
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.green,
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.lock,
                        ),
                        color: Colors.green,
                        tooltip: 'Unlock',
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.red),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.delete_forever),
                        color: Colors.red,
                        tooltip: 'Delete',
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 4),
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(color: Colors.white),
                bottom: BorderSide(color: Colors.white),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  '2',
                  style: TextStyle(fontSize: 14),
                ),
                Text(
                  'Broadcast Title',
                  style: TextStyle(fontSize: 14),
                ),
                Text(
                  '1',
                  style: TextStyle(fontSize: 14),
                ),
                Text(
                  '0',
                  style: TextStyle(fontSize: 14),
                ),
                Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.remove_red_eye,
                          color: Colors.grey,
                        ),
                        tooltip: 'View',
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.green,
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.lock,
                        ),
                        color: Colors.green,
                        tooltip: 'Unlock',
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.red),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.delete_forever),
                        color: Colors.red,
                        tooltip: 'Delete',
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 4),
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(color: Colors.white),
                bottom: BorderSide(color: Colors.white),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  '3',
                  style: TextStyle(fontSize: 14),
                ),
                Text(
                  'Broadcast Title',
                  style: TextStyle(fontSize: 14),
                ),
                Text(
                  '1',
                  style: TextStyle(fontSize: 14),
                ),
                Text(
                  '0',
                  style: TextStyle(fontSize: 14),
                ),
                Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.remove_red_eye,
                          color: Colors.grey,
                        ),
                        tooltip: 'View',
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.green,
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.lock,
                        ),
                        color: Colors.green,
                        tooltip: 'Unlock',
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.red),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.delete_forever),
                        color: Colors.red,
                        tooltip: 'Delete',
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
