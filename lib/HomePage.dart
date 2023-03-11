import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Padding(
          padding: const EdgeInsets.only(left: 0, right: 0),
          child: Column(
            children: [
              Center(
                child: Container(
                  width: 400,
                  height: 280,
                  child: ModelViewer(
                    src: 'image/space_shuttle.glb',
                    alt: 'A 3D desayn',
                    ar: true,
                    autoRotate: true,
                    cameraControls: true,
                    disableZoom: true,
                  ),
                ),
              ),
              SizedBox(
                height: 7,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: ListTile(
                  leading: Container(
                    height: 61,
                    width: 61,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('image/Artboard 8.png'),
                            fit: BoxFit.cover),
                        //color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(14),
                        border: Border.all(color: Colors.white70, width: 1)),
                  ),
                  title: Text(
                    'robot',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                  subtitle: Text(
                    'description de levenement',
                    style: TextStyle(
                        fontWeight: FontWeight.w100, color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Expanded(
                  child: Container(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: Text(
                  '''
Welcome to the world of robotics! This exciting event brings together the latest and greatest in robotics technology. Attendees can witness live demonstrations of cutting-edge robots performing tasks such as navigating obstacles, picking up objects, and even interacting with humans. There will also be a variety of interactive exhibits showcasing the various applications of robotics in industries such as manufacturing, healthcare, and transportation. Whether you're a robotics enthusiast or just curious about the future of automation, this event promises to be a fascinating and educational experience.
                       ''',
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
              )),
              Container(
                margin: EdgeInsets.all(20),
                //   color: Colors.teal,
                // width: 500,
                height: 42,
                child: Align(
                  alignment: Alignment.centerRight,
                  child: ElevatedButton(
                      child: Container(
                          alignment: Alignment.centerRight,
                          // Icons.people_alt_rounded,
                          width: 100,
                          // size: 40,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,

                            children: [
                              Icon(Icons.file_download_outlined),
                              Container(child: Text('download'))
                            ],
                          )),
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                      )),
                ),
              ),
            ],
          ),
        ),
      ),

    );
  }
}
