import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
        title: const Text(
          'Currrency Converter',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        color: Colors.black,
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'United States Dollar equals ',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
            SizedBox(height: 8),
            Text(
              '330.37 Sri Lankan Rupee',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(height: 20),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.black,
                    child: TextField(
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(
                          RegExp(r'^\d+\.?\d{0,2}?$'),
                        ),
                      ],
                      keyboardType:
                          TextInputType.numberWithOptions(decimal: true),
                      decoration: InputDecoration(
                        hintText: 'Enter Value',
                        hintStyle: TextStyle(color: Colors.grey[300]),
                        filled: true,
                        fillColor: Colors.black,
                      ),
                      style: TextStyle(color: Colors.white),
                      // Implement additional text field properties as needed
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                      color: Colors.black,
                      child: Text(
                        'United States Dollar',
                        style: TextStyle(
                          color: Colors.grey[300],
                          backgroundColor: Colors.black,
                        ),
                      )),
                ),
              ],
            ),
            Container(height: 20),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.black,
                    child: TextField(
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(
                          RegExp(r'^\d+\.?\d{0,2}?$'),
                        ),
                      ],
                      keyboardType:
                          TextInputType.numberWithOptions(decimal: true),
                      decoration: InputDecoration(
                        hintText: 'Enter Value',
                        hintStyle: TextStyle(color: Colors.grey[300]),
                        filled: true,
                        fillColor: Colors.black,
                      ),
                      style: TextStyle(color: Colors.white),
                      // Implement additional text field properties as needed
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                      color: Colors.black,
                      child: Text(
                        'Sri Lankan Rupees',
                        style: TextStyle(
                          color: Colors.grey[300],
                          backgroundColor: Colors.black,
                        ),
                      )),
                ),
              ],
            ),
            Container(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    print(' convert USD to Rs.');
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    onPrimary: Colors.grey,
                    side: BorderSide(width: 1, color: Colors.grey),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  child: Text('USD --> Rs.'),
                ),
                SizedBox(width: 16),
                ElevatedButton(
                  onPressed: () {
                    print('values');
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    onPrimary: Colors.grey,
                    side: BorderSide(width: 1, color: Colors.grey),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  child: Text('Rs. --> USD'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
