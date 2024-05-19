import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uuid/uuid.dart';
import '../../injection.dart';
import '../application/bloc/chat_bloc.dart';
import '../application/watcher/chat_watcher_bloc.dart';
import '../domain/chat_object.dart';


class AdminChatPage extends StatefulWidget {
  AdminChatPage(this.markerId,this.userId,this.userName);
  final String? markerId;
  final String? userId;
  final String? userName;
  @override
  State<AdminChatPage> createState() => _AdminChatPageState();
}

class _AdminChatPageState extends State<AdminChatPage> {
  TextEditingController text = TextEditingController();
  String? msg='';
  List<Message> messages = [
  ];
  ChatObject chatObject=ChatObject();
  String? name='';

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
              create: (context) => getIt<ChatWatcherBloc>()
                ..add(ChatWatcherEvent.watchAllStartedAdmin(widget.markerId!,widget.userId!))),
          BlocProvider<ChatBloc>(
            create: (context) => getIt<ChatBloc>(),
          ),
        ],
        child: MultiBlocListener(
            listeners: [
              BlocListener<ChatBloc, ChatState>(
                  listener: (context, state) {
                    state.authFailureOrSuccessOption.fold(
                          () {},
                          (either) => either.fold(
                            (failure) {
                          failure.map(
                            insufficientPermission: (val) {},
                            serverError: (value) {},
                            unableToUpdate: (value) {},
                            unexpected: (value) {},
                          );
                        },
                            (id) {},
                      ),
                    );
                  }),
            ],
            child: BlocBuilder<ChatWatcherBloc,
                ChatWatcherState>(builder: (context, state) {
              return state.map(
                initial: (_) => Container(),
                loadInProgress: (_) => const Center(
                  child: CircularProgressIndicator(),
                ),
                loadFailure: (state) {
                  return Container();
                },
                loadSuccess: (state) {
                  FirebaseFirestore.instance.collection("properties")
                      .doc(widget.markerId).collection('chat').doc(widget.userId).update(
                      {
                        'seen':true,
                      });
                  messages=state.chatObject!.chatMessages!;
                  return Scaffold(
                    resizeToAvoidBottomInset: true,
                    appBar: AppBar(
                      automaticallyImplyLeading: false,
                      backgroundColor: Colors.white,
                      flexibleSpace: SafeArea(
                        child: Container(
                          padding: EdgeInsets.only(right: 16),
                          child: Row(
                            children: <Widget>[
                              IconButton(
                                onPressed: (){
                                  Navigator.pop(context);
                                },
                                icon: Icon(Icons.arrow_back,color: Colors.black,),
                              ),
                              SizedBox(width: 2,),
                              CircleAvatar(
                                maxRadius: 20,
                              ),
                              SizedBox(width: 12,),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(widget.userName!,style: TextStyle( fontSize: 16 ,fontWeight: FontWeight.w600),),
                                    SizedBox(height: 6,),
                                    Text("Online",style: TextStyle(color: Colors.grey.shade600, fontSize: 13),),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    body: Stack(
                      children: <Widget>[
                        ListView.builder(
                          itemCount: messages.length,
                          shrinkWrap: true,
                          padding: EdgeInsets.only(top: 10,bottom: 10),
                          physics: NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index){
                            return Container(
                              padding: EdgeInsets.only(left: 14,right: 14,top: 10,bottom: 10),
                              child: Align(
                                alignment: (messages[index].messageType == "user"?Alignment.topLeft:Alignment.topRight),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: (messages[index].messageType  == "user"?Colors.blue[200]:Colors.grey.shade200),
                                  ),
                                  padding: EdgeInsets.all(16),
                                  child: Text(messages[index].messageContent!, style: TextStyle(fontSize: 15),),
                                ),
                              ),
                            );
                          },
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Container(
                            padding: EdgeInsets.only(left: 10,bottom: 10,top: 10),
                            height: 60,
                            width: double.infinity,
                            color: Colors.white,
                            child: Row(
                              children: <Widget>[
                                SizedBox(width: 15,),
                                Expanded(
                                  child: TextField(
                                    controller: text,
                                    onChanged: (String value){
                                      msg=value;
                                    },
                                    decoration: InputDecoration(
                                        hintText: "Write message....",
                                        hintStyle: TextStyle(color: Colors.black54),
                                        border: InputBorder.none
                                    ),
                                  ),
                                ),
                                SizedBox(width: 15,),
                                FloatingActionButton(
                                  onPressed: (){
                                    String uuid = Uuid().v4().trimRight();

                                    if(msg!=''){
                                      FirebaseFirestore.instance
                                          .collection('properties')
                                          .doc(widget.markerId).collection('chat').doc(widget.userId)
                                          .update({'chatObject.chatMessages':FieldValue.arrayUnion([{'messageType':'admin','messageContent':msg,'timestamp':Timestamp.now()}])},);
                                    }
                                    text.clear();
                                  },
                                  child: Icon(Icons.send,color: Colors.white,size: 18,),
                                  backgroundColor: Colors.blue,
                                  elevation: 0,
                                ),
                              ],

                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              );
            })));
  }
}