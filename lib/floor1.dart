import 'package:flutter/material.dart';

List<List<Offset>> floor1IconPositionsList = [
  classroomIconPositions, //1
  parkingIconPositions, //2
  bathroomIconPositions, //3
  facultyIconPositions, //4
  museumIconPositions, //5
  quadrangleIconPositions, //6
  laboratoryIconPositions, //7
  officeIconPositions, //8
  storeIconPositions, //9
  buildingIconPositions, //10
  wheelchairIconPositions, //11
  streetIconPositions, //12
  libraryIconPositions, //13
  cafeteriaIconPositions, //14
  allIconPositions,
];

List<List<IconData>> floor1IconListList = [
  classroomIconList, //1
  parkingIconList, //2
  bathroomIconList, //3
  facultyIconList, //4
  museumIconList, //5
  quadrangleIconList, //6
  laboratoryIconList, //7
  officeIconList, //8
  storeIconList, //9
  buildingIconList, //10
  wheelchairIconList, //11
  streetIconList, //12
  libraryIconList, //13
  cafeteriaIconList, //14
  allIconList,
];
//X, Y
List<Offset> classroomIconPositions = [
  Offset(351, 571), //class2
  Offset(363, 648), //class3
  Offset(375, 725), //class4
  Offset(388, 789), //class5
  Offset(291, 815), //class6
  Offset(-79, 556), //class7
  Offset(-81, 664), //class8
  Offset(-64, 719), //class9
  Offset(-39, 821), //class10
  Offset(19, 815), //class11
  Offset(670, 64), //class18
  Offset(707, 51), //class19
  Offset(745, 36), //class20
  Offset(778, 21), //class21
  Offset(739, 267), //class30
  Offset(706, 267), //class31
  Offset(675, 267), //class32
  Offset(644, 267), //class33
];
List<Offset> parkingIconPositions = [
  Offset(260, 395), // ParkingLot#1
  Offset(747, 185), //localparking42
];
List<Offset> bathroomIconPositions = [
  Offset(613, 265), //wc34
  Offset(403, 205), //wc40
  Offset(827, 67), //wc46
  Offset(860, 67), //wc47
  Offset(628, 80), //wc48
  Offset(345, 513), //wc49
  Offset(345, 485), //wc50
];
List<Offset> facultyIconPositions = [
  Offset(140, 517), //meetingroom12
  Offset(166, 676), //meetingroom15
  Offset(811, 261), //meetingroom28
  Offset(773, 260), //meetingroom29
  Offset(514, 697), //meetingroom38
];
List<Offset> museumIconPositions = [
  Offset(493, 147), //museum17
];
List<Offset> quadrangleIconPositions = [
  Offset(264, 648), //sports16
  Offset(718, 446), //sports43
];
List<Offset> laboratoryIconPositions = [
  Offset(148, 563), //science13
  Offset(153, 605), //science14
  Offset(545, 267), //science35
];
List<Offset> officeIconPositions = [
  Offset(951, 329), //work23
  Offset(992, 581), //work24
  Offset(1025, 700), //work25
  Offset(857, 460), //work27
  Offset(521, 789), //work41
  Offset(905, 135), //attachmoney21
  Offset(923, 226), //attachmoney22
];
List<Offset> storeIconPositions = [
  Offset(605, 710), //store39
  Offset(605, 739), //store54
  Offset(605, 680), //store55
  Offset(605, 650), //store56
  Offset(494, 550), //store56
];
List<Offset> buildingIconPositions = [
  Offset(918, 670), //business26
  Offset(769, 730), //business36
  Offset(443, 760), //business44
];
List<Offset> wheelchairIconPositions = [
  Offset(788, 155), //wheelchair_pickup45
];
List<Offset> streetIconPositions = [
  Offset(300, 100), //directionscar51
  Offset(1047, 233), //directionscar52
  Offset(79, 600), //directionscar53
];
List<Offset> libraryIconPositions = [];
List<Offset> cafeteriaIconPositions = [
  Offset(547, 550), //fastfood37
];
List<Offset> allIconPositions = [
  Offset(260, 395), // ParkingLot#1
  Offset(351, 571), //class2
  Offset(363, 648), //class3
  Offset(375, 725), //class4
  Offset(388, 789),//class5
  Offset(291, 815), //class6
  Offset(-79, 556), //class7
  Offset(-81, 664), //class8
  Offset(-64, 719), //class9
  Offset(-39, 821), //class10
  Offset(19, 815), //class11
  Offset(140, 517), //meetingroom12
  Offset(148, 563), //science13
  Offset(153, 605), //science14
  Offset(166, 676), //meetingroom15
  Offset(264, 648), //sports16
  Offset(493, 147), //museum17
  Offset(670, 64), //class18
  Offset(707, 51), //class19
  Offset(745, 36), //class20
  Offset(778, 21), //class21
  Offset(905, 135), //attachmoney21
  Offset(923, 226), //attachmoney22
  Offset(951, 329), //work23
  Offset(992, 581), //work24
  Offset(1025, 700), //work25
  Offset(918, 670), //business26
  Offset(857, 460), //work27
  Offset(811, 261), //meetingroom28
  Offset(773, 260), //meetingroom29
  Offset(739, 267), //class30
  Offset(706, 267), //class31
  Offset(675, 267), //class32
  Offset(644, 267), //class33
  Offset(613, 265), //wc34
  Offset(545, 267), //science35
  Offset(769, 730), //business36
  Offset(547, 550), //fastfood37
  Offset(514, 697), //meetingroom38
  Offset(605, 710), //store39
  Offset(403, 205), //wc40
  Offset(521, 789), //work41
  Offset(747, 185), //localparking42
  Offset(718, 446), //sports43
  Offset(443, 760), //business44
  Offset(788, 155), //wheelchair_pickup45
  Offset(827, 67), //wc46
  Offset(860, 67), //wc47
  Offset(628, 80), //wc48
  Offset(345, 513), //wc49
  Offset(345, 485), //wc50
  Offset(300, 100), //directionscar51
  Offset(1047, 233), //directionscar52
  Offset(79, 600), //directionscar53
  Offset(605, 739), //store54
  Offset(605, 680), //store55
  Offset(605, 650), //store56
  Offset(494, 550), //store56
];
List<String> roomNames = [
  'Parking Lot',
  'CAFA Room 101',
  'CAFA Room 102',
  'CAFA Room 103',
  'CAFA Room 103',

];
List<IconData> classroomIconList = [
  Icons.class_,
  Icons.class_,
  Icons.class_,
  Icons.class_,
  Icons.class_,
  Icons.class_,
  Icons.class_,
  Icons.class_,
  Icons.class_,
  Icons.class_,
  Icons.class_,
  Icons.class_,
  Icons.class_,
  Icons.class_,
  Icons.class_,
  Icons.class_,
  Icons.class_,
  Icons.class_,
];

List<IconData> parkingIconList = [
  Icons.local_parking,
  Icons.local_parking,
];

List<IconData> bathroomIconList = [
  Icons.wc,
  Icons.wc,
  Icons.wc,
  Icons.wc,
  Icons.wc,
  Icons.wc,
  Icons.wc,
];

List<IconData> facultyIconList = [
  Icons.people,
  Icons.people,
  Icons.people,
  Icons.people,
  Icons.people,
];
List<IconData> museumIconList = [
  Icons.museum,
];
List<IconData> quadrangleIconList = [
  Icons.sports,
  Icons.sports,
];
List<IconData> laboratoryIconList = [
  Icons.science,
  Icons.science,
  Icons.science,
];
List<IconData> officeIconList = [
  Icons.work,
  Icons.work,
  Icons.work,
  Icons.work,
  Icons.work,
  Icons.work,
  Icons.work,
];
List<IconData> storeIconList = [
  Icons.store,
  Icons.store,
  Icons.store,
  Icons.store,
  Icons.store,
];

List<IconData> buildingIconList = [
  Icons.business,
  Icons.business,
  Icons.business,
  Icons.business,
];
List<IconData> wheelchairIconList = [
  Icons.wheelchair_pickup,
];
List<IconData> streetIconList = [
  Icons.directions,
  Icons.directions,
  Icons.directions,
];
List<IconData> libraryIconList = [];
List<IconData> cafeteriaIconList = [
  Icons.fastfood,
];
List<IconData> allIconList = [
  Icons.local_parking,
  Icons.class_,
  Icons.class_,
  Icons.class_,
  Icons.class_,
  Icons.class_,
  Icons.class_,
  Icons.class_,
  Icons.class_,
  Icons.class_,
  Icons.class_,
  Icons.people,
  Icons.science,
  Icons.science,
  Icons.people,
  Icons.sports,
  Icons.museum,
  Icons.class_,
  Icons.class_,
  Icons.class_,
  Icons.class_,
  Icons.attach_money,
  Icons.attach_money,
  Icons.work,
  Icons.work,
  Icons.work,
  Icons.business,
  Icons.work,
  Icons.people,
  Icons.people,
  Icons.class_,
  Icons.class_,
  Icons.class_,
  Icons.class_,
  Icons.wc,
  Icons.science,
  Icons.business,
  Icons.fastfood,
  Icons.people,
  Icons.store,
  Icons.wc,
  Icons.work,
  Icons.local_parking,
  Icons.sports,
  Icons.business,
  Icons.wheelchair_pickup,
  Icons.wc,
  Icons.wc,
  Icons.wc,
  Icons.wc,
  Icons.wc,
  Icons.directions_car,
  Icons.directions_car,
  Icons.directions_car,
  Icons.store,
  Icons.store,
  Icons.store,
];
