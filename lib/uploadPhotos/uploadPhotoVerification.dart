import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:overlay_loader_with_app_icon/overlay_loader_with_app_icon.dart';
import 'package:path/path.dart' as Path;
import 'package:studentnest/PropertyDetails/domain/propertyDetailsObject.dart';

///code referenced from
///https://github.com/NishaJain24/multi_image_picker/blob/main/lib/main.dart
/// https://medium.flutterdevs.com/multiimage-picker-in-flutter-69bd9f6cedfb
/// https://stackoverflow.com/a/67548276
class ImageUploadVerification extends StatefulWidget {
  ImageUploadVerification(this.propertyDetailsObject);
  final PropertyDetailsObject propertyDetailsObject;
  @override
  State<ImageUploadVerification> createState() => _ImageUploadVerificationState();
}

class _ImageUploadVerificationState extends State<ImageUploadVerification> {
  final ImagePicker imagePicker = ImagePicker();
  List<XFile>? imageFileList = [];
  List<String>? images=[];
  bool uploading = false;
  double val = 0;
  late CollectionReference imgRef;
  late firebase_storage.Reference ref;
  final picker = ImagePicker();

  void selectImages() async {
    final List<XFile> selectedImages = await imagePicker.pickMultiImage();
    if (selectedImages.isNotEmpty) {
      imageFileList!.addAll(selectedImages);
    }
    setState((){});
  }
  bool loading = false;

  @override
  void initState() {
    super.initState();
    imgRef = FirebaseFirestore.instance.collection('images');
    images=widget.propertyDetailsObject.photos;
  }
  @override
  Widget build(BuildContext context) {
    return OverlayLoaderWithAppIcon(
      isLoading: loading,
      appIcon: CircularProgressIndicator(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text('Upload Images',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          iconTheme: IconThemeData(color: Colors.black),
          centerTitle: true,
          actions: [
            GestureDetector(
              child: Icon(Icons.add),
              onTap: (){
                selectImages();

              },
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GridView.builder(
                      itemCount: imageFileList!.length,
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
                      itemBuilder: (BuildContext context, int index) {
                        return Stack(
                          children: [
                            GestureDetector(
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Container(
                                    clipBehavior: Clip.hardEdge,
                                    decoration: BoxDecoration(
                                        color:
                                        Theme.of(context).colorScheme.secondary,
                                        borderRadius: BorderRadius.circular(20),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.2),
                                            spreadRadius: 3,
                                            blurRadius: 5,
                                            offset: Offset(
                                                0, 4), // changes position of shadow
                                          ),
                                        ]),
                                    child: Image.file(File(imageFileList![index].path), fit: BoxFit.fill,)),
                              ),
                              onTap: (){

                              },
                            ),
                            Positioned(
                              right: 0,
                              child: GestureDetector(
                                child: Container(
                                    width: .07.sw,
                                    height: .07.sw,
                                    decoration: new BoxDecoration(
                                      color: Colors.red,
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        width: 2,
                                        color: Colors.white,
                                      ),
                                    ),
                                    child: Center(
                                        child: Container(
                                          color: Colors.white,
                                          width: 8,
                                          height: 2.5,
                                        ))),
                                onTap: () {
                                  showDialog(
                                      context: context,
                                      builder:
                                          (BuildContext context) {
                                        return AlertDialog(
                                            title: Text(
                                                'Do you want to Delete the Photo ?',
                                                style: TextStyle(
                                                    color: Colors
                                                        .black)),
                                            actions: <Widget>[
                                              ElevatedButton(
                                                child:  Text(
                                                    'Cancel'),
                                                // The alert is actually part of the navigation stack, so to close it, we
                                                // need to pop it.
                                                onPressed: () =>
                                                    Navigator.of(
                                                        context)
                                                        .pop(),
                                              ),
                                              ElevatedButton(
                                                  child:  Text(
                                                      'YES'),
                                                  onPressed: () async {
                                                    imageFileList!.remove(imageFileList!.elementAt(index));
                                                    Navigator.pop(context);
                                                    setState(() {});
                                                  })
                                            ]);
                                      });
                                },
                              ),
                            ),

                          ],
                        );
                      }),
                ),
              ),

              Padding(
                padding:
                EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                child: Container(
                  child: Visibility(
                    visible: widget.propertyDetailsObject.flags!.isPhotosAdded==true,
                    child: ListView.builder(
                        physics:NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount:images!.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Stack(
                              children: [
                                GestureDetector(
                                  child: Container(
                                    decoration:  BoxDecoration(
                                      borderRadius:
                                      BorderRadius.circular(25),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey
                                              .withOpacity(0.3),
                                          spreadRadius: 3,
                                          blurRadius: 5,
                                          offset: Offset(0,
                                              4), // changes position of shadow
                                        ),
                                      ],
                                      color: Colors.white,
                                    ),
                                    child: CachedNetworkImage(
                                      imageUrl:images![index],
                                      width: 1.sw,
                                      height: .45.sw,
                                      placeholder: (context, url) =>
                                          Center(
                                            child: Container(
                                                child:
                                                CircularProgressIndicator(
                                                  backgroundColor:Colors.white,
                                                )),
                                          ),
                                      errorWidget:
                                          (context, url, error) =>
                                          Icon(Icons.error),
                                    ),
                                  ),
                                  onTap: () {

                                  },
                                ),
                                Positioned(
                                  right: 0,
                                  child: GestureDetector(
                                    child: Container(
                                        width: .07.sw,
                                        height: .07.sw,
                                        decoration: new BoxDecoration(
                                          color: Colors.red,
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                            width: 2,
                                            color: Colors.white,
                                          ),
                                        ),
                                        child: Center(
                                            child: Container(
                                              color: Colors.white,
                                              width: 8,
                                              height: 2.5,
                                            ))),
                                    onTap: () {
                                      showDialog(
                                          context: context,
                                          builder:
                                              (BuildContext context) {
                                            return AlertDialog(
                                                title: Text(
                                                    'Do you want to Delete the Photo ?',
                                                    style: TextStyle(
                                                        color: Colors
                                                            .black)),
                                                actions: <Widget>[
                                                  ElevatedButton(
                                                    child:  Text(
                                                        'Cancel'),
                                                    // The alert is actually part of the navigation stack, so to close it, we
                                                    // need to pop it.
                                                    onPressed: () =>
                                                        Navigator.of(
                                                            context)
                                                            .pop(),
                                                  ),
                                                  ElevatedButton(
                                                      child:  Text(
                                                          'YES'),
                                                      onPressed: () async {
                                                        await FirebaseFirestore.instance.collection('properties').doc(widget.propertyDetailsObject.markerID).get()
                                                            .then((DocumentSnapshot documentSnapshot) {
                                                          if (documentSnapshot.exists) {
                                                            if (documentSnapshot.get('photos') != null) {
                                                              var collection = FirebaseFirestore.instance.collection('properties');
                                                              collection
                                                                  .doc(widget.propertyDetailsObject.markerID)
                                                                  .update(
                                                                  {
                                                                    'photos': FieldValue.arrayRemove([images!.elementAt(index)]),
                                                                  }
                                                              ).then((value) => {
                                                                images!.remove(images!.elementAt(index)),
                                                                Navigator.pop(context),
                                                                setState(() {}),
                                                              });
                                                            }
                                                          }
                                                        });

                                                      })
                                                ]
                                            );
                                          });
                                    },
                                  ),
                                ),
                              ],
                            ),
                          );
                        }),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.all(25),
          child: GestureDetector(
            onTap: () {
              if(images!.isNotEmpty){
                FirebaseFirestore.instance
                    .collection('properties')
                    .doc(widget.propertyDetailsObject.markerID)
                    .set({
                  'verificationFlag': {
                    'isPhotosVerified': true,
                  }
                }, SetOptions(merge: true)).then((value) {
                  Navigator.pop(context);
                });
              }else{
                loading=true;
                setState(() {
                });
                uploadFile().whenComplete(() =>{
                  Navigator.pop(context),
                  loading=false,
                  setState(() {
                  }),
                });
              }

            },
            child: Container(
              width: 1.sw,
              height: .12.sw,
              decoration: BoxDecoration(
                borderRadius:
                BorderRadius.all(Radius.circular(10)),
                color: Colors.grey,
              ),
              child: Center(
                child: Text(
                  'Verify',
                  style: TextStyle(
                    fontSize: 20.sp,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
  Future uploadFile() async {
    int i = 1;

    for (var img in imageFileList!) {
      setState(() {
        val = i / imageFileList!.length;
      });
      ref = firebase_storage.FirebaseStorage.instance
          .ref()
          .child('images/${widget.propertyDetailsObject.markerID}/${Path.basename('${DateTime.now()}')}');
      await ref.putFile(File(img.path)).whenComplete(() async {
        await ref.getDownloadURL().then((value) async {
          print('image----------------');
          //imgRef.add({'url': value});
          await FirebaseFirestore.instance
              .collection('properties')
              .doc(widget.propertyDetailsObject.markerID)
              .update({
            "photos": FieldValue.arrayUnion([value]),
          }).then(
                (value) {
              FirebaseFirestore.instance
                  .collection('properties')
                  .doc(widget.propertyDetailsObject.markerID)
                  .set({
                'VerificationFlags': {
                  'isPhotosVerified': true,
                }
              }, SetOptions(merge: true));
            },
          );
          i++;
        });
      });
    }
  }
}