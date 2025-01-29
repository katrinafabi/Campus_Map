import 'package:flutter/material.dart';

List<List<Offset>> floor2IconPositionsList = [
  classroomIconPositions, //1
  bathroomIconPositions, //2
  facultyIconPositions, //3
  laboratoryIconPositions, //4
  officeIconPositions, //5
  buildingIconPositions, //6
  wheelchairIconPositions, //7
  libraryIconPositions, //8
  allIconPositions,
];

List<List<IconData>> floor2IconListList = [
  classroomIconList,
  bathroomIconList,
  facultyIconList,
  laboratoryIconList,
  officeIconList,
  buildingIconList,
  wheelchairIconList,
  libraryIconList,
  allIconList,
];

List<Offset> classroomIconPositions = [
  Offset(827, 250), //1class_Lectureroom218
  Offset(797, 251), //2class_Lectureroom217
  Offset(766, 252), //3class_Lectureroom216
  Offset(737, 253), //4class_Lectureroom215
  Offset(706, 254), //5class_Lectureroom214
  Offset(677, 255), //6class_Lectureroom213
  Offset(648, 256), //7class_Lectureroom212
  Offset(622, 270), //9class_Lectureroom211
  Offset(517, 482), //14class_room212
  Offset(499, 570), //16class_room201
  Offset(496, 611), //17class_room203
  Offset(494, 658), //18class_room205
  Offset(493, 697), //19class_room207
  Offset(560, 569), //20class_room202
  Offset(559, 610), //21class_room204
  Offset(558, 653), //22class_room205
  Offset(557, 691), //23class_room206
  Offset(492, 792), //24class_room214
  Offset(545, 789), //25class_room213
  Offset(601, 784), //26class_room212
  Offset(750, 148), //40MISlectureroom
  Offset(710, 158), //41
  Offset(347, 547), //45room201
  Offset(356, 602), //46room202
  Offset(369, 664), //47room203
  Offset(377, 718), //48room204
  Offset(389, 775), //49room205
  Offset(292, 800), //50room211
  Offset(151, 508), //55room206
  Offset(154, 590), //56room207
  Offset(165, 655), //57room208
  Offset(176, 710), //58room209
  Offset(182, 751), //59room210
  Offset(-109, 538), //60room201CIT
  Offset(-46, 538), //61room202CIT
  Offset(-66, 693), //62room203CIT
  Offset(14, 730), //63room204CIT
  Offset(-40, 803), //64room206CIT
  Offset(21, 795), //65room205CIT
];
List<Offset> bathroomIconPositions = [
  Offset(345, 471), //51wc
  Offset(347, 500), //52wc
  Offset(-67, 755), //68wc
];
List<Offset> facultyIconPositions = [
  Offset(543, 250), //10meetingroom_CBA
  Offset(516, 519), //15Facultyroom
  Offset(863, 237), //31meetingroom_facultyroom
  Offset(267, 498), //53officeofthedean(CE)
  Offset(833, 320), //66deanoffice
  Offset(580, 118), //69
  Offset(216, 506), //54
];
List<Offset> wheelchairIconPositions = [
  Offset(804, 183), //67wheelchair
];
List<Offset> officeIconPositions = [
  Offset(968, 345), //29
  Offset(977, 390), //30nstpoffice
  Offset(910, 152), //33work_nstpoffice
  Offset(898, 110), //34work_nstpoffice
  Offset(668, 62), //35
  Offset(697, 51), //36
  Offset(723, 36), //37
  Offset(752, 21), //38
  Offset(782, 11), //39
  Offset(450, 519), //43
  Offset(422, 521), //44
];
List<Offset> laboratoryIconPositions = [
  Offset(611, 240), //8science_ChemistryLab
  Offset(520, 404), //12science_stenographylab
  Offset(518, 444), //13science_stenographylab
  Offset(913, 239), //32science_criminologylab
  Offset(524, 354), //11menubook_researchroom
];
List<Offset> buildingIconPositions = [
  Offset(766, 724), //27business_highschool
  Offset(982, 610), //28business_highschool
];
List<Offset> libraryIconPositions = [
  Offset(488, 140), //42menu_booklibrary
];

List<IconData> classroomIconList = [
  Icons.class_, //1
  Icons.class_, //2
  Icons.class_, //3
  Icons.class_, //4
  Icons.class_, //5
  Icons.class_, //6
  Icons.class_, //7
  Icons.class_, //9
  Icons.class_, //14
  Icons.class_, //16
  Icons.class_, //17
  Icons.class_, //18
  Icons.class_, //19
  Icons.class_, //20
  Icons.class_, //21
  Icons.class_, //22
  Icons.class_, //23
  Icons.class_, //24
  Icons.class_, //25
  Icons.class_, //26
  Icons.class_, //40
  Icons.class_, //41
  Icons.class_, //45room201
  Icons.class_, //46room202
  Icons.class_, //47room203
  Icons.class_, //48room204
  Icons.class_, //49room205
  Icons.class_, //50room211
  Icons.class_, //55
  Icons.class_, //56
  Icons.class_, //58
  Icons.class_, //59
  Icons.class_, //60
  Icons.class_, //61
  Icons.class_, //62
  Icons.class_, //63
  Icons.class_, //64
  Icons.class_, //65
];
List<IconData> bathroomIconList = [
  Icons.wc, //51
  Icons.wc, //52
  Icons.wc, //68
];
List<IconData> facultyIconList = [
  Icons.people, //10
  Icons.people, //15
  Icons.people, //31
  Icons.people, //53officeofthedean(CE)
  Icons.people, //54
  Icons.people, //66
  Icons.people //69
];
List<IconData> laboratoryIconList = [
  Icons.menu_book, //11
  Icons.science, //8
];
List<IconData> officeIconList = [
  Icons.work, //29
  Icons.work, //30
  Icons.work, //33
  Icons.work, //34
  Icons.work, //35
  Icons.work, //36
  Icons.work, //37
  Icons.work, //38
  Icons.work, //39
  Icons.work, //43
  Icons.work, //44
];
List<IconData> libraryIconList = [
  Icons.menu_book, //42
];
List<IconData> buildingIconList = [
  Icons.business, //27
  Icons.business, //28
];
List<IconData> wheelchairIconList = [
  Icons.wheelchair_pickup, //67
];

List<Offset> allIconPositions = [
  Offset(827, 250), //1class_Lectureroom218
  Offset(797, 251), //2class_Lectureroom217
  Offset(766, 252), //3class_Lectureroom216
  Offset(737, 253), //4class_Lectureroom215
  Offset(706, 254), //5class_Lectureroom214
  Offset(677, 255), //6class_Lectureroom213
  Offset(648, 256), //7class_Lectureroom212
  Offset(611, 240), //8science_ChemistryLab
  Offset(622, 270), //9class_Lectureroom211
  Offset(543, 250), //10meetingroom_CBA
  Offset(524, 354), //11menubook_researchroom
  Offset(520, 404), //12science_stenographylab
  Offset(518, 444), //13science_stenographylab
  Offset(517, 482), //14class_room212
  Offset(516, 519), //15Facultyroom
  Offset(499, 570), //16class_room201
  Offset(496, 611), //17class_room203
  Offset(494, 658), //18class_room205
  Offset(493, 697), //19class_room207
  Offset(560, 569), //20class_room202
  Offset(559, 610), //21class_room204
  Offset(558, 653), //22class_room205
  Offset(557, 691), //23class_room206
  Offset(492, 792), //24class_room214
  Offset(545, 789), //25class_room213
  Offset(601, 784), //26class_room212
  Offset(766, 724), //27business_highschool
  Offset(982, 610), //28business_highschool
  Offset(968, 345), //29
  Offset(977, 390), //30nstpoffice
  Offset(863, 237), //31meetingroom_facultyroom
  Offset(913, 239), //32science_criminologylab
  Offset(910, 152), //33work_nstpoffice
  Offset(898, 110), //34work_nstpoffice
  Offset(668, 62), //35
  Offset(697, 51), //36
  Offset(723, 36), //37
  Offset(752, 21), //38
  Offset(782, 11), //39
  Offset(750, 148), //40MISlectureroom
  Offset(710, 158), //41
  Offset(488, 140), //42menu_booklibrary
  Offset(450, 519), //43
  Offset(422, 521), //44
  Offset(347, 547), //45room201
  Offset(356, 602), //46room202
  Offset(369, 664), //47room203
  Offset(377, 718), //48room204
  Offset(389, 775), //49room205
  Offset(292, 800), //50room211
  Offset(345, 471), //51wc
  Offset(347, 500), //52wc
  Offset(267, 498), //53officeofthedean(CE)
  Offset(216, 506), //54
  Offset(151, 508), //55room206
  Offset(154, 590), //56room207
  Offset(165, 655), //57room208
  Offset(176, 710), //58room209
  Offset(182, 751), //59room210
  Offset(-109, 538), //60room201CIT
  Offset(-46, 538), //61room202CIT
  Offset(-66, 693), //62room203CIT
  Offset(14, 730), //63room204CIT
  Offset(-40, 803), //64room206CIT
  Offset(21, 795), //65room205CIT
  Offset(833, 320), //66deanoffice
  Offset(804, 183), //67wheelchair
  Offset(-67, 755), //68
  Offset(580, 118), //69
];
List<String> floor2roomNames = [
  'Lecture Room 218',
  'Lecture Room 217',
  'Lecture Room 216',
  'Lecture Room 215',
  'Lecture Room 214',
  'Lecture Room 213',
  'Lecture Room 212',
  'Chemistru Lab',
  'Faculty Room (CBA)',
  'Research Room',
  'Stenography Lab',
  'Stenography Lab',
  'Room 212',
  'Faculty Room',
  'Room 201',
  'Room 203',
  'Room 205',
  'Room 207',
  'Room 202',
  'Room 204',
  'Room 205',
  'Room 206',
  'Room 214',
  'Room 212',
  'EARIST Highschool Building',
  'EARIST Highschool Building',
];
List<IconData> allIconList = [
  Icons.class_, //1
  Icons.class_, //2
  Icons.class_, //3
  Icons.class_, //4
  Icons.class_, //5
  Icons.class_, //6
  Icons.class_, //7
  Icons.science, //8
  Icons.class_, //9
  Icons.people, //10
  Icons.menu_book, //11
  Icons.science, //12
  Icons.science, //13
  Icons.class_, //14
  Icons.people, //15
  Icons.class_, //16
  Icons.class_, //17
  Icons.class_, //18
  Icons.class_, //19
  Icons.class_, //20
  Icons.class_, //21
  Icons.class_, //22
  Icons.class_, //23
  Icons.class_, //24
  Icons.class_, //25
  Icons.class_, //26
  Icons.business, //27
  Icons.business, //28
  Icons.work, //29
  Icons.work, //30
  Icons.people, //31
  Icons.science, //32
  Icons.work, //33
  Icons.work, //34
  Icons.work, //35
  Icons.work, //36
  Icons.work, //37
  Icons.work, //38
  Icons.work, //39
  Icons.class_, //40
  Icons.class_, //41
  Icons.menu_book, //42
  Icons.work, //43
  Icons.work, //44
  Icons.class_, //45room201
  Icons.class_, //46room202
  Icons.class_, //47room203
  Icons.class_, //48room204
  Icons.class_, //49room205
  Icons.class_, //50room211
  Icons.wc, //51
  Icons.wc, //52
  Icons.people, //53officeofthedean(CE)
  Icons.people, //54
  Icons.class_, //55
  Icons.class_, //56
  Icons.science, //57
  Icons.class_, //58
  Icons.class_, //59
  Icons.class_, //60
  Icons.class_, //61
  Icons.class_, //62
  Icons.class_, //63
  Icons.class_, //64
  Icons.class_, //65
  Icons.people, //66
  Icons.wheelchair_pickup, //67
  Icons.wc, //68
  Icons.people //69
];
