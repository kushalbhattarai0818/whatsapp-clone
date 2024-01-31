import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hamropalika02/const/app_color.dart';
import 'package:hamropalika02/model/auth_view_model.dart';
import 'package:hamropalika02/model/details_view_model.dart';
import 'package:hamropalika02/model/profile_view_model.dart';
import 'package:hamropalika02/screens/home_screens/bottom_navigation_bar/bottom_navigation_bar.dart';
import 'package:provider/provider.dart';
import 'firebase_options.dart';

void main()async{
  WidgetsFlutterBinding.ensureInitialized();
 await Firebase.initializeApp(
   options: DefaultFirebaseOptions.currentPlatform,
 );
runApp(login_app());
}

class login_app extends StatelessWidget {
  const login_app({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
  statusBarColor: AppColors.secondaryyColor
));
     ThemeData(
      
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 7, 109, 10), ),
        useMaterial3: true,
      );
    return MultiProvider(providers: [ChangeNotifierProvider(create: (context)=>ProfileViewModel()),
                          ChangeNotifierProvider(create: (context)=>DetailsViewModel()),
                          ChangeNotifierProvider(create: (context)=>AuthViewModel()),
    
    ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'login app',
        home: BottomBarScreen(),
         
      ),
    );
 

  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
   
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
       
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
       
        title: Text(widget.title),
      ),
      body: Center(
       
        child: Column(
        
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), 
    );
  }
}
