import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sliding_clipped_nav_bar/sliding_clipped_nav_bar.dart';
import 'package:todo_app_ui/widgets/category_card.dart';
import 'package:todo_app_ui/widgets/task_item.dart';

import 'add_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: FloatingActionButton(
          onPressed: () {
            setState(() {
              Navigator.push(context, MaterialPageRoute(builder: (context) => AddPage()));
            });
          },
          child: Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.blue,
                  gradient: const LinearGradient(
                      colors: [Colors.blue, Colors.green],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight)),
              child: const Icon(Icons.add, color: Colors.white)),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hello David',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'July 22, 2023',
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                    ],
                  ),
                  ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(
                        'lib/images/profile.png',
                        width: 40,
                      )),
                ],
              ),
            ),
            //SEARCH BAR
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(12)),
                child: const TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.search,
                        size: 30,
                        color: Colors.black,
                      ),
                      border: InputBorder.none,
                      hintText: 'Find your task'),
                ),
              ),
            ),
            const SizedBox(height: 25),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Categories',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'View all',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  )
                ],
              ),
            ),
            const SizedBox(height: 10),
            //HORIZ LIST VIEW
            Container(
              height: 180,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  CategoryCard(
                    title: 'Web Design',
                    projectNumber: 6,
                    pourcentage: 54,
                  ),
                  CategoryCard(
                    title: 'Conception',
                    projectNumber: 2,
                    pourcentage: 12,
                  ),
                  CategoryCard(
                    title: 'Web Development',
                    projectNumber: 12,
                    pourcentage: 60,
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        'My Tasks',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 10),
                      Text(
                        '4',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      )
                    ],
                  ),
                  Text(
                    'View all',
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
                child: ListView(
              children: const [
                TaskItem(
                  title: 'Read a book about UI',
                  firstBeginDate: '09',
                  endDate: '11:00',
                ),
                TaskItem(
                  title: 'Meeting with client',
                  firstBeginDate: '11',
                  endDate: '13:30',
                ),
                TaskItem(
                  title: 'Hangout with friends',
                  firstBeginDate: '09',
                  endDate: '11',
                ),
                TaskItem(
                  title: 'Read a book about UI',
                  firstBeginDate: '09',
                  endDate: '11',
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
