// import 'package:flutter/material.dart';
// import 'package:location/location.dart';
// import 'package:placess/screens/map_screen.dart';

// import '../helpers/location_helper.dart';

// class LocationInput extends StatefulWidget {
//   // const LocationInput({Key? key}) : super(key: key);

//   @override
//   _LocationInputState createState() => _LocationInputState();
// }

// class _LocationInputState extends State<LocationInput> {
//   String? _priviewImageUrl;

//   Future<void> _getCurrentUserLocation() async {
//     final locData = await Location().getLocation();
//     final staticMapImageUrl = LocationHelper.generateLocationPrivewImage(
//         lattitude: locData.latitude as double,
//         longtitude: locData.longitude as double);

//     setState(() {
//       _priviewImageUrl = staticMapImageUrl;
//     });
//   }

//   Future<void> _selectOnMap() async {
//     final selectedLocation = await Navigator.of(context).push(
//       MaterialPageRoute(
//         fullscreenDialog: true,
//         builder: (context) => MapScreen(
//           isSelectiong: true,
//         ),
//       ),
//     );
//     if (selectedLocation == null) {
//       return;
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Container(
//           height: 170,
//           width: double.infinity,
//           alignment: Alignment.center,
//           decoration: BoxDecoration(
//             border: Border.all(
//               width: 1,
//               color: Colors.grey,
//             ),
//           ),
//           child: _priviewImageUrl == null
//               ? const Text(
//                   'No Location',
//                   textAlign: TextAlign.center,
//                 )
//               : Image.network(
//                   _priviewImageUrl!,
//                   fit: BoxFit.cover,
//                   width: double.infinity,
//                 ),
//         ),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             TextButton.icon(
//               onPressed: _getCurrentUserLocation,
//               icon: const Icon(Icons.location_on),
//               label: const Text('Current Location'),
//             ),
//             TextButton.icon(
//               onPressed: _selectOnMap,
//               icon: const Icon(Icons.map),
//               label: const Text('Select on map'),
//             ),
//           ],
//         )
//       ],
//     );
//   }
// }
