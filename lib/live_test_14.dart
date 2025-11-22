import 'package:flutter/material.dart';
class LiveTest14 extends StatefulWidget {
  const LiveTest14({super.key});

  @override
  State<LiveTest14> createState() => _LiveTest14State();
}

class _LiveTest14State extends State<LiveTest14> {

  final List<Map<String, dynamic>> foodList = [
    {
      "id": 1,
      "title": "Chicken Biryani",
      "description": "Aromatic basmati rice cooked with spiced chicken.",
      "calories": 550
    },
    {
      "id": 2,
      "title": "Beef Curry",
      "description": "Slow-cooked beef in a rich curry gravy.",
      "calories": 620
    },
    {
      "id": 3,
      "title": "Vegetable Khichuri",
      "description": "Rice and lentils cooked with mixed vegetables.",
      "calories": 400
    },
    {
      "id": 4,
      "title": "Pasta Alfredo",
      "description": "Creamy white sauce pasta with parmesan cheese.",
      "calories": 480
    },
    {
      "id": 5,
      "title": "Grilled Sandwich",
      "description": "Toasted sandwich filled with cheese and vegetables.",
      "calories": 310
    },
    {
      "id": 6,
      "title": "Chicken Fry",
      "description": "Crispy deep-fried chicken with spices.",
      "calories": 530
    },
    {
      "id": 7,
      "title": "Egg Curry",
      "description": "Boiled eggs cooked in masala gravy.",
      "calories": 450
    },
    {
      "id": 8,
      "title": "Fruit Salad",
      "description": "Mixed seasonal fruits served chilled.",
      "calories": 250
    },
    {
      "id": 9,
      "title": "Fried Rice",
      "description": "Rice fried with vegetables, egg, and soy sauce.",
      "calories": 500
    },
    {
      "id": 10,
      "title": "Mango Lassi",
      "description": "Sweet yogurt drink blended with ripe mango.",
      "calories": 300
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
        title: Text('Food Recipes List',  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
      ),
      body: ListView.builder(
        itemCount: foodList.length,
        itemBuilder: (context, index) {
          final item = foodList[index];
          return Card(
            margin: EdgeInsets.all(10),
            child: ListTile(
              leading: CircleAvatar(
                child: Text(item['id'].toString()),
              ),
              title: Text(item['title'], style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              subtitle: Text(
                  "Description: ${item['description']} •\n Calories: ${item['calories']}",
                style: TextStyle(fontSize: 20),
              ),

            ),
          );
        },
      ),
    );
  }
}
