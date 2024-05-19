

import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:geoflutterfire2/geoflutterfire2.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:rxdart/rxdart.dart';
import 'dart:ui' as ui;

import 'package:studentnest/filters/filterPage.dart';

class MarkerHelperService{


  Stream<List<DocumentSnapshot<Object?>>> getMarkerGeo(CameraPosition cameraPosition) {
    print('inside get marker geo');
    final radius = BehaviorSubject<double>.seeded(5.0);
    final firestore = FirebaseFirestore.instance;

    GeoFlutterFire geo = GeoFlutterFire();

    var collectionReference = firestore.collection('properties');

    GeoFirePoint center = geo.point(
      latitude: cameraPosition.target.latitude,
      longitude: cameraPosition.target.longitude,
    );
///code to get marker location referenced from https://github.com/DarshanGowda0/GeoFlutterFire/issues/16
    Stream<List<DocumentSnapshot>> stream = radius.switchMap((rad) {
      return geo
          .collection(
          collectionRef: collectionReference
              .where('isVerified', isEqualTo: true))
          .within(
          center: center,
          radius: 5.0,
          field: 'locationDetailsObject.geoLocation',
          strictMode: true);

    });
    return stream;
  }

  Stream<QuerySnapshot<Map<String, dynamic>>> markerStream(FilterData filterData) {
    final _firestore = FirebaseFirestore.instance;
    Stream<QuerySnapshot<Map<String, dynamic>>> stream;
    var collectionReference = _firestore.collection('properties');
    if(filterData.roomType!="Any"){
      stream = collectionReference
          .where('isVerified', isEqualTo: true).where('houseDetailsObject.roomType',isEqualTo:filterData.roomType)
          .snapshots();
      return stream;

    }else{
      Stream<QuerySnapshot<Map<String, dynamic>>> stream = collectionReference
          .where('isVerified', isEqualTo: true)
          .snapshots();
      return stream;
    }

  }

///code to convert png to bitmap to display image on the map cdode refernced from https://pub.dev/documentation/interactive_maps_marker/latest/utils/getBytesFromAsset.html
  Future<Uint8List> getBytesFromAsset(String path, int width, int height) async {
    ByteData data = await rootBundle.load(path);
    ui.Codec codec = await ui.instantiateImageCodec(data.buffer.asUint8List(),
        allowUpscaling: false, targetWidth: width,targetHeight: height);
    ui.FrameInfo fi = await codec.getNextFrame();
    return (await fi.image.toByteData(format: ui.ImageByteFormat.png))!
        .buffer
        .asUint8List();
  }



}


