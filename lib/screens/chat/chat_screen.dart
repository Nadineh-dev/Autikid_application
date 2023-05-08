import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter/services.dart';
import 'package:dialogflow_grpc/dialogflow_grpc.dart';
import 'package:dialogflow_grpc/generated/google/cloud/dialogflow/v2beta1/session.pb.dart';
import 'package:chat_bubbles/chat_bubbles.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final List<ChatMessage> _messages = <ChatMessage>[];
  final TextEditingController _textController = TextEditingController();
  //
  // final bool _isRecording = false;
  //
  // StreamSubscription? _recorderStatus;
  // StreamSubscription<List<int>>? _audioStreamSubscription;
  // BehaviorSubject<List<int>>? _audioStream;
  DialogflowGrpcV2Beta1? dialogflow;

  @override
  void initState() {
    super.initState();
    initPlugin();
  }

  Future<void> initPlugin() async {
    // _recorderStatus = _recorder.status.listen((status) {
    //   if (mounted)
    //     setState(() {
    //       _isRecording = status == SoundStreamStatus.Playing;
    //     });
    // });
    // await Future.wait([_recorder.initialize()]);
    final serviceAccount =
        ServiceAccount.fromString((await rootBundle.loadString('assets/credentials/autism-kcsu-785282097ff8.json')));
    dialogflow = DialogflowGrpcV2Beta1.viaServiceAccount(serviceAccount);
  }

  @override
  void dispose() {
    // _recorderStatus?.cancel();
    // _audioStreamSubscription?.cancel();
    super.dispose();
  }

  void handleSubmitted(text) async {
    print(text);
    _textController.clear();

    ChatMessage message = ChatMessage(
      text: text,
      name: "You",
      type: true,
    );

    setState(() {
      _messages.insert(0, message);
    });
    DetectIntentResponse? data = await dialogflow?.detectIntent(text, 'en-US');
    String? fulfillmentText = data?.queryResult.fulfillmentText;
    if (fulfillmentText != null) {
      if (fulfillmentText.isNotEmpty) {
        ChatMessage botMessage = ChatMessage(
          text: fulfillmentText,
          name: "Bot",
          type: false,
        );
        setState(() {
          _messages.insert(0, botMessage);
        });
      }
    }
  }

  // void handleStream() async {
  //   // _recorder.start();
  //   // _audioStream = BehaviorSubject<List<int>>();
  //   // _audioStreamSubscription = _recorder.audioStream.listen((data) {
  //   //   print(data);
  //   //   _audioStream!.add(data);
  //   // });
  //
  //   var biasList = SpeechContextV2Beta1(
  //       phrases: ['Dialogflow CX', 'Dialogflow Essentials', 'Action Builder', 'HIPAA'], boost: 20.0);
  //
  //   var config = InputConfigV2beta1(
  //       encoding: 'AUDIO_ENCODING_LINEAR_16',
  //       languageCode: 'en-US',
  //       sampleRateHertz: 16000,
  //       singleUtterance: false,
  //       speechContexts: [biasList]);
  //
  //   // final responseStream = dialogflow!.streamingDetectIntent(config, _audioStream!);
  //
  //   // responseStream.listen((data) {
  //   //   setState(() {
  //   //     String transcript = data.recognitionResult.transcript;
  //   //     String queryText = data.queryResult.queryText;
  //   //     String fulfillmentText = data.queryResult.fulfillmentText;
  //   //
  //   //     if (fulfillmentText.isNotEmpty) {
  //   //       ChatMessage message = ChatMessage(
  //   //         text: queryText,
  //   //         name: "You",
  //   //         type: true,
  //   //       );
  //   //
  //   //       ChatMessage botMessage = ChatMessage(
  //   //         text: fulfillmentText,
  //   //         name: "Bot",
  //   //         type: false,
  //   //       );
  //   //
  //   //       _messages.insert(0, message);
  //   //       _textController.clear();
  //   //       _messages.insert(0, botMessage);
  //   //     }
  //   //     if (transcript.isNotEmpty) {
  //   //       _textController.text = transcript;
  //   //     }
  //   //   });
  //   // }, onError: (e) {}, onDone: () {});
  // }

  void stopStream() async {
    // await _recorder.stop();
    // await _audioStreamSubscription?.cancel();
    // await _audioStream?.close();
  }

  // The chat interface
  //
  //------------------------------------------------------------------------------------
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: const Text('ChatBot'),
      ),
      body: Column(children: <Widget>[
        Flexible(
            child: ListView.builder(
          padding: const EdgeInsets.all(8.0),
          reverse: true,
          itemBuilder: (_, int index) => _messages[index],
          itemCount: _messages.length,
        )),
        const Divider(height: 1.0),
        Container(
            decoration: BoxDecoration(color: Theme.of(context).cardColor),
            child: IconTheme(
              data: IconThemeData(color: Theme.of(context).colorScheme.secondary),
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  children: <Widget>[
                    Flexible(
                      child: TextField(
                        controller: _textController,
                        onSubmitted: handleSubmitted,
                        decoration: const InputDecoration.collapsed(hintText: "Send a message"),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 4.0),
                      child: IconButton(
                        icon: const Icon(Icons.send),
                        onPressed: () => handleSubmitted(_textController.text.trim()),
                      ),
                    ),
                    // IconButton(
                    //   iconSize: 30.0,
                    //   icon: Icon(_isRecording ? Icons.mic_off : Icons.mic),
                    //   onPressed: _isRecording ? stopStream : handleStream,
                    // ),
                  ],
                ),
              ),
            )),
      ]),
    );
  }
}

//------------------------------------------------------------------------------------
// The chat message balloon
//
//------------------------------------------------------------------------------------
class ChatMessage extends StatelessWidget {
  const ChatMessage({super.key, required this.text, required this.name, required this.type});

  final String text;
  final String name;
  final bool type;

  List<Widget> otherMessage(context) {
    return <Widget>[
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CircleAvatar(child: Text('B')),
          Container(
            margin: const EdgeInsets.only(right: 4.0, top: 6),
            child: Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
          )
        ],
      ),
      Expanded(
        child: Container(
          margin: const EdgeInsets.only(top: 5.0),
          child: BubbleSpecialOne(
            text: text,
            isSender: false,
            color: Colors.purple.shade100,
            textStyle: const TextStyle(
              fontSize: 20,
              color: Colors.purple,
            ),
          ),
        ),
      ),
    ];
  }

  List<Widget> myMessage(context) {
    return <Widget>[
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(top: 5.0),
              child: BubbleSpecialOne(
                text: text,
                isSender: true,
                color: Colors.purple.shade100,
                textStyle: const TextStyle(
                  fontSize: 20,
                  color: Colors.purple,
                ),
              ),
            ),
          ],
        ),
      ),
      Column(
        children: [
          CircleAvatar(
            backgroundColor: Colors.white,
            child: Text(
              name[0],
              style: const TextStyle(color: Colors.black),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 4.0, top: 6),
            child: Text(name, style: Theme.of(context).textTheme.subtitle1),
          )
        ],
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: type ? myMessage(context) : otherMessage(context),
      ),
    );
  }
}
