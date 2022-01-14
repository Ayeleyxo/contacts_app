// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:contacts_app_new/views/contact_details_view.dart';
import 'package:contacts_app_new/views/new_contact.dart';

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);
  final ScrollController _scrollController = ScrollController();
  final List<Map<String, String>> data = [
    {
      "name": "Papa Darfoor",
      "phone": "1-565-827-8982",
      "email": "PapaD@outlook.couk",
      "country": "United Kingdom",
      "region": "London",
      "image" : "Assets/images/memoji7.jpg",
      "groups" : "Tech Bros HQ",
    },
    {
      "name": "Koby Quagraine",
      "phone": "434-5712",
      "email": "KobyQ.diam@aol.edu",
      "country": "Canada",
      "region": "Toronto",
      "image" : "Assets/images/memoji7.jpg",
      "groups" : "Tech Bros",
    },
    {
      "name": "Nana Kojo Ewusie",
      "phone": "1-567-743-4341",
      "email": "NanaK4@google.com",
      "country": "Ghana",
      "region": "Accra",
      "image" : "Assets/images/memoji7.jpg",
      "groups" : "Tech Bros",
    },
    {
      "name": "Benedicta Dadson",
      "phone": "1-777-743-7677",
      "email": "Ben.D.98@hotmail.com",
      "country": "United States of America",
      "region": "Atlanta",
      "image" : "Assets/images/memoji2.jpg",
      "groups" : "Tech Bros",
    },
    {
      "name": "Vanessa Doodoo",
      "phone": "+233 204 67878",
      "email": "Van.Doodoo@aol.couk",
      "country": "Ghana",
      "region": "Accra",
      "image" : "Assets/images/memoji6.jpg",
      "groups" : "Mental Issues",
    },
    {
      "name": "Enam Quartey",
      "phone": "+233 204 45678",
      "email": "Q.Enaml@icloud.org",
      "country": "Ghana",
      "region": "Accra",
      "image" : "Assets/images/memoji6.jpg",
      "groups" : "Material Gworls",
    },
    {
      "name": "Akweley Okai",
      "phone": "+233 204 47778",
      "email": "Daquels@yahoo.couk",
      "country": "Ghana",
      "region": "Accra",
      "image" : "Assets/images/memoji6.jpg",
      "groups" : "Tech Bros",
    },
    {
      "name": "Mobile Money Guy",
      "phone": "+233 204 40989",
      "email": "Momo.gh@yahoo.gh",
      "country": "Ghana",
      "region": "Kumasi",
      "image" : "Assets/images/memoji.jpg",
      "groups" : "",
    },
    {
      "name": "Evivi Kitchen",
      "phone": "+233 244 45078",
      "email": "non@google.couk",
      "country": "Ghana",
      "region": "Accra",
      "image" : "Assets/images/memoji4.jpg",
      "groups" : "Yummy Yummy",
    },
    {
      "name": "Cleara Bitch",
      "phone": "1-768-578-0868",
      "email": "Hoesmad77.purr@google.edu",
      "country": "Chile",
      "region": "South Ghettoyute",
      "image" : "Assets/images/memoji3.jpg",
      "groups" : "City Gworls",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text('My Contacts',
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black)),
        centerTitle: false,
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage('Assets/images/memoji5.jpg'),
              ),
              IconButton(
                icon: Icon(Icons.star_border_rounded),
                iconSize: 35,
                color: Colors.black,
                onPressed: () {},
              ),
            ],
          )
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(90),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Material(
              elevation: 8,
              borderRadius: BorderRadius.circular(20),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    hintText: 'Search for name...',
                    prefixIcon: Icon(Icons.search)),
              ),
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: ListView(
          controller: _scrollController,
          children: [
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                "Recents",
                style: TextStyle(fontSize: 20),
              ),
            ),
            ListView.separated(
              controller: _scrollController,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return ContactDetailsList(
                          contact: const {
                            "name": "Naa Shida",
                            "phone": "1-238-113-6033",
                            "country": "Ghana",
                            "region": "Accra",
                            "email": "Naababy@gmail.com",
                            "image" : "Assets/images/memoji4.jpg",
                            "groups" : "City Gworls",
                          },
                        );
                      }));
                    },
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('Assets/images/memoji4.jpg'),
                    ),
                    title: Text('Naa Shida'),
                    subtitle: Text('+233 205 5673'),
                    trailing: IconButton(
                      onPressed: null,
                      icon: Icon(Icons.more_horiz),
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return Divider(
                    indent: 25,
                    thickness: 2,
                  );
                },
                itemCount: 3),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                "Contacts",
                style: TextStyle(fontSize: 20),
              ),
            ),
            GroupedListView<Map<String, String>, String>(
              shrinkWrap: true,
              elements: data,
              groupBy: (element) => element['name'].toString().substring(0, 1),
              groupSeparatorBuilder: (String groupByValue) => SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    groupByValue.substring(0, 1),
                    textAlign: TextAlign.right,
                    style: const TextStyle(
                        fontWeight: FontWeight.w600, fontSize: 18),
                  ),
                ),
              ),
              itemBuilder: (context, Map<String, String> element) {
                return Column(
                  children: [
                    ListTile(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return ContactDetailsList(contact: element);
                        }));
                      },
                      leading: CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage(
                          '${element['image']}',
                        ),
                      ),
                      title: Text(
                        '${element['name']}',
                        style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                      subtitle: Text('${element['phone']}'),
                      trailing: const IconButton(
                          onPressed: null, icon: Icon(Icons.more_horiz)),
                    ),
                    const Divider(
                      indent: 25,
                      thickness: 2,
                    ),
                  ],
                );
              },
              itemComparator: (item1, item2) =>
                  item1['name']!.compareTo(item2['name']!), // optional
              useStickyGroupSeparators: true, // optional
              floatingHeader: true, // optional
              order: GroupedListOrder.ASC, // optional
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => newContact(),
            ),
          );
        },
        child: const Icon(Icons.add),
        backgroundColor: Colors.grey[600],
      ),
    );
  }
}
