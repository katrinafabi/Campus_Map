import 'package:campus_map/admininfo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart'; // Import the flutter_svg package
import 'package:campus_map/icon_util.dart';
import 'dart:math';
import 'package:campus_map/floor1.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  bool _isMenuExpanded = false;
  double _scale = 1.13;
  Offset _offset = Offset(0, 0);
  Offset _lastOffset = Offset.zero;
  final double _svgWidth = 1280;
  final double _svgHeight = 900;
  String _currentSvg = 'assets/svg/1.svg'; // Path to SVG
  List<Offset> iconPositions = []; // Default to Floor 1
  List<IconData> iconList = []; // Default to Floor 1

  // Checkbox states
  bool showIcons = true;
  bool _isIconChecked = true;
  bool _isParkingChecked = false;
  bool _isClassroomChecked = false;
  bool _isBathroomChecked = false;
  bool _isCafeteriaChecked = false;
  bool _isQuadrangleChecked = false;
  bool _isLibraryChecked = false;
  bool _isFacultyChecked = false;
  bool _isLaboratoryChecked = false;
  bool _isComputerLaboratoryChecked = false;
  bool _isStoreChecked = false;
  bool _isMuseumChecked = false;
  bool _isOfficesChecked = false;
  bool _isWheelchairAccessChecked = false;

  int _selectedFloor = 1;

  static const TextStyle _filterTextStyle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    fontFamily: 'Roboto',
    color: Colors.black,
  );

  static const Color _menuColor = Color.fromARGB(230, 160, 35, 52);
  static const Color _backgroundColor = Color.fromARGB(255, 214, 214, 214);

  // Change the file path to SVG files
  void _toggleMenu() {
    setState(() {
      _isMenuExpanded = !_isMenuExpanded;
    });
  }

  void _zoomIn() {
    setState(() {
      _scale =
          (_scale + 0.1).clamp(0.5, 1.7); // Increment scale with an upper limit
    });
  }

  void _zoomOut() {
    setState(() {
      _scale =
          (_scale - 0.1).clamp(1.13, 4.0); // Decrement scale with a lower limit
    });
  }

  Widget _buildListTile(
      String title, IconData icon, bool isChecked, Function(bool?) onChanged) {
    return ListTile(
      leading: Icon(icon, color: Colors.black),
      title: Text(title, style: _filterTextStyle),
      trailing: Checkbox(
        value: isChecked,
        onChanged: onChanged,
      ),
      onTap: () {
        setState(() {
          onChanged(!isChecked);
        });
      },
    );
  }

  void _changeSvg(String svgPath, List<Offset> newIconPositions,
      List<IconData> newIconList, int selectedFloor) {
    setState(() {
      _currentSvg = svgPath;
      // Update the selected floor icons
      iconPositions = newIconPositions;
      iconList = newIconList;
      _selectedFloor = selectedFloor;
      if (showIcons) {
        _updateIconList();
      } else {
        iconList = []; // Update the selected floor
      }
    });
  }

// Update _updateIconList to load data based on selected floor
  void _updateIconList() {
    final result = IconUtils.updateIconList(
      isClassroomChecked: _isClassroomChecked,
      isParkingChecked: _isParkingChecked,
      isCafeteriaChecked: _isCafeteriaChecked,
      isBathroomChecked: _isBathroomChecked,
      isQuadrangleChecked: _isQuadrangleChecked,
      isLibraryChecked: _isLibraryChecked,
      isFacultyChecked: _isFacultyChecked,
      isLaboratoryChecked: _isLaboratoryChecked,
      isComputerLaboratoryChecked: _isComputerLaboratoryChecked,
      isStoreChecked: _isStoreChecked,
      isMuseumChecked: _isMuseumChecked,
      isOfficesChecked: _isOfficesChecked,
      isWheelchairAccessChecked: _isWheelchairAccessChecked,
      isIconChecked: _isIconChecked,
      selectedFloor: _selectedFloor, // Ensure correct floor is passed
    );

    setState(() {
      iconList = result['iconList'] as List<IconData>? ?? [];
      iconPositions = result['iconPositions'] as List<Offset>? ?? [];
    });
  }

  @override
  void initState() {
    super.initState();
    _updateIconList();
  }

  void _showRoomNameDialog(String roomName) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('$roomName'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              child: Text('Close'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double maxX =
        (_svgWidth * _scale - screenSize.width).clamp(0, double.infinity);
    final double maxY =
        (_svgHeight * _scale - screenSize.height).clamp(0, double.infinity);
    final double minX = 0;
    final double minY = 0; // Ensure minY is 0 to allow dragging upwards

    // Calculate initial offsets based on screen size and SVG dimensions
    double offsetX = 0.0;
    double offsetY = 0.0;

    if (_svgWidth * _scale < screenSize.width) {
      offsetX = (screenSize.width - _svgWidth * _scale) / 2;
    }

    if (_svgHeight * _scale < screenSize.height) {
      offsetY = (screenSize.height - _svgHeight * _scale) / 2;
    }

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        title: const Text(''),
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: _toggleMenu,
        ),
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: GestureDetector(
              onPanStart: (details) {
                // Track the start position of the drag
                _lastOffset = details.localPosition;
              },
              onPanUpdate: (details) {
                setState(() {
                  // Calculate the new offset
                  Offset newOffset =
                      _offset + (details.localPosition - _lastOffset);

                  // Calculate the screen size
                  final screenWidth = MediaQuery.of(context).size.width;
                  final screenHeight = MediaQuery.of(context).size.height;

                  // Calculate the boundaries
                  final maxOffsetX =
                      max(0, (_svgWidth * _scale - screenWidth) / 2);
                  final maxOffsetY =
                      max(0, (_svgHeight * _scale - screenHeight) / 2);

                  final minX = -maxOffsetX;
                  final maxX = maxOffsetX;
                  final minY = -maxOffsetY;
                  final maxY = maxOffsetY;

                  // Clamp the new offset within the boundaries and cast to double
                  _offset = Offset(
                    newOffset.dx.clamp(minX, maxX).toDouble(),
                    newOffset.dy.clamp(minY, maxY).toDouble(),
                  );

                  _lastOffset =
                      details.localPosition; // Update last offset for next move
                });
              },
              child: Transform.translate(
                offset: _offset + Offset(offsetX, offsetY),
                child: Transform.scale(
                  scale: _scale,
                  child: Stack(
                    children: [
                      Container(
                        width: _svgWidth * _scale,
                        height: _svgHeight * _scale,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                        ),
                        child: SvgPicture.asset(
                          _currentSvg,
                          width: _svgWidth,
                          height: _svgHeight,
                          fit: BoxFit.contain,
                        ),
                      ),
                      if (showIcons)
                        for (int i = 0;
                            i < iconPositions.length && i < iconList.length;
                            i++)
                          Positioned(
                            top: (iconPositions[i].dy) + offsetY,
                            left: (iconPositions[i].dx) + offsetX,
                            child: GestureDetector(
                              onTap: () {
                                // Show the room name when the icon is tapped
                                _showRoomNameDialog(roomNames[i]);
                              },
                              child: Icon(
                                iconList[i],
                                color: Colors.red,
                                size: 30, // Fixed size
                              ),
                            ),
                          ),
                    ],
                  ),
                ),
              ),
            ),
          ),

          Positioned(
            bottom: 20,
            right: 20,
            child: Column(
              children: [
                FloatingActionButton(
                  onPressed: _zoomIn,
                  mini: true,
                  child: const Icon(Icons.zoom_in),
                ),
                const SizedBox(height: 10),
                FloatingActionButton(
                  onPressed: _zoomOut,
                  mini: true,
                  child: const Icon(Icons.zoom_out),
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
          Positioned(
            top: 100,
            right: 20,
            child: Column(
              children: [
                ElevatedButton(
                  onPressed: () {
                    _changeSvg('assets/svg/1.svg', [], [], 1);
                  },
                  child: const Text('1F'),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    _changeSvg('assets/svg/2.svg', [], [], 2);
                  },
                  child: const Text('2F'),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    _changeSvg('assets/svg/3.svg', [], [], 3);
                  },
                  child: const Text('3F'),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    _changeSvg('assets/svg/4.svg', [], [], 4);
                  },
                  child: const Text('4F'),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    _changeSvg('assets/svg/5.svg', [], [], 5);
                  },
                  child: const Text('5F'),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    _changeSvg('assets/svg/6.svg', [], [], 6);
                  },
                  child: const Text('6F'),
                ),
              ],
            ),
          ),
          // Menu Drawer for Filters
          AnimatedPositioned(
            duration: const Duration(milliseconds: 300),
            left: _isMenuExpanded ? 0 : -300,
            top: 0,
            bottom: 0,
            width: 300,
            child: Container(
              color: const Color.fromARGB(255, 255, 255, 255),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 140,
                      color: _menuColor,
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Stack(
                                alignment: Alignment.center,
                                children: [
                                  Positioned(
                                    bottom: -13,
                                    child: Image(
                                      image:
                                          AssetImage('assets/image/shadow.png'),
                                      width: 30,
                                      height: 30,
                                    ),
                                  ),
                                  Image(
                                    image:
                                        AssetImage('assets/image/pinpoint.png'),
                                    width: 60,
                                    height: 60,
                                  ),
                                ],
                              ),
                              SizedBox(width: 10),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'GabayEARIST',
                                      style: TextStyle(
                                        fontSize: 50,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Arquitectura',
                                        color: Colors.white,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 15),
                          Text(
                            'Nagtahan St, Sampaloc, Manila, 1008',
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Roboto',
                              color: Colors.white,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            'Metro Manila',
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Roboto',
                              color: Colors.white,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                    ListTile(
                      leading: const Icon(Icons.admin_panel_settings,
                          color: Colors.black),
                      title: const Text('Admin Info', style: _filterTextStyle),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const AdminInfoScreen()),
                        );
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.help, color: Colors.black),
                      title: const Text('Help', style: _filterTextStyle),
                      onTap: () {
                        // Handle Help tap
                      },
                    ),
                    const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                      child: Text(
                        'Tools',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                    ),
                    _buildListTile(
                      'Icon Visibility',
                      Icons.visibility,
                      _isIconChecked,
                      (bool? value) {
                        setState(() {
                          _isIconChecked = value ?? false;
                          _updateIconList();
                        });
                      },
                    ),
                    _buildListTile(
                      'Parking',
                      Icons.local_parking,
                      _isParkingChecked,
                      (bool? value) {
                        setState(() {
                          _isParkingChecked = value ?? false;
                          _updateIconList();
                        });
                      },
                    ),
                    _buildListTile(
                      'Classroom',
                      Icons.class_,
                      _isClassroomChecked,
                      (bool? value) {
                        setState(() {
                          _isClassroomChecked = value ?? false;
                          _updateIconList();
                        });
                      },
                    ),
                    _buildListTile(
                      'Cafeteria',
                      Icons.fastfood,
                      _isCafeteriaChecked,
                      (bool? value) {
                        setState(() {
                          _isCafeteriaChecked = value ?? false;
                          _updateIconList();
                        });
                      },
                    ),
                    _buildListTile(
                      'Store',
                      Icons.store,
                      _isStoreChecked,
                      (bool? value) {
                        setState(() {
                          _isStoreChecked = value ?? false;
                          _updateIconList();
                        });
                      },
                    ),
                    _buildListTile(
                      'Bathroom',
                      Icons.wc,
                      _isBathroomChecked,
                      (bool? value) {
                        setState(() {
                          _isBathroomChecked = value ?? false;
                          _updateIconList();
                        });
                      },
                    ),
                    _buildListTile(
                      'Quadrangle',
                      Icons.sports,
                      _isQuadrangleChecked,
                      (bool? value) {
                        setState(() {
                          _isQuadrangleChecked = value ?? false;
                          _updateIconList();
                        });
                      },
                    ),
                    _buildListTile(
                      'Library',
                      Icons.menu_book,
                      _isLibraryChecked,
                      (bool? value) {
                        setState(() {
                          _isLibraryChecked = value ?? false;
                          _updateIconList();
                        });
                      },
                    ),
                    _buildListTile(
                      'Museum',
                      Icons.museum,
                      _isMuseumChecked,
                      (bool? value) {
                        setState(() {
                          _isMuseumChecked = value ?? false;
                          _updateIconList();
                        });
                      },
                    ),
                    _buildListTile(
                      'Faculty Room',
                      Icons.person,
                      _isFacultyChecked,
                      (bool? value) {
                        setState(() {
                          _isFacultyChecked = value ?? false;
                          _updateIconList();
                        });
                      },
                    ),
                    _buildListTile(
                      'Offices',
                      Icons.work,
                      _isOfficesChecked,
                      (bool? value) {
                        setState(() {
                          _isOfficesChecked = value ?? false;
                          _updateIconList();
                        });
                      },
                    ),
                    _buildListTile(
                      'Computer Laboratory',
                      Icons.computer,
                      _isComputerLaboratoryChecked,
                      (bool? value) {
                        setState(() {
                          _isComputerLaboratoryChecked = value ?? false;
                          _updateIconList();
                        });
                      },
                    ),
                    _buildListTile(
                      'Laboratory',
                      Icons.science,
                      _isLaboratoryChecked,
                      (bool? value) {
                        setState(() {
                          _isLaboratoryChecked = value ?? false;
                          _updateIconList();
                        });
                      },
                    ),
                    _buildListTile(
                      'Wheelchair Access',
                      Icons.wheelchair_pickup,
                      _isWheelchairAccessChecked,
                      (bool? value) {
                        setState(() {
                          _isWheelchairAccessChecked = value ?? false;
                          _updateIconList();
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
