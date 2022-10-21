import 'package:get/get.dart';
import 'package:flutter/material.dart';

class Controller extends GetxController{
  var count = 0.obs;
  increment() => count++;
}