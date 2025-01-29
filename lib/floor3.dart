import 'package:flutter/material.dart';

List<List<Offset>> floor3IconPositionsList = [
  classroomIconPositions, //1
  bathroomIconPositions, //2
  facultyIconPositions, //3
  laboratoryIconPositions, //4
  computerlaboratoryIconPositions, //5
  officeIconPositions, //6
  wheelchairIconPositions, //7
  libraryIconPositions, //8
  allIconPositions,
];
List<List<IconData>> floor3IconListList = [
  classroomIconList,
  bathroomIconList,
  facultyIconList,
  laboratoryIconList,
  computerlaboratoryIconList,
  officeIconList,
  wheelchairIconList,
  libraryIconList,
  allIconList,
];

List<Offset> classroomIconPositions = [
  //1
  Offset(883, 238), //7lectureroom
  Offset(934, 239), //8class
  Offset(846, 248), //9lectureroom318
  Offset(815, 248), //10lectureroom317
  Offset(784, 248), //11lectureroom316
  Offset(755, 248), //12lectureroom315
  Offset(725, 248), //13lectureroom314
  Offset(696, 248), //14lectureroom313
  Offset(667, 248), //15lectureroom312
  Offset(630, 242), //16room
  Offset(641, 270), //17lectureroom311
  Offset(541, 359), //19room
  Offset(540, 401), //20room
  Offset(538, 441), //21room
  Offset(536, 478), //22room
  Offset(546, 550), //23room316
  Offset(528, 597), //24room317
  Offset(525, 637), //25room318
  Offset(528, 682), //26room319
  Offset(627, 649), //28room320
  Offset(627, 684), //29room321
  Offset(626, 716), //30room322
  Offset(505, 793), //31labroom323
  Offset(542, 793), //32room324
  Offset(578, 791), //33room325
  Offset(623, 787), //34room326
  Offset(368, 550), //39room304
  Offset(378, 603), //40room305
  Offset(389, 660), //41room306
  Offset(399, 718), //42room307
  Offset(408, 774), //43room309
  Offset(161, 523), //44room
  Offset(172, 579), //45room301
  Offset(182, 641), //46room302A
  Offset(194, 705), //47room302B
  Offset(202, 755), //48room303
  Offset(-98, 538), //51room301cit
  Offset(-45, 524), //52room302cit
  Offset(-19, 568), //53room303cit
  Offset(-12, 615), //54room304cit
  Offset(4, 664), //55room305cit
  Offset(27, 718), //56room306cit
  Offset(38, 780), //57room307cit
  Offset(14, 806), //58room308cit
  Offset(-22, 806), //59room309cit
  Offset(-64, 665), //60room310cit
  Offset(-57, 696), //61room309cit
];
List<Offset> bathroomIconPositions = [
  //2
  Offset(634, 170), //5wc
  Offset(363, 468), //37wcm
  Offset(363, 494), //38wcf
  Offset(-77, 641), //62wcf
  Offset(-44, 734), //63wcm
];
List<Offset> facultyIconPositions = [
  //3
  Offset(560, 250), //18deanCED
  Offset(624, 614), //27facultyroom
  Offset(287, 499), //49deanCAFA
  Offset(240, 509), //50facultyroom
];
List<Offset> laboratoryIconPositions = [
  //4
];
List<Offset> computerlaboratoryIconPositions = [
  //5
  Offset(732, 157), //2MISlab
  Offset(769, 157), //3comlab
  Offset(802, 153), //4comlab
];
List<Offset> officeIconPositions = [
  //6
  Offset(469, 510), //35work
  Offset(441, 518), //36dostwork
];
List<Offset> wheelchairIconPositions = [
  //7
  Offset(700, 148), //6
];
List<Offset> libraryIconPositions = [
  //8
  Offset(506, 137), //1library
];

List<IconData> classroomIconList = [
  //1
  Icons.class_, //7
  Icons.class_, //8
  Icons.class_, //9lectureroom318
  Icons.class_, //10lectureroom317
  Icons.class_, //11lectureroom316
  Icons.class_, //12lectureroom315
  Icons.class_, //13lectureroom314
  Icons.class_, //14lectureroom313
  Icons.class_, //15lectureroom312
  Icons.class_, //16room
  Icons.class_, //17lectureroom311
  Icons.class_, //19room
  Icons.class_, //20room
  Icons.class_, //21room
  Icons.class_, //22room
  Icons.class_, //23room316
  Icons.class_, //24room317
  Icons.class_, //25room318
  Icons.class_, //26room319
  Icons.class_, //28room320
  Icons.class_, //29room321
  Icons.class_, //30room322
  Icons.class_, //31rlabroom323
  Icons.class_, //32room324
  Icons.class_, //33room325
  Icons.class_, //34room326
  Icons.class_, //39room304
  Icons.class_, //40room305
  Icons.class_, //41room306
  Icons.class_, //42room307
  Icons.class_, //43room308
  Icons.class_, //44room
  Icons.class_, //45room301
  Icons.class_, //46room302A
  Icons.class_, //47room302B
  Icons.class_, //48room303
  Icons.class_, //51room301cit
  Icons.class_, //52room302cit
  Icons.class_, //53room303cit
  Icons.class_, //54room304cit
  Icons.class_, //55room305cit
  Icons.class_, //56room306cit
  Icons.class_, //57room307cit
  Icons.class_, //58room308cit
  Icons.class_, //59room309cit
  Icons.class_, //60room310cit
  Icons.class_, //61room309cit
];
List<IconData> bathroomIconList = [
  //2
  Icons.wc, //5
  Icons.wc, //37wcm
  Icons.wc, //38wcf
  Icons.wc, //62
  Icons.wc, //63
];
List<IconData> facultyIconList = [
  //3
  Icons.people, //18deanCED
  Icons.people, //27facultyroom
  Icons.people, //49deanCAFA
  Icons.people, //50facultyroom
];
List<IconData> laboratoryIconList = [
  //4
];
List<IconData> computerlaboratoryIconList = [
  //5
  Icons.computer, //2
  Icons.computer, //3
  Icons.computer, //4
];
List<IconData> officeIconList = [
  //6
  Icons.work, //35
  Icons.work, //36dost
];
List<IconData> wheelchairIconList = [
  //7
  Icons.wheelchair_pickup, //6
];
List<IconData> libraryIconList = [
  //8
  Icons.menu_book, //1library
];

List<Offset> allIconPositions = [
  Offset(506, 137), //1library
  Offset(732, 157), //2MISlab
  Offset(769, 157), //3comlab
  Offset(802, 153), //4comlab
  Offset(634, 170), //5wc
  Offset(700, 148), //6wheel
  Offset(883, 238), //7lectureroom
  Offset(934, 239), //8class
  Offset(846, 248), //9lectureroom318
  Offset(815, 248), //10lectureroom317
  Offset(784, 248), //11lectureroom316
  Offset(755, 248), //12lectureroom315
  Offset(725, 248), //13lectureroom314
  Offset(696, 248), //14lectureroom313
  Offset(667, 248), //15lectureroom312
  Offset(630, 242), //16room
  Offset(641, 270), //17lectureroom311
  Offset(560, 250), //18deanCED
  Offset(541, 359), //19room
  Offset(540, 401), //20room
  Offset(538, 441), //21room
  Offset(536, 478), //22room
  Offset(546, 550), //23room316
  Offset(528, 597), //24room317
  Offset(525, 637), //25room318
  Offset(528, 682), //26room319
  Offset(624, 614), //27facultyroom
  Offset(627, 649), //28room320
  Offset(627, 684), //29room321
  Offset(626, 716), //30room322
  Offset(505, 793), //31labroom323
  Offset(542, 793), //32room324
  Offset(578, 791), //33room325
  Offset(623, 787), //34room326
  Offset(469, 510), //35work
  Offset(441, 518), //36dostwork
  Offset(363, 468), //37wcm
  Offset(363, 494), //38wcf
  Offset(368, 550), //39room304
  Offset(378, 603), //40room305
  Offset(389, 660), //41room306
  Offset(399, 718), //42room307
  Offset(408, 774), //43room309
  Offset(161, 523), //44room
  Offset(172, 579), //45room301
  Offset(182, 641), //46room302A
  Offset(194, 705), //47room302B
  Offset(202, 755), //48room303
  Offset(287, 499), //49deanCAFA
  Offset(240, 509), //50facultyroom
  Offset(-98, 538), //51room301cit
  Offset(-45, 524), //52room302cit
  Offset(-19, 568), //53room303cit
  Offset(-12, 615), //54room304cit
  Offset(4, 664), //55room305cit
  Offset(27, 718), //56room306cit
  Offset(38, 780), //57room307cit
  Offset(14, 806), //58room308cit
  Offset(-22, 806), //59room309cit
  Offset(-64, 665), //60room310cit
  Offset(-57, 696), //61room309cit
  Offset(-77, 641), //62wcf
  Offset(-44, 734), //63wcm
];

List<String> floor3roomNames = [];

List<IconData> allIconList = [
  Icons.menu_book, //1library
  Icons.computer, //2
  Icons.computer, //3
  Icons.computer, //4
  Icons.wc, //5
  Icons.wheelchair_pickup, //6
  Icons.class_, //7
  Icons.class_, //8
  Icons.class_, //9lectureroom318
  Icons.class_, //10lectureroom317
  Icons.class_, //11lectureroom316
  Icons.class_, //12lectureroom315
  Icons.class_, //13lectureroom314
  Icons.class_, //14lectureroom313
  Icons.class_, //15lectureroom312
  Icons.class_, //16room
  Icons.class_, //17lectureroom311
  Icons.people, //18deanCED
  Icons.class_, //19room
  Icons.class_, //20room
  Icons.class_, //21room
  Icons.class_, //22room
  Icons.class_, //23room316
  Icons.class_, //24room317
  Icons.class_, //25room318
  Icons.class_, //26room319
  Icons.people, //27facultyroom
  Icons.class_, //28room320
  Icons.class_, //29room321
  Icons.class_, //30room322
  Icons.class_, //31rlabroom323
  Icons.class_, //32room324
  Icons.class_, //33room325
  Icons.class_, //34room326
  Icons.work, //35
  Icons.work, //36dost
  Icons.wc, //37wcm
  Icons.wc, //38wcf
  Icons.class_, //39room304
  Icons.class_, //40room305
  Icons.class_, //41room306
  Icons.class_, //42room307
  Icons.class_, //43room308
  Icons.class_, //44room
  Icons.class_, //45room301
  Icons.class_, //46room302A
  Icons.class_, //47room302B
  Icons.class_, //48room303
  Icons.people, //49deanCAFA
  Icons.people, //50facultyroom
  Icons.class_, //51room301cit
  Icons.class_, //52room302cit
  Icons.class_, //53room303cit
  Icons.class_, //54room304cit
  Icons.class_, //55room305cit
  Icons.class_, //56room306cit
  Icons.class_, //57room307cit
  Icons.class_, //58room308cit
  Icons.class_, //59room309cit
  Icons.class_, //60room310cit
  Icons.class_, //61room309cit
  Icons.wc, //62
  Icons.wc, //63
];
