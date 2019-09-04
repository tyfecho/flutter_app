import 'package:flutter/material.dart';

class Avatar {
  //  Properties

  int health;
  String name;
  String img;

  //  Constructor
  Avatar(String name, int health, String img) {
    this.health = health;
    this.name = name;
    this.img = img;
  }

}

class AvatarList {
  List <Avatar> avatars;
  AvatarList ({this.avatars});

  void Init() {
    avatars = List<Avatar>();
    avatars.add(new Avatar("Blue Warrior", 100, "assets/images/oryx_16bit_fantasy_creatures_01.png"));
    avatars.add(new Avatar("Blue Warrior", 100, "assets/images/oryx_16bit_fantasy_creatures_02.png"));
    avatars.add(new Avatar("Blue Warrior", 100, "assets/images/oryx_16bit_fantasy_creatures_03.png"));
    avatars.add(new Avatar("Blue Warrior", 100, "assets/images/oryx_16bit_fantasy_creatures_04.png"));
    avatars.add(new Avatar("Blue Warrior", 100, "assets/images/oryx_16bit_fantasy_creatures_05.png"));
  }
}