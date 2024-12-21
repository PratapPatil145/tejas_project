// //**********************M3u8******************************************8
// import 'package:flutter/material.dart';
// import 'package:lecle_yoyo_player/lecle_yoyo_player.dart';

// void main() => runApp(const MyApp());

// class MyApp extends StatefulWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   bool fullscreen = false;

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Material App',
//       home: Scaffold(
//         appBar: fullscreen == false
//             ? AppBar(
//                 backgroundColor: Colors.blue,
//                 title: const Image(
//                   image: AssetImage('assets/ADD_bankk.png'),
//                   fit: BoxFit.fitHeight,
//                   height: 50,
//                 ),
//                 centerTitle: true,
//                 leading: IconButton(
//                   icon: const Icon(Icons.arrow_back),
//                   onPressed: () {
//                     Navigator.pop(context);
//                   },
//                 ),
//               )
//             : null,
//         body: Padding(
//           padding:
//               fullscreen ? EdgeInsets.zero : const EdgeInsets.only(top: 32.0),
//           child: YoYoPlayer(
//             aspectRatio: 16 / 9,
//             url:
//                 'https://socialstorage.b-cdn.net/posts/1707553385484_240p.m3u8',
//             // 'https://socialstorage.b-cdn.net/posts/1707397164052_240p.m3u8',
//             // 'https://socialstorage.b-cdn.net/posts/1707329015424_240p.m3u8',
//             // 'https://socialstorage.b-cdn.net/data/hls/1706797582058_240p.m3u8',
//             // 'https://socialstorage.b-cdn.net/posts/1706708667339.mp4',

//             // 'https://dsqqu7oxq6o1v.cloudfront.net/preview-9650dW8x3YLoZ8.webm',
//             // "https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4",
//             // "https://test-streams.mux.dev/x36xhzz/x36xhzz.m3u8",
//             // "https://sfux-ext.sfux.info/hls/chapter/105/1588724110/1588724110.m3u8",
//             allowCacheFile: true,
//             onCacheFileCompleted: (files) {
//               print('Cached file length ::: ${files?.length}');

//               if (files != null && files.isNotEmpty) {
//                 for (var file in files) {
//                   print('File path ::: ${file.path}');
//                 }
//               }
//             },
//             onCacheFileFailed: (error) {
//               print('Cache file error ::: $error');
//             },
//             videoStyle: const VideoStyle(
//               qualityStyle: TextStyle(
//                 fontSize: 16.0,
//                 fontWeight: FontWeight.w500,
//                 color: Colors.white,
//               ),
//               forwardAndBackwardBtSize: 30.0,
//               playButtonIconSize: 40.0,
//               playIcon: Icon(
//                 Icons.add_circle_outline_outlined,
//                 size: 40.0,
//                 color: Colors.white,
//               ),
//               pauseIcon: Icon(
//                 Icons.remove_circle_outline_outlined,
//                 size: 40.0,
//                 color: Colors.white,
//               ),
//               videoQualityPadding: EdgeInsets.all(5.0),
//               // showLiveDirectButton: true,
//               // enableSystemOrientationsOverride: false,
//             ),
//             videoLoadingStyle: const VideoLoadingStyle(
//               loading: Center(
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     Image(
//                       image: AssetImage('assets/ADD_bankk.png'),
//                       fit: BoxFit.fitHeight,
//                       height: 50,
//                     ),
//                     SizedBox(height: 16.0),
//                     Text("Loading video..."),
//                   ],
//                 ),
//               ),
//             ),
//             onFullScreen: (value) {
//               setState(() {
//                 if (fullscreen != value) {
//                   fullscreen = value;
//                 }
//               });
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }

//*****************************************************8speedtest  **************************************************

// import 'package:flutter/material.dart';
// import 'package:flutter_speedtest/flutter_speedtest.dart';
// import 'package:flutter_internet_speed_test/flutter_internet_speed_test.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key}) : super(key: key);

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   // https://speedtest.globalxtreme.net:8080/upload?nocache=a58d34b4-f86b-4088-9396-eeac6fd27baf&guid=f3e39d01-247d-4a40-afaf-ef5c276b0f75

//   final _speedtest = FlutterSpeedtest(
//     // baseUrl: 'https://speedtest.gsmnet.id.prod.hosts.ooklaserver.net:8080',
//     baseUrl: 'https://www.google.com/',
//     pathDownload: '/download',
//     pathUpload: '/upload',
//     pathResponseTime: '/ping',
//   );

//   double _progressDownload = 0;
//   double _progressUpload = 0;

//   int _ping = 0;
//   int _jitter = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           'Flutter Speedtest',
//         ),
//       ),
//       body: Center(
//           child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Text('Download: $_progressDownload'),
//           Text('upload: $_progressUpload'),
//           Text('Ping: $_ping'),
//           Text('Jitter: $_jitter'),
//           ElevatedButton(
//             onPressed: () {
//               _speedtest.getDataspeedtest(
//                 downloadOnProgress: ((percent, transferRate) {
//                   setState(() {
//                     _progressDownload = transferRate;
//                   });
//                 }),
//                 uploadOnProgress: ((percent, transferRate) {
//                   setState(() {
//                     _progressUpload = transferRate;
//                   });
//                 }),
//                 progressResponse: ((responseTime, jitter) {
//                   setState(() {
//                     _ping = responseTime;
//                     _jitter = jitter;
//                   });
//                 }),
//                 onError: ((errorMessage) {
//                   // print(errorMessage);
//                 }),
//                 onDone: () => debugPrint('done'),
//               );
//             },
//             child: const Text('test download'),
//           ),
//         ],
//       )),
//     );
//   }
// }

//********************************video crop******************** */

// import 'package:flutter/material.dart';
// import 'package:video_player/video_player.dart';
// import 'package:flutter_ffmpeg/flutter_ffmpeg.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Video Cropper',
//       home: VideoCropper(),
//     );
//   }
// }

// class VideoCropper extends StatefulWidget {
//   @override
//   _VideoCropperState createState() => _VideoCropperState();
// }

// class _VideoCropperState extends State<VideoCropper> {
//   late VideoPlayerController _controller;
//   FlutterFFmpeg _flutterFFmpeg = FlutterFFmpeg();

//   @override
//   void initState() {
//     super.initState();
//     _controller = VideoPlayerController.networkUrl(
//         Uri.parse("https://socialstorage.b-cdn.net/posts/1696401719807.mp4"))
//       ..initialize().then((_) {
//         setState(() {});
//       });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Video Cropper'),
//       ),
//       body: Center(
//           child:
//               //  _controller.value.initialized
//               //     ?
//               AspectRatio(
//         aspectRatio: _controller.value.aspectRatio,
//         child: VideoPlayer(_controller),
//       )
//           // : CircularProgressIndicator(),
//           ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           cropVideo();
//         },
//         child: Icon(Icons.crop),
//       ),
//     );
//   }

//   Future<void> cropVideo() async {
//     await _flutterFFmpeg.execute(
//       "-i ${_controller.dataSource} -ss 0 -t 60 -c:v copy -c:a copy output.mp4",
//     );
//     print('Video cropped successfully.');
//   }

//   @override
//   void dispose() {
//     super.dispose();
//     _controller.dispose();
//   }
// }

//crop video
import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:video_trimmer/video_trimmer.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Video Trimmer',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Video Trimmer"),
      ),
      body: Center(
        child: Container(
          child: ElevatedButton(
            child: Text("LOAD VIDEO"),
            onPressed: () async {
              FilePickerResult? result = await FilePicker.platform.pickFiles(
                type: FileType.video,
                allowCompression: false,
              );
              if (result != null) {
                File file = File(result.files.single.path!);
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) {
                    return TrimmerView(file);
                  }),
                );
              }
            },
          ),
        ),
      ),
    );
  }
}

class TrimmerView extends StatefulWidget {
  final File file;

  TrimmerView(this.file);

  @override
  _TrimmerViewState createState() => _TrimmerViewState();
}

class _TrimmerViewState extends State<TrimmerView> {
  final Trimmer _trimmer = Trimmer();

  double _startValue = 0.0;
  double _endValue = 0.0;

  bool _isPlaying = false;
  bool _progressVisibility = false;

  Future<String?> _saveVideo() async {
    setState(() {
      _progressVisibility = true;
    });

    String? _value;

    await _trimmer
        .saveTrimmedVideo(
      startValue: _startValue, endValue: _endValue,

      //  onSave: (String? outputPath) {
      //   print("outputPath $outputPath");
      //  }
    )
        .then((value) {
      setState(() {
        _progressVisibility = false;

        print("value $value");

        // _value = value;
      });
    });

    return _value;
  }

  void _loadVideo() {
    _trimmer.loadVideo(videoFile: widget.file);
  }

  @override
  void initState() {
    super.initState();

    _loadVideo();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Video Trimmer"),
      ),
      body: Builder(
        builder: (context) => Center(
          child: Container(
            padding: EdgeInsets.only(bottom: 30.0),
            color: Colors.black,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Visibility(
                  visible: _progressVisibility,
                  child: LinearProgressIndicator(
                    backgroundColor: Colors.red,
                  ),
                ),
                ElevatedButton(
                  onPressed: _progressVisibility
                      ? null
                      : () async {
                          _saveVideo().then((outputPath) {
                            print('OUTPUT PATH: $outputPath');
                            final snackBar = SnackBar(
                                content: Text('Video Saved successfully'));
                            ScaffoldMessenger.of(context).showSnackBar(
                              snackBar,
                            );
                          });
                        },
                  child: Text("SAVE"),
                ),
                Expanded(
                  child: VideoViewer(trimmer: _trimmer),
                ),
                Center(
                  child: TrimViewer(
                    trimmer: _trimmer,
                    viewerHeight: 50.0,
                    viewerWidth: MediaQuery.of(context).size.width,
                    maxVideoLength: const Duration(seconds: 10),
                    onChangeStart: (value) => _startValue = value,
                    onChangeEnd: (value) => _endValue = value,
                    onChangePlaybackState: (value) =>
                        setState(() => _isPlaying = value),
                  ),
                ),
                TextButton(
                  child: _isPlaying
                      ? Icon(
                          Icons.pause,
                          size: 80.0,
                          color: Colors.white,
                        )
                      : Icon(
                          Icons.play_arrow,
                          size: 80.0,
                          color: Colors.white,
                        ),
                  onPressed: () async {
                    bool playbackState = await _trimmer.videoPlaybackControl(
                      startValue: _startValue,
                      endValue: _endValue,
                    );
                    setState(() {
                      _isPlaying = playbackState;
                    });
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
