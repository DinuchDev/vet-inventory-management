import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  HomeView({super.key});

  @override
  final HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false, // Remove the back button
          title: Row(
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('assets/images/avatar-profile.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Hello, Bunneang'),
                    Text('My shop', style: TextStyle(fontSize: 12)),
                  ],
                ),
              ),
            ],
          ),
          actions: [IconButton(icon: Icon(Icons.notifications), onPressed: () {})],
          bottom: TabBar(
            tabs: [
              Tab(text: 'Dashboard'),
              Tab(text: 'Getting Started'),
              Tab(text: 'Announcements'),
              Tab(text: 'Recent Updates'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            LayoutBuilder(
              builder: (context, constraints) {
                if (constraints.maxWidth > 600) {
                  // Web layout
                  return SingleChildScrollView(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Sales Activity', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                        SizedBox(height: 10),
                        GridView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10,
                            childAspectRatio: 2,
                          ),
                          itemCount: controller.salesActivity.length,
                          itemBuilder: (context, index) {
                            String key = controller.salesActivity.keys.elementAt(index);
                            return Obx(() => Home(
                              title: key,
                              value: controller.salesActivity[key].toString(),
                              subtitle: '',
                            ));
                          },
                        ),
                        SizedBox(height: 20),
                        Row(
                          children: [
                            Expanded(
                              child: Obx(() => Home(
                                title: 'Product Details',
                                value: controller.productDetails['Low Stock Items'].toString(),
                                subtitle: 'Low Stock Items',
                              )),
                            ),
                            SizedBox(width: 10),
                            Expanded(
                              child: Home(
                                title: 'Top Selling Items',
                                value: 'No items',
                                subtitle: 'This Month',
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                } else {
                  // Mobile layout
                  return SingleChildScrollView(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Sales Activity', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                        SizedBox(height: 10),
                        GridView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10,
                            childAspectRatio: 2,
                          ),
                          itemCount: controller.salesActivity.length,
                          itemBuilder: (context, index) {
                            String key = controller.salesActivity.keys.elementAt(index);
                            return Obx(() => Home(
                              title: key,
                              value: controller.salesActivity[key].toString(),
                              subtitle: '',
                            ));
                          },
                        ),
                        SizedBox(height: 20),
                        Obx(() => Home(
                          title: 'Product Details',
                          value: controller.productDetails['Low Stock Items'].toString(),
                          subtitle: 'Low Stock Items',
                        )),
                        SizedBox(height: 10),
                        Home(
                          title: 'Top Selling Items',
                          value: 'No items',
                          subtitle: 'This Month',
                        ),
                      ],
                    ),
                  );
                }
              },
            ),
            Center(child: Text('Getting Started Page')),
            Center(child: Text('Announcements Page')),
            Center(child: Text('Recent Updates Page')),
          ],
        ),
      ),
    );
  }
}

class Home extends StatelessWidget {
  final String title;
  final String value;
  final String subtitle;

  const Home({super.key, required this.title, required this.value, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              SizedBox(height: 10),
              Text(value, style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.blue)),
              SizedBox(height: 5),
              Text(subtitle, style: TextStyle(color: Colors.grey)),
            ],
          ),
        ),
      ),
    );
  }
}