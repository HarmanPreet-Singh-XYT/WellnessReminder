import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';
class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool light = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 10),
      child: Center(
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Settings",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20,),
            Container(
              padding:const EdgeInsets.only(top: 20.0,bottom: 20.0,left: 15,right: 15),
              margin:const EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                border: Border.all(color: const Color.fromARGB(255, 48, 48, 48)),
                borderRadius: BorderRadius.circular(10)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        padding:const EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 48, 48, 48),
                          borderRadius: BorderRadius.circular(100)
                        ),
                        child:const Icon(LucideIcons.activity,color: Colors.white,size: 24,),
                      ),
                      const SizedBox(width: 10,),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Enable',style:TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w600),),
                          Text("Enable/Disable App",style:TextStyle(color: Color(0xffA9A9A9),fontSize: 12,fontWeight: FontWeight.w500),),
                        ],
                      ),
                    ],
                  ),
                  Switch(
                    // This bool value toggles the switch.
                    value: light,
                    inactiveTrackColor: const Color.fromARGB(255, 48, 48, 48),
                    activeColor: Colors.white,
                    onChanged: (bool value) {
                      // This is called when the user toggles the switch.
                      setState(() {
                        light = value;
                      });
                    },
                  )
                ],
              ),
            ),
            Container(
              padding:const EdgeInsets.only(top: 20.0,bottom: 20.0,left: 15,right: 15),
              margin:const EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                border: Border.all(color: const Color.fromARGB(255, 48, 48, 48)),
                borderRadius: BorderRadius.circular(10)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        padding:const EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 48, 48, 48),
                          borderRadius: BorderRadius.circular(100)
                        ),
                        child:const Icon(LucideIcons.bell,color: Colors.white,size: 24,),
                      ),
                      const SizedBox(width: 10,),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Notifications',style:TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w600),),
                          Text("Enable Notifications",style:TextStyle(color: Color(0xffA9A9A9),fontSize: 12,fontWeight: FontWeight.w500),),
                        ],
                      ),
                    ],
                  ),
                  Switch(
                    // This bool value toggles the switch.
                    value: light,
                    inactiveTrackColor: const Color.fromARGB(255, 48, 48, 48),
                    activeColor: Colors.white,
                    onChanged: (bool value) {
                      // This is called when the user toggles the switch.
                      setState(() {
                        light = value;
                      });
                    },
                  )
                ],
              ),
            ),
            Container(
              padding:const EdgeInsets.only(top: 20.0,bottom: 20.0,left: 15,right: 15),
              margin:const EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                border: Border.all(color: const Color.fromARGB(255, 48, 48, 48)),
                borderRadius: BorderRadius.circular(10)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        padding:const EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 48, 48, 48),
                          borderRadius: BorderRadius.circular(100)
                        ),
                        child:const Icon(LucideIcons.speaker,color: Colors.white,size: 24,),
                      ),
                      const SizedBox(width: 10,),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Sound',style:TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w600),),
                          Text("Enable Sound effects",style:TextStyle(color: Color(0xffA9A9A9),fontSize: 12,fontWeight: FontWeight.w500),),
                        ],
                      ),
                    ],
                  ),
                  Switch(
                    // This bool value toggles the switch.
                    value: light,
                    inactiveTrackColor: const Color.fromARGB(255, 48, 48, 48),
                    activeColor: Colors.white,
                    onChanged: (bool value) {
                      // This is called when the user toggles the switch.
                      setState(() {
                        light = value;
                      });
                    },
                  )
                ],
              ),
            ),
            Container(
              padding:const EdgeInsets.only(top: 20.0,bottom: 20.0,left: 15,right: 15),
              margin:const EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                border: Border.all(color: const Color.fromARGB(255, 48, 48, 48)),
                borderRadius: BorderRadius.circular(10)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        padding:const EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 48, 48, 48),
                          borderRadius: BorderRadius.circular(100)
                        ),
                        child:const Icon(LucideIcons.vibrate,color: Colors.white,size: 24,),
                      ),
                      const SizedBox(width: 10,),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Vibration',style:TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w600),),
                          Text("Enable Vibration",style:TextStyle(color: Color(0xffA9A9A9),fontSize: 12,fontWeight: FontWeight.w500),),
                        ],
                      ),
                    ],
                  ),
                  Switch(
                    // This bool value toggles the switch.
                    value: light,
                    inactiveTrackColor: const Color.fromARGB(255, 48, 48, 48),
                    activeColor: Colors.white,
                    onChanged: (bool value) {
                      // This is called when the user toggles the switch.
                      setState(() {
                        light = value;
                      });
                    },
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}