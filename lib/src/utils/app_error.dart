import 'package:flutter/material.dart';

enum AppErrorType { 
  operationUnsupported,
  passwordIncorrect,
  addressAlreadyExist,
  mnemonicInvalid 
  }



class AppError implements Exception{

 AppErrorType type;
 AppError({@required this.type});
 String toString() => '${type.toString().split(".").last}';

}

