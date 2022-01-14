// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables

// import 'dart:html';
import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';

class ContactDetailsList extends StatelessWidget {
  Map<String,String> contact; //1

  ContactDetailsList({Key? key,required this.contact}) : super(key: key); //3

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0.0,
        title: Text('My Contacts',
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black)),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: null,
            icon: Icon(Icons.more_vert),
            iconSize: 35,
            color: Colors.black,
          ),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: CircleAvatar(
              backgroundImage: AssetImage("${contact["image"]}",),
              radius: 115,
            ),
          ),
          Center(
            child: Text(
              "${contact["name"]}", //2
              
              style: TextStyle(fontSize: 30),
            ),
          ),
          Center(
            child: Text(
              "${contact["region"]}", //2
              style: TextStyle(fontSize: 15),
            ),
          ),
          Divider(
            height: 30,
            thickness: 1,
            indent: 3,
            endIndent: 3,
            color: Colors.grey,
          ),
          Column(
            children: [
              ListTile(
                title: Text('Mobile'),
                subtitle: Text("${contact["phone"]}"),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextButton(
                      onPressed: null,
                      child: Icon(
                        Icons.message,
                        color: Colors.black,
                      ),
                      style: TextButton.styleFrom(
                          backgroundColor: Colors.grey[200],
                          shape: CircleBorder()),
                    ),
                    TextButton(
                      onPressed: null,
                      child: Icon(
                        Icons.phone,
                        color: Colors.black,
                      ),
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.grey[200],
                        shape: CircleBorder(),
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                title: Text('Email'),
                subtitle: Text('"${contact["email"]}"'),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextButton(
                      onPressed: null,
                      child: Icon(
                        Icons.email_rounded,
                        color: Colors.black,
                      ),
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.grey[200],
                        shape: CircleBorder(),
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                title: Text('Groups'),
                subtitle: Text('"${contact["groups"]}"'),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                ),
              ),
            ],
          ),
          Container(
            color: Colors.grey[300],
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Text('Accounts Linked', style: TextStyle(fontSize: 17)),
            ),
          ),
          Divider(
            height: 1,
            thickness: 1,
            indent: 3,
            endIndent: 3,
            color: Colors.grey,
          ),
          ListTile(
            title: Text('Telegram'),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextButton(
                  onPressed: null,
                  child: IconButton(
                    onPressed: null,
                    icon: SvgPicture.asset('Assets/icons/telegram.svg'),
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            title: Text('WhatsApp'),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextButton(
                  onPressed: null,
                  child: IconButton(
                    onPressed: null,
                    icon: SvgPicture.asset('Assets/icons/whatsapp.svg'),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.grey[300],
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Text('More Options', style: TextStyle(fontSize: 17)),
            ),
          ),
          Divider(
            height: 1,
            thickness: 1,
            indent: 3,
            endIndent: 3,
            color: Colors.grey,
          ),
          ListTile(
            title: Text('Share Contact'),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
            ),
          ),
          ListTile(
            title: Text('QR Code'),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
            ),
          ),
        ],
      ),
    );
  }
}
