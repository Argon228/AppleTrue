import 'package:flutter/material.dart';
import 'dart:math';
import 'dart:async';

void main() => runApp(MaterialApp(
  home: UserPanel(),
));
class UserPanel extends StatefulWidget {
  const UserPanel({super.key});

  @override
  State<UserPanel> createState() => _UserPanelState();
}

class _UserPanelState extends State<UserPanel> {
  List upgrade_list = [];
  List boost_list = [];
  double _appies = 1;
  double _value = 1000000000.0;
  double _thous = 0.0;
  double _prestige = 12.0;
  int apples = 0;
  int farmers = 0;
  int farms = 0;
  int factories = 0;
  var _coef = [1, 1, 1, 1];
  var _current = [1.0, 0.0, 0.0, 0.0];
  var _temp = [0.1, 1, 8, 47];
  var _values = [15.0, 100.0, 1100.0, 12000.0];
  Timer? timer;
  void _apples() {
    if (_current[0] >= 10 && apples == 0) {
      apples = 1;
      upgrade_list.add('0xf04be');
      boost_list.add('aa');
    }
    if (_current[0] >= 25 && apples == 1) {
      apples = 2;
      upgrade_list.add('0xf04be');
      boost_list.add('ab');
    }
    if (_current[0] >= 50 && apples == 2) {
      apples = 3;
      upgrade_list.add('0xf04be');
      boost_list.add('ac');
    }
    if (_current[0] >= 100 && apples == 3) {
      apples = 4;
      upgrade_list.add('0xf04be');
      boost_list.add('ad');
    }
    if (_current[0] >= 150 && apples == 4) {
      apples = 5;
      upgrade_list.add('0xf04be');
      boost_list.add('ae');
    }
    if (_current[0] >= 200 && apples == 5) {
      apples = 6;
      upgrade_list.add('0xf04be');
      boost_list.add('af');
    }
    if (_current[0] >= 250 && apples == 6) {
      apples = 7;
      upgrade_list.add('0xf04be');
      boost_list.add('ag');
    }
    if (_current[0] >= 300 && apples == 7) {
      apples = 8;
      upgrade_list.add('0xf04be');
      boost_list.add('ah');
    }
  }
  void _farmers() {
    if (_current[1] >= 10 && farmers == 0) {
      farmers = 1;
      upgrade_list.add('0xe03c');
      boost_list.add('ba');
    }
    if (_current[1] >= 25 && farmers == 1) {
      farmers = 2;
      upgrade_list.add('0xe03c');
      boost_list.add('bb');
    }
    if (_current[1] >= 50 && farmers == 2) {
      farmers = 3;
      upgrade_list.add('0xe03c');
      boost_list.add('bc');
    }
    if (_current[1] >= 100 && farmers == 3) {
      farmers= 4;
      upgrade_list.add('0xe03c');
      boost_list.add('bd');
    }
    if (_current[1] >= 150 && farmers == 4) {
      farmers = 5;
      upgrade_list.add('0xe03c');
      boost_list.add('be');
    }
    if (_current[1] >= 200 && farmers == 5) {
      farmers = 6;
      upgrade_list.add('0xe03c');
      boost_list.add('bf');
    }
    if (_current[1] >= 250 && farmers == 6) {
      farmers = 7;
      upgrade_list.add('0xe03c');
      boost_list.add('bg');
    }
    if (_current[1] >= 300 && farmers == 7) {
      farmers = 8;
      upgrade_list.add('0xe03c');
      boost_list.add('bh');
    }
  }
  void _farms() {
    if (_current[2] >= 10 && farms == 0) {
      farms = 1;
      upgrade_list.add('0xe329');
      boost_list.add('ca');
    }
    if (_current[2] >= 25 && farms == 1) {
      farms = 2;
      upgrade_list.add('0xe329');
      boost_list.add('cb');
    }
    if (_current[2] >= 50 && farms == 2) {
      farms = 3;
      upgrade_list.add('0xe329');
      boost_list.add('cc');
    }
    if (_current[2] >= 100 && farms == 3) {
      farms = 4;
      upgrade_list.add('0xe329');
      boost_list.add('cd');
    }
    if (_current[2] >= 150 && farms == 4) {
      farms = 5;
      upgrade_list.add('0xe329');
      boost_list.add('ce');
    }
    if (_current[2] >= 200 && farms == 5) {
      farms = 6;
      upgrade_list.add('0xe329');
      boost_list.add('cf');
    }
    if (_current[2] >= 250 && farms == 6) {
      farms = 7;
      upgrade_list.add('0xe329');
      boost_list.add('cg');
    }
    if (_current[2] >= 300 && farms == 7) {
      farms = 8;
      upgrade_list.add('0xe329');
      boost_list.add('ch');
    }
  }
  void _factories() {
    if (_current[3] >= 10 && factories == 0) {
      factories = 1;
      upgrade_list.add('0xf04fd');
      boost_list.add('da');
    }
    if (_current[3] >= 25 && factories == 1) {
      factories = 2;
      upgrade_list.add('0xf04fd');
      boost_list.add('db');
    }
    if (_current[3] >= 50 && factories == 2) {
      factories = 3;
      upgrade_list.add('0xf04fd');
      boost_list.add('dc');
    }
    if (_current[3] >= 100 && factories == 3) {
      factories = 4;
      upgrade_list.add('0xf04fd');
      boost_list.add('dd');
    }
    if (_current[3] >= 150 && factories == 4) {
      factories = 5;
      upgrade_list.add('0xf04fd');
      boost_list.add('de');
    }
    if (_current[3] >= 200 && factories == 5) {
      factories = 6;
      upgrade_list.add('0xf04fd');
      boost_list.add('df');
    }
    if (_current[3] >= 250 && factories == 6) {
      factories = 7;
      upgrade_list.add('0xf04fd');
      boost_list.add('dg');
    }
    if (_current[3] >= 300 && factories == 7) {
      factories = 8;
      upgrade_list.add('0xf04fd');
      boost_list.add('dh');
    }
  }
  void _increase(String _up) {
    switch (_up[0]) {
      case 'a':
        switch (_up[1]) {
          case 'a':
            setState(() {
              _coef[0] *= 2;
            });
          case 'b':
            setState(() {
              _coef[0] *= 2;
            });
          case 'c':
            setState(() {
              _coef[0] *= 2;
            });
          case 'd':
            _thous = 0.1;
          case 'e':
            _thous *= 5;
          case 'f':
            _thous *= 10;
          case 'g':
            _thous *= 20;
          case 'h':
            _thous *= 20;
        }
      case 'b':
        setState(() {
          _coef[1] *= 2;
        });
      case 'c':
        setState(() {
          _coef[2] *= 2;
        });
      case 'd':
        setState(() {
          _coef[3] *= 2;
        });
    }
  }
  void _updater(){
    _appies = 1;
    for(int i = 0; i < _current.length; i++){
      _appies += _prestige * _current[i] * (_temp[i] + _thous * i * (_current[1] + _current[2] + _current[3])) * _coef[i];
    }
    _apples();
    _farmers();
    _farms();
    _factories();
    _value += _appies/100;
  }
  void _pressed(){
    _value += 0.5 * _appies;
  }
  bool _checker(String _check) {
    switch (_check[0]) {
      case 'a':
        switch (_check[1]) {
          case 'a':
            if (_value >= 100) {
              _value -= 100;
              return true;
            }
            return false;
          case 'b':
            if (_value >= 500) {
              _value -= 500;
              return true;
            }
            return false;
          case 'c':
            if (_value >= 10000) {
              _value -= 10000;
              return true;
            }
            return false;
          case 'd':
            if (_value >= 100000) {
              _value -= 100000;
              return true;
            }
            return false;
          case 'e':
            if (_value >= 10000000) {
              _value -= 10000000;
              return true;
            }
            return false;
          case 'f':
            if (_value >= 100000000) {
              _value -= 100000000;
              return true;
            }
            return false;
          case 'g':
            if (_value >= 1000000000) {
              _value -= 1000000000;
              return true;
            }
            return false;
          case 'h':
            if (_value >= 10000000000) {
              _value -= 10000000000;
              return true;
            }
            return false;
        }
      case 'b':
        switch (_check[1]) {
          case 'a':
            if (_value >= 1000) {
              _value -= 1000;
              return true;
            }
            return false;
          case 'b':
            if (_value >= 5000) {
              _value -= 5000;
              return true;
            }
            return false;
          case 'c':
            if (_value >= 50000) {
              _value -= 50000;
              return true;
            }
            return false;
          case 'd':
            if (_value >= 5000000) {
              _value -= 5000000;
              return true;
            }
            return false;
          case 'e':
            if (_value >= 500000000) {
              _value -= 500000000;
              return true;
            }
            return false;
          case 'f':
            if (_value >= 50000000000) {
              _value -= 50000000000;
              return true;
            }
            return false;
          case 'g':
            if (_value >= 50000000000000) {
              _value -= 50000000000000;
              return true;
            }
            return false;
          case 'h':
            if (_value >= 50000000000000000) {
              _value -= 50000000000000000;
              return true;
            }
            return false;
        }
      case 'c':
        switch (_check[1]) {
          case 'a':
            if (_value >= 11000) {
              _value -= 11000;
              return true;
            }
            return false;
          case 'b':
            if (_value >= 55000) {
              _value -= 55000;
              return true;
            }
            return false;
          case 'c':
            if (_value >= 550000) {
              _value -= 550000;
              return true;
            }
            return false;
          case 'd':
            if (_value >= 55000000) {
              _value -= 55000000;
              return true;
            }
            return false;
          case 'e':
            if (_value >= 5500000000) {
              _value -= 5500000000;
              return true;
            }
            return false;
          case 'f':
            if (_value >= 550000000000) {
              _value -= 550000000000;
              return true;
            }
            return false;
          case 'g':
            if (_value >= 550000000000000) {
              _value -= 550000000000000;
              return true;
            }
            return false;
          case 'h':
            if (_value >= 550000000000000000) {
              _value -= 550000000000000000;
              return true;
            }
            return false;
        }
      case 'd':
        switch (_check[1]) {
          case 'a':
            if (_value >= 120000) {
              _value -= 120000;
              return true;
            }
            return false;
          case 'b':
            if (_value >= 600000) {
              _value -= 600000;
              return true;
            }
            return false;
          case 'c':
            if (_value >= 6000000) {
              _value -= 6000000;
              return true;
            }
            return false;
          case 'd':
            if (_value >= 600000000) {
              _value -= 600000000;
              return true;
            }
            return false;
          case 'e':
            if (_value >= 60000000000) {
              _value -= 60000000000;
              return true;
            }
            return false;
          case 'f':
            if (_value >= 60000000000000) {
              _value -= 60000000000000;
              return true;
            }
            return false;
          case 'g':
            if (_value >= 60000000000000000) {
              _value -= 60000000000000000;
              return true;
            }
            return false;
          case 'h':
            if (_value >= 6000000000000000000) {
              _value -= 6000000000000000000;
              return true;
            }
            return false;
        }
    }
    return false;
  }
  dynamic _increment(int _flag){
    if(_value >= _values[_flag-1] && _flag == 1) {
      return () {
        setState(() {
          _value -= _values[_flag-1];
          _values[_flag-1] = 15.0 * pow(1.15, _current[_flag-1]);
          _current[_flag-1]++;
        });
      };
    }
    if(_value >= _values[_flag-1] && _flag == 2) {
      return () {
        setState(() {
          _value -= _values[_flag-1];
          _values[_flag-1] = 100.0 * pow(1.15, _current[_flag-1]+1);
          _current[_flag-1]++;
        });
      };
    }
    if(_value >= _values[_flag-1] && _flag == 3) {
      return () {
        setState(() {
          _value -= _values[_flag-1];
          _values[_flag-1] = 1100.0 * pow(1.15, _current[_flag-1]+1);
          _current[_flag-1]++;
        });
      };
    }
    if(_value >= _values[_flag-1] && _flag == 4){
      return(){
        setState(() {
          _value -= _values[_flag-1];
          _values[_flag-1] = 12000.0 * pow(1.15, _current[_flag-1]+1);
          _current[_flag-1]++;
        });
      };
    } else{
      return null;
    }
  }
  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(Duration(milliseconds: 10), (Timer t) => setState(() {
      _updater();
    }));
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        title: Text('SeeGame', style: TextStyle(fontSize: 40,color: Colors.blueAccent, fontStyle: FontStyle.italic),),
        centerTitle: true,
          backgroundColor: Colors.white,
      ),
      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(flex: 1, child:
            Column(
              children: [
                Padding(padding: EdgeInsets.only(top: 10),),
                Padding(padding: EdgeInsets.only(left: 10),),
                CircleAvatar(
                  maxRadius: 40,
                  backgroundImage: AssetImage('assets/AngelTrue.jpg'),
                ),
                Padding(padding: EdgeInsets.only(top: 10),),
                Text('TurboZames', style: TextStyle(fontSize: 30, fontFamily: 'AmaticSC-Bold',)),
                Padding(padding: EdgeInsets.only(top: 20),),
                FittedBox(
                  child: ElevatedButton.icon(onPressed: _increment(1), icon: Icon(Icons.apple), label: Text('Яблоко    ${_current[0]}  \n    ${_values[0] > 1000000000 ? _values[0].floor().toStringAsExponential(1) : _values[0].floor()}', style: TextStyle(fontSize: 30, fontFamily: 'AmaticSC-Bold',))),
                  fit: BoxFit.fitWidth,
                ),
                Padding(padding: EdgeInsets.only(top: 15),),
                FittedBox(
                  child: ElevatedButton.icon(onPressed: _increment(2), icon: Icon(Icons.man), label: Text('Фермер    ${_current[1]}  \n    ${_values[1] > 1000000000 ? _values[1].floor().toStringAsExponential(1) : _values[1].floor()}', style: TextStyle(fontSize: 30, fontFamily: 'AmaticSC-Bold',))),
                  fit: BoxFit.fitWidth,
                ),
                Padding(padding: EdgeInsets.only(top: 15),),
                FittedBox(
                  child: ElevatedButton.icon(onPressed: _increment(3), icon: Icon(Icons.house_siding), label: Text('Ферма    ${_current[2]}   \n    ${_values[2] > 1000000000 ? _values[2].floor().toStringAsExponential(1) : _values[2].floor()}', style: TextStyle(fontSize: 30, fontFamily: 'AmaticSC-Bold',))),
                  fit: BoxFit.fitWidth,
                ),
                Padding(padding: EdgeInsets.only(top: 15),),
                FittedBox(
                  child: ElevatedButton.icon(onPressed: _increment(4), icon: Icon(Icons.factory), label: Text('Фабрика    ${_current[3]}\n    ${_values[3] > 1000000000 ? _values[3].floor().toStringAsExponential(1) : _values[3].floor()}', style: TextStyle(fontSize: 30, fontFamily: 'AmaticSC-Bold',))),
                  fit: BoxFit.fitWidth,
                ),],),),
            Flexible(flex: 3, child: Container(padding: EdgeInsets.only(left:100),
              child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.ac_unit, size: 25),
                Padding(padding: EdgeInsets.only(top: 35),),
                Text('${_value > 1000000000 ? _value.floor().toStringAsExponential(1) : _value.floor()} Apples', style: TextStyle(fontSize: 60, fontFamily: 'AmaticSC-Bold'),),
                Text('${_appies > 1000000000 ? _appies.floor().toStringAsExponential(1) : _appies.floor()} ApS', style: TextStyle(fontSize: 35, fontFamily: 'AmaticSC-Bold'),),
                Padding(padding: EdgeInsets.only(top: 30),),
                IconButton(onPressed: _pressed, icon: Image.asset('AppleClick.png', ), iconSize: 150, ),
                Padding(padding: EdgeInsets.only(top: 35),),
                Icon(Icons.ac_unit, size: 25),
              ],
            ),),),

                Flexible(flex: 1,child:
                    Container(alignment: Alignment.topRight, padding: EdgeInsets.only(top:20, right: 10), child:
                    SizedBox(width: 500, height: 150, child:
                GridView.builder(
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 30, crossAxisSpacing: 20, mainAxisSpacing: 20, mainAxisExtent: 40),
                  itemCount: upgrade_list.length,
                  itemBuilder: (BuildContext context, int index) {
                    return FloatingActionButton(onPressed: () {if(_checker(boost_list[index])){_increase(boost_list[index]); boost_list.removeAt(index);upgrade_list.removeAt(index);}}, child: Icon(IconData(int.parse(upgrade_list[index]), fontFamily: 'MaterialIcons')),
                    );}
                ),),),),
          ],

        ),),
    );}
}

