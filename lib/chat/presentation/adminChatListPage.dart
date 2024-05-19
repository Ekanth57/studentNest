import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:studentnest/chat/presentation/adminChat.dart';

import '../../injection.dart';
import '../application/adminChatList/watcher/adminChatListWatcher_bloc.dart';
import '../application/bloc/chat_bloc.dart';

class AdminChatListPage extends StatefulWidget {
  AdminChatListPage(
    this.markerId,
  );
  final String? markerId;
  @override
  State<AdminChatListPage> createState() => _AdminChatListPageState();
}

class _AdminChatListPageState extends State<AdminChatListPage> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
              create: (context) => getIt<AdminChatListWatcherBloc>()
                ..add(AdminChatListWatcherEvent.watchAllStarted(
                    widget.markerId!,))),
          BlocProvider<ChatBloc>(
            create: (context) => getIt<ChatBloc>(),
          ),
        ],
        child: MultiBlocListener(
            listeners: [
              BlocListener<ChatBloc, ChatState>(listener: (context, state) {
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
            child: BlocBuilder<AdminChatListWatcherBloc,
                AdminChatListWatcherState>(builder: (context, state) {
              return state.map(
                initial: (_) => Container(),
                loadInProgress: (_) => const Center(
                  child: CircularProgressIndicator(),
                ),
                loadFailure: (state) {
                  return Center(
                    child: Text("something went wrong"),
                  );
                },
                loadSuccess: (state) {
                  state.chatList.forEach((element) {
                    print(element);
                  });
                  return Scaffold(
                    appBar: AppBar(
                      centerTitle: true,
                      iconTheme: IconThemeData(
                        color: Colors.black
                      ),
                      backgroundColor: Colors.white,
                      title: Text('chat',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                      ),
                    ),
                    body: ListView.builder(
                        shrinkWrap: true,
                        itemCount: state.chatList.length,
                        scrollDirection: Axis.vertical,
                        physics: AlwaysScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Container(
                                width: .9.sw,
                                height: .2.sw,
                                decoration: BoxDecoration(
                                    color:Colors.white,
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
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding:  EdgeInsets.symmetric(horizontal: .02.sw),
                                      child: Center(
                                        child: CircleAvatar(
                                          maxRadius: .08.sw,
                                          backgroundColor: Colors.grey.shade400,
                                          child: Center(
                                            child: Icon(Icons.person_outline_outlined,
                                            color: Colors.black,
                                              size: .09.sw,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: .6.sw,
                                          height: .07.sw,
                                         // color: Colors.red,
                                          child: Text(state.chatList.elementAt(index).name!,
                                          maxLines: 1,
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: .05.sw,
                                          ),
                                          ),
                                        ),
                                        Container(
                                          width: .6.sw,
                                          height: .08.sw,
                                          //color: Colors.green,
                                          child: Text(state.chatList.elementAt(index).seen==false?"New message":"No new message",
                                            maxLines: 1,
                                            style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: .04.sw,
                                              color: state.chatList.elementAt(index).seen==false?Colors.green:Colors.black
                                            ),
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                )
                              ),
                            ),
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => AdminChatPage(widget.markerId!,state.chatList.elementAt(index).userId,state.chatList.elementAt(index).name)));
                            },
                          );
                        }),
                  );
                },
              );
            })));
  }
}
