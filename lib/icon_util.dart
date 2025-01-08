import 'package:flutter/material.dart';
import 'package:campus_map/floor1.dart' as floor1;
import 'package:campus_map/floor2.dart' as floor2;
import 'package:campus_map/floor3.dart' as floor3;
import 'package:campus_map/floor4.dart' as floor4;
import 'package:campus_map/floor5.dart' as floor5;

class IconUtils {
  static Map<String, List<dynamic>> updateIconList({
    required bool isClassroomChecked,
    required bool isParkingChecked,
    required bool isBathroomChecked,
    required bool isQuadrangleChecked,
    required bool isLibraryChecked,
    required bool isFacultyChecked,
    required bool isLaboratoryChecked,
    required bool isComputerLaboratoryChecked,
    required bool isStoreChecked,
    required bool isCafeteriaChecked,
    required bool isMuseumChecked,
    required bool isOfficesChecked,
    required bool isWheelchairAccessChecked,
    required bool isIconChecked,
    required int selectedFloor,

  }) {

    List<IconData> filteredIconList = [];
    List<Offset> filteredIconPositions = [];

    // Reset icon lists before filtering
    filteredIconList.clear();
    filteredIconPositions.clear();

    // Debugging print statements
    print("Updating icons for Floor $selectedFloor");

    // Based on selected floor, display corresponding icons
    if (selectedFloor == 1) {
      print("Adding icons for floor 1");
      if (isIconChecked) {
        filteredIconList.addAll(floor1.allIconList);
        filteredIconPositions.addAll(floor1.allIconPositions);
      }
      if (isClassroomChecked) {
        //1
        filteredIconList.addAll(floor1.classroomIconList);
        filteredIconPositions.addAll(floor1.classroomIconPositions);
      }
      if (isParkingChecked) {
        //2
        filteredIconList.addAll(floor1.parkingIconList);
        filteredIconPositions.addAll(floor1.parkingIconPositions);
      }
      if (isBathroomChecked) {
        //3
        filteredIconList.addAll(floor1.bathroomIconList);
        filteredIconPositions.addAll(floor1.bathroomIconPositions);
      }
      if (isFacultyChecked) {
        //4
        filteredIconList.addAll(floor1.facultyIconList);
        filteredIconPositions.addAll(floor1.facultyIconPositions);
      }
      if (isMuseumChecked) {
        //5
        filteredIconList.addAll(floor1.museumIconList);
        filteredIconPositions.addAll(floor1.museumIconPositions);
      }
      if (isQuadrangleChecked) {
        //6
        filteredIconList.addAll(floor1.quadrangleIconList);
        filteredIconPositions.addAll(floor1.quadrangleIconPositions);
      }
      if (isLaboratoryChecked) {
        //7
        filteredIconList.addAll(floor1.laboratoryIconList);
        filteredIconPositions.addAll(floor1.laboratoryIconPositions);
      }
      if (isOfficesChecked) {
        //8
        filteredIconList.addAll(floor1.officeIconList);
        filteredIconPositions.addAll(floor1.officeIconPositions);
      }
      if (isStoreChecked) {
        //8
        filteredIconList.addAll(floor1.storeIconList);
        filteredIconPositions.addAll(floor1.storeIconPositions);
      }
      if (isWheelchairAccessChecked) {
        //12
        filteredIconList.addAll(floor1.wheelchairIconList);
        filteredIconPositions.addAll(floor1.wheelchairIconPositions);
      }
      if (isCafeteriaChecked) {
        //14
        filteredIconList.addAll(floor1.cafeteriaIconList);
        filteredIconPositions.addAll(floor1.cafeteriaIconPositions);
      }
    } else if (selectedFloor == 2) {
      print("Adding icons for floor 2");
      if (isIconChecked) {
        filteredIconList.addAll(floor2.allIconList);
        filteredIconPositions.addAll(floor2.allIconPositions);
      }
      if (isClassroomChecked) {
        //1
        filteredIconList.addAll(floor2.classroomIconList);
        filteredIconPositions.addAll(floor2.classroomIconPositions);
      }
      if (isBathroomChecked) {
        //2
        filteredIconList.addAll(floor2.bathroomIconList);
        filteredIconPositions.addAll(floor2.bathroomIconPositions);
      }
      if (isFacultyChecked) {
        //3
        filteredIconList.addAll(floor2.facultyIconList);
        filteredIconPositions.addAll(floor2.facultyIconPositions);
      }
      if (isLaboratoryChecked) {
        //4
        filteredIconList.addAll(floor2.laboratoryIconList);
        filteredIconPositions.addAll(floor2.laboratoryIconPositions);
      }
      if (isOfficesChecked) {
        //5
        filteredIconList.addAll(floor2.officeIconList);
        filteredIconPositions.addAll(floor2.officeIconPositions);
      }
      if (isWheelchairAccessChecked) {
        //7
        filteredIconList.addAll(floor2.wheelchairIconList);
        filteredIconPositions.addAll(floor2.wheelchairIconPositions);
      }
      if (isLibraryChecked) {
        //8
        filteredIconList.addAll(floor2.libraryIconList);
        filteredIconPositions.addAll(floor2.libraryIconPositions);
      }
    } else if (selectedFloor == 3) {
      print("Adding icons for floor 3");
      if (isIconChecked) {
        filteredIconList.addAll(floor3.allIconList);
        filteredIconPositions.addAll(floor3.allIconPositions);
      }
      if (isClassroomChecked) {
        //1
        filteredIconList.addAll(floor3.classroomIconList);
        filteredIconPositions.addAll(floor3.classroomIconPositions);
      }
      if (isBathroomChecked) {
        //2
        filteredIconList.addAll(floor3.bathroomIconList);
        filteredIconPositions.addAll(floor3.bathroomIconPositions);
      }
      if (isFacultyChecked) {
        //3
        filteredIconList.addAll(floor3.facultyIconList);
        filteredIconPositions.addAll(floor3.facultyIconPositions);
      }
      if (isLaboratoryChecked) {
        //4
        filteredIconList.addAll(floor3.laboratoryIconList);
        filteredIconPositions.addAll(floor3.laboratoryIconPositions);
      }
      if (isComputerLaboratoryChecked) {
        //5
        filteredIconList.addAll(floor3.computerlaboratoryIconList);
        filteredIconPositions.addAll(floor3.computerlaboratoryIconPositions);
      }
      if (isOfficesChecked) {
        //6
        filteredIconList.addAll(floor3.officeIconList);
        filteredIconPositions.addAll(floor3.officeIconPositions);
      }
      if (isWheelchairAccessChecked) {
        //7
        filteredIconList.addAll(floor3.wheelchairIconList);
        filteredIconPositions.addAll(floor3.wheelchairIconPositions);
      }
      if (isLibraryChecked) {
        //8
        filteredIconList.addAll(floor3.libraryIconList);
        filteredIconPositions.addAll(floor3.libraryIconPositions);
      }
    } else if (selectedFloor == 4) {
      print("Adding icons for floor 4");
      if (isIconChecked) {
        filteredIconList.addAll(floor4.allIconList);
        filteredIconPositions.addAll(floor4.allIconPositions);
      }
      if (isClassroomChecked) {
        //1
        filteredIconList.addAll(floor4.classroomIconList);
        filteredIconPositions.addAll(floor4.classroomIconPositions);
      }
      if (isBathroomChecked) {
        //2
        filteredIconList.addAll(floor4.bathroomIconList);
        filteredIconPositions.addAll(floor4.bathroomIconPositions);
      }
      if (isFacultyChecked) {
        //3
        filteredIconList.addAll(floor4.facultyIconList);
        filteredIconPositions.addAll(floor4.facultyIconPositions);
      }
      if (isLaboratoryChecked) {
        //4
        filteredIconList.addAll(floor4.laboratoryIconList);
        filteredIconPositions.addAll(floor4.laboratoryIconPositions);
      }
      if (isComputerLaboratoryChecked) {
        //5
        filteredIconList.addAll(floor4.computerlaboratoryIconList);
        filteredIconPositions.addAll(floor4.computerlaboratoryIconPositions);
      }
      if (isOfficesChecked) {
        //6
        filteredIconList.addAll(floor4.officeIconList);
        filteredIconPositions.addAll(floor4.officeIconPositions);
      }
      if (isWheelchairAccessChecked) {
        //7
        filteredIconList.addAll(floor4.wheelchairIconList);
        filteredIconPositions.addAll(floor4.wheelchairIconPositions);
      }
      if (isLibraryChecked) {
        //8
        filteredIconList.addAll(floor4.libraryIconList);
        filteredIconPositions.addAll(floor4.libraryIconPositions);
      }
    } else if (selectedFloor == 5) {
      print("Adding icons for floor 5");
      if (isIconChecked) {
        filteredIconList.addAll(floor5.allIconList);
        filteredIconPositions.addAll(floor5.allIconPositions);
      }
      if (isClassroomChecked) {//1
        filteredIconList.addAll(floor5.classroomIconList);
        filteredIconPositions.addAll(floor5.classroomIconPositions);
      }
      if (isBathroomChecked) {//2
        filteredIconList.addAll(floor5.bathroomIconList);
        filteredIconPositions.addAll(floor5.bathroomIconPositions);
      }
      if (isFacultyChecked) {//3
        filteredIconList.addAll(floor5.facultyIconList);
        filteredIconPositions.addAll(floor5.facultyIconPositions);
      }
      if (isLaboratoryChecked) {//4
        filteredIconList.addAll(floor5.laboratoryIconList);
        filteredIconPositions.addAll(floor5.laboratoryIconPositions);
      }
      if (isComputerLaboratoryChecked) {//5
        filteredIconList.addAll(floor5.computerlaboratoryIconList);
        filteredIconPositions.addAll(floor5.computerlaboratoryIconPositions);
      }
      if (isOfficesChecked) {//6
        filteredIconList.addAll(floor5.officeIconList);
        filteredIconPositions.addAll(floor5.officeIconPositions);
      }
      if (isWheelchairAccessChecked) {//7
        filteredIconList.addAll(floor5.wheelchairIconList);
        filteredIconPositions.addAll(floor5.wheelchairIconPositions);
      }
    }

    // Debug print to check filtered lists
    print("Filtered Icon List: $filteredIconList");
    print("Filtered Icon Positions: $filteredIconPositions");

    return {
      'iconList': filteredIconList,
      'iconPositions': filteredIconPositions,
    };
  }
}
