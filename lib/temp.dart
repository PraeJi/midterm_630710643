import 'dart:io';

enum Result{
  cf,ck,fc,fk,kc,kf
}
class Temp{
  /*
  var input = stdin.readLineSync();
  var num = int.tryParse(input!);
  if (num == null) {
    continue;
  }

   */
  Result doTemp(int num){
    var cToF = 9/5*(num) + 32; return Result.cf;
    var cToK= num+273; return Result.ck;
    var fToC = (5/9)*(num-32); return Result.fc;
    var fToK = 5/9*(num - 32) + 273.15; return Result.fk;
    var kToC = num-273 + 273.15; return Result.kc;
    var kToF = 9/5*(num - 273) + 32; return Result.kf;
  }
}