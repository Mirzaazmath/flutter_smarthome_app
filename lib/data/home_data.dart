import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Device{
  final IconData icon;
  final String  title;
  final String noofDevices;
  Device({required this.title,required this.icon,required this.noofDevices});
}
List<Device>devicelist=[
  Device(title: "Smart Light", icon: Icons.light, noofDevices: "4 Lamps"),
  Device(title: "Smart AC", icon: Icons.heat_pump, noofDevices: "2 Devices"),
  Device(title: "Smart TV", icon: Icons.tv, noofDevices: "1 Devices"),
  Device(title: "Smart Speaker", icon: Icons.volume_up, noofDevices: "2 Devices")
];

class Shade{
  final IconData icon;
  final String  title;
  Shade({required this.title,required this.icon});

}
List<Shade>shades=[
  Shade(icon: Icons.hdr_auto,title: "Auto"),
  Shade(icon: Icons.ac_unit,title: "Cool"),
  Shade(icon: Icons.wb_sunny,title: "Day"),
  Shade(icon: Icons.nightlight,title: "Night"),

];