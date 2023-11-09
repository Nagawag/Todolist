import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Set extends ConsumerWidget {
  @override
  Widget build (BuildContext context , ScopeReader watch ){
    final darkMode = watch(darkModeProvider) ;

  }
}