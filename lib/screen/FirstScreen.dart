import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Container(
            alignment: Alignment.center,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFF212121),
                  Color(0xFFD32F2F),
                  Color(0xFF212121),
                ],
                end: Alignment.bottomRight,
                begin: Alignment.topLeft,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 300,
                  height: 350,

                  child: Card(
                    elevation: 50,
                    shadowColor: Colors.black,
                    color: Colors.grey[900],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: CircleAvatar(
                            radius: 30,
                            child: Icon(
                              Icons.person,
                              color: Colors.white,
                              size: 35,
                            ),
                            backgroundColor: Colors.red[700],
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(top: 25, right: 15, left: 15),
                          decoration: BoxDecoration(
                            border:
                                Border.all(color: Color(0xFFD32F2F), width: 1),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'User name',
                              hintStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                              prefixIcon: Icon(
                                Icons.account_circle,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(top: 15, right: 15, left: 15),
                          decoration: BoxDecoration(
                            border:
                                Border.all(color: Color(0xFFD32F2F), width: 1),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Password',
                              hintStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                              prefixIcon: Icon(
                                Icons.lock_outline,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: ConstrainedBox(
                            constraints: BoxConstraints.tightFor(width: 200),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.red[700],
                                  elevation: 5,
                                  shadowColor: Colors.red[700]),
                              onPressed: () {},
                              child: Text('LOGIN'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
