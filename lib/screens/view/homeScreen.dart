import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:video_player/video_player.dart';
import 'package:videoplayer/home/provider/homeprovider.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  homeProvider? homeProviderfalse;
  homeProvider? homeProvidertrue;
  VideoPlayerController? videoPlayerController;
  ChewieController? chewieController;
  @override
  void initState(){
    super.initState();
    videoPlayerController = VideoPlayerController.asset("assets/video/p1.mp4")..initialize();
    chewieController = ChewieController(videoPlayerController: videoPlayerController!);
  }
  Widget build(BuildContext context) {
    homeProviderfalse = Provider.of<homeProvider>(context,listen: false);
    homeProvidertrue = Provider.of<homeProvider>(context,listen: true);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Container(
            alignment: Alignment.center,
            height: 200,
            child: GestureDetector(
              onTap: (){
                homeProviderfalse!.changeState();
                if (homeProviderfalse!.isplay)
                  {
                    videoPlayerController!.play();
                  }
                else
                  {
                    videoPlayerController!.pause();
                  }
              },
              child: Chewie(controller: chewieController!,),
            ),
          ),
        ),
      ),
    );
  }
}
