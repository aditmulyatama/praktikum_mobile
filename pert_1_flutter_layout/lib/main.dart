import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.red),
      home: Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.home),
          title: const Text('Praktikum TPM'),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.call, color: Colors.white),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.search, color: Colors.white),
              onPressed: () {},
            ),
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              FlutterLogo(
                size: 100,
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: Form(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25),
                          child: TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              labelText: 'email',
                              hintText: 'Enter your email',
                              prefixIcon: Icon(Icons.email),
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                            ),
                            onChanged: (String value) {},
                            validator: (value) {
                              return value!.isEmpty ? 'Please enter email' : null;
                            },
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25),
                          child: TextFormField(
                            keyboardType: TextInputType.visiblePassword,
                            decoration: InputDecoration(
                              labelText: 'Password',
                              hintText: 'Enter your password',
                              prefixIcon: Icon(Icons.password),
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                            ),
                            onChanged: (String value) {},
                            validator: (value) {
                              return value!.isEmpty ? 'Please enter password' : null;
                            },
                          ),
                        ),
                      ],
                    )),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 55),
                child: MaterialButton(
                  minWidth: double.infinity,
                  onPressed: () {},
                  child: const Text('Login'),
                  color: Colors.red,
                  textColor: Colors.white,
                ),
              ),
              MaterialButton(
                onPressed: () {},
                child: Text('Forgot Password?'),
                textColor : Colors.grey,
              )
            ],
          ),
        ),
      ),
    );
  }
  // @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     home: Scaffold(
  //       backgroundColor: Colors.white,
  //       appBar: AppBar(
  //         leading: Icon(Icons.home),
  //         title: Text('Ini Appbar'),
  //         backgroundColor: Colors.red,
  //         actions: <Widget>[
  //           IconButton(
  //             icon: new Icon(Icons.call, color: Colors.white),
  //             onPressed: () {},
  //           ),
  //           IconButton(
  //             icon: new Icon(Icons.search, color: Colors.white),
  //             onPressed: () {},
  //           ),
  //         ],
  //       ),
  //       // body: Center(
  //       //   child: Column(
  //       //     mainAxisAlignment: MainAxisAlignment.center,
  //       //     crossAxisAlignment: CrossAxisAlignment.center,
  //       //     children: <Widget>[
  //       //       Text('Halo Dunia'),
  //       //       TextButton(
  //       //         onPressed: () {},
  //       //         child: Text('Text Button'),
  //       //         style: TextButton.styleFrom(
  //       //           primary: Colors.blue,
  //       //         ),
  //       //       ),
  //       //       ElevatedButton(
  //       //         onPressed: () {},
  //       //         child: Text('Elevated Button',
  //       //             style: TextStyle(color: Colors.red)),
  //       //         style: ElevatedButton.styleFrom(
  //       //             primary: Colors.green,
  //       //             textStyle: TextStyle(
  //       //               fontSize: 20,
  //       //               fontWeight: FontWeight.bold,
  //       //             )),
  //       //       ),
  //       //       SizedBox(height: 15,),
  //       //       Image.network(
  //       //         'http://picsum.photos/300/200',
  //       //         width: 100,
  //       //         height: 50,
  //       //       ),
  //       //       SizedBox(height: 15,),
  //       //       Image.asset('assets/images/rick-astley.jpg',width: 100,height: 50,),
  //       //       SizedBox(height: 15,),
  //       //       TextFormField(
  //       //         decoration: InputDecoration(
  //       //           hintText: 'Nama anda',
  //       //           border: OutlineInputBorder(
  //       //             borderRadius: BorderRadius.all(Radius.circular(16.0))
  //       //           ),
  //       //           icon: Icon(Icons.person),
  //       //         ),
  //       //       ),
  //       //
  //       //     ],
  //       //   ),
  //       // ),
  //       // body: ListView.builder(
  //       //   itemBuilder: (context, index) {
  //       //     return Card(
  //       //       child: Padding(
  //       //         padding: const EdgeInsets.all(15.0),
  //       //         child: Text('Index $index', style: TextStyle(fontSize:
  //       //         30)),
  //       //       ),
  //       //     );
  //       //   },
  //       //   itemCount: 12,
  //       // ),
  //       body: ListView(children: <Widget>[
  //         Container(
  //           padding: EdgeInsets.all(15),
  //           child: Text('Flutter Widget: Penggunaan ListView Class',
  //               style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
  //         ),
  //         Container(
  //           padding: EdgeInsets.all(15),
  //           child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce venenatis vehicula ligula quis sagittis. Suspendisse vitae iaculis ipsum. Pellentesque eget dui lorem. Aenean sit amet sollicitudin justo. Nam sodales sodales nunc, tempor vulputate leo placerat nec. Etiam pellentesque quis lorem vel commodo. Vivamus at porta felis. Etiam odio odio, dictum id sollicitudin sit amet, ultricies ac orci. Ut pretium convallis leo eget rutrum. Vivamus quis lectus fermentum, interdum nisl vitae, mollis lacus. Suspendisse venenatis molestie sapien, at cursus ligula. Proin ultrices suscipit semper. Ut vel metus sit amet dui gravida laoreet. Cras faucibus dolor vel dui efficitur, vitae tempus purus maximus. Duis nunc neque, elementum ut dui a, fringilla sollicitudin metus. Cras nec sem lobortis, fringilla leo eget, gravida quam. Vivamus feugiat erat vel maximus tempor. Nullam ac dapibus tellus. Nam viverra in turpis sed finibus. Ut cursus mauris id mollis posuere.Duis tempor metus ac est rhoncus, et commodo lacus pretium. Proin at mauris sit amet dolor tincidunt sodales at eu neque. Sed auctor consectetur nunc, ac volutpat lectus. Aliquam et est tincidunt, finibus tortor vel, dapibus urna. Fusce sodales rhoncus massa, nec dictum nunc imperdiet id. Nullam feugiat lacus vitae elit feugiat, ac tempor lacus posuere. Cras varius diam mauris, ut consectetur neque tincidunt in.', style: TextStyle(fontSize: 16)),
  //         ),
  //       ]),
  //     ),
  //   );
  // }
}
