import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uuid/uuid.dart';
import '../../injection.dart';
import '../application/bloc/chat_bloc.dart';
import '../application/watcher/chat_watcher_bloc.dart';
import '../domain/chat_object.dart';


class UserChat extends StatefulWidget {
  UserChat(this.markerId,this.propertyId);
  final String? markerId;
  final String? propertyId;
  @override
  State<UserChat> createState() => _UserChatState();
}

class _UserChatState extends State<UserChat> {
  TextEditingController text = TextEditingController();
  String? msg='';
  List<Message> messages = [];
  ChatObject chatObject=ChatObject(chatMessages: []);
  String uuid = Uuid().v4().trimRight();
  ScrollController scrollController = ScrollController();

  String? name;
  @override
  initState()  {
    FirebaseAuth auth = FirebaseAuth.instance;
    String user = auth.currentUser!.uid;
    FirebaseFirestore.instance.collection('users').doc(user).get().then((value) {
      name=value.data()!['name'];
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
              create: (context) => getIt<ChatWatcherBloc>()
                ..add(ChatWatcherEvent.watchAllStarted(widget.markerId!))),
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
                loadInProgress: (_) => Scaffold(
                  backgroundColor: Colors.white,
                  body: const Center(
                    child: CircularProgressIndicator(),
                  ),
                ),
                loadFailure: (state) {
                  print(state.chatFailure);
                  return Center(
                    child: Scaffold(
                      resizeToAvoidBottomInset: true,
                      appBar: AppBar(
                        elevation: 0,
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
                                SizedBox(width: 12,),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text(widget.propertyId!,style: TextStyle( fontSize: 16 ,fontWeight: FontWeight.w600),),
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
                                      onChanged: (String? value){
                                        msg=value!;
                                      },
                                      decoration: InputDecoration(
                                          hintText: "Write message",
                                          hintStyle: TextStyle(color: Colors.black54),
                                          border: InputBorder.none
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 15,),
                                  FloatingActionButton(
                                    onPressed: (){
                                      print(msg);
                                      if(msg!=''){
                                        Message message=Message(messageContent: msg,messageType: 'user',timestamp: Timestamp.now());
                                        chatObject.chatMessages!.add(message);
                                        FirebaseAuth auth = FirebaseAuth.instance;
                                        String user = auth.currentUser!.uid;
                                        FirebaseFirestore.instance
                                            .collection('properties')
                                            .doc(widget.markerId).collection('chat').doc(user)
                                            .set({
                                          'chatObject':chatObject.toJson(),
                                          'markerId':widget.markerId,
                                          'name':name,
                                          'userId':user,
                                          'seen':false,
                                        },SetOptions(merge: true));
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
                    ),
                  );
                },
                loadSuccess: (state) {
                  messages=state.chatObject!.chatMessages!;
                  return Scaffold(
                    resizeToAvoidBottomInset: true,
                    appBar: AppBar(
                      elevation: 0,
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

                              SizedBox(width: 12,),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(widget.propertyId!,style: TextStyle( fontSize: 16 ,fontWeight: FontWeight.w600),),
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
                          controller: scrollController,
                          padding: EdgeInsets.only(top: 10,bottom: 10),
                          physics: AlwaysScrollableScrollPhysics(),
                          itemBuilder: (context, index){
                            // scrollController.animateTo(scrollController.position.maxScrollExtent, duration: Duration(milliseconds: 200), curve: Curves.easeOut);
                            return Container(
                              padding: EdgeInsets.only(left: 14,right: 14,top: 10,bottom: 10),
                              child: Align(
                                alignment: (messages[index].messageType == "user"?Alignment.topRight:Alignment.topLeft),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: (messages[index].messageType  == "user"?Colors.grey.shade200:Colors.blue[200]),
                                  ),
                                  padding: EdgeInsets.all(16),
                                  child: Text(messages[index].messageContent!, style: TextStyle(fontSize: 15),),
                                ),
                              ),
                            );

                          },
                        ),
                      ],
                    ),
                    bottomNavigationBar: Container(
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
                                  hintText: "Write message...",
                                  hintStyle: TextStyle(color: Colors.black54),
                                  border: InputBorder.none
                              ),
                            ),
                          ),
                          SizedBox(width: 15,),
                          FloatingActionButton(
                            onPressed: (){
                              FirebaseAuth auth = FirebaseAuth.instance;
                              String user = auth.currentUser!.uid;
                              print(msg);
                              if(msg!=''){
                                Message(messageType:'user',messageContent:msg);
                                chatObject.chatMessages!.add(Message(messageType:'user',messageContent:msg));
                                FirebaseFirestore.instance
                                    .collection('properties')
                                    .doc(widget.markerId).collection('chat').doc(user)
                                    .update({
                                  'chatObject.chatMessages':FieldValue.arrayUnion([{'messageType':'user','messageContent':msg,'timestamp':Timestamp.now()}]),
                                  'seen':false,
                                },);
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
                  );
                },
              );
            })));
  }
}