import 'dart:io';
import 'package:erdata_app/child_detail.dart';
import 'package:erdata_app/children.dart';
import 'package:go_router/go_router.dart';
import 'profile.dart';
import 'Suggestion.dart';
import 'child_donation.dart';
import 'home_sample.dart';
import 'login.dart';
import 'child_detail.dart';
import 'children.dart';
import 'package:flutter/material.dart';
import 'routing.dart';
import 'home.dart';
import 'theme.dart';


void main() {
  runApp(const profile());
}

class profile extends StatelessWidget {
  const profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final router = GoRouter(
      initialLocation: '/',
      routes: [
         GoRoute(
          name: 'suggest',
          path: '/suggest', 
          pageBuilder: (BuildContext context, state)=>
             MaterialPage(
              key: state.pageKey,
              child: Suggestion(),
            ),
          
        ),
        GoRoute(
          name: 'home',
          path: '/', 
          pageBuilder: (BuildContext context, state)=>
             MaterialPage(
              key: state.pageKey,
              child: Home(),
            ),
          
        ),
        GoRoute(
          name: 'login',
          path: '/login', 
          pageBuilder: (BuildContext context, state) =>
            MaterialPage(
              key: state.pageKey,
              child: LogIn(),
            ),
          
        ),
        GoRoute(
          name: 'list',
          path: '/list', 
          pageBuilder: (BuildContext context, state) =>
           MaterialPage(
              key: state.pageKey,
              child: Child_Donation()
            ),
        //     routes: [
        // GoRoute(
        //   name: 'details',
        //   path: '/profile', 
        //   pageBuilder: (context, state) {
        //     final child = _childFrom(state.params['id']!);
        //      return MaterialPage(
        //       key: state.pageKey,
        //       child: Child_Detail(
        //         child: child ,
        //       )
        //     );
        //   }
        //  ),
        //     ]
          
          
        ),
         

        
      ],
      errorPageBuilder: (context, state){
        
        return MaterialPage(
          key: state.pageKey,
          child: Scaffold(
            body: Center(child: Text(state.error.toString()),)
          ),
        );

      });

    return MaterialApp.router(
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
      title: 'profile first',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.dark(),
      
    );
  }
}
// Children _childFrom(String s){
//   return children.where((child) => child.id.toString() == s);
// }

