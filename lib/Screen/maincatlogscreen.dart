import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class Main_CatLog_Screen extends StatelessWidget {


  List<Map<String,dynamic>> catPro = [
    {
      'catImg' : 'assets/images/catgory/womens.jpg',
      'catName' : "Women's Fashion",
    },
  {
      'catImg' : 'assets/images/catgory/men.jpg',
      'catName' : "Men's Fashion",
    },
    {
      'catImg' : 'assets/images/catgory/mobile.jpg',
      'catName' : "Mobile",
    },
    {
      'catImg' : 'assets/images/catgory/shose.jpg',
      'catName' : "Shouse",
    },
    {
      'catImg' : 'assets/images/catgory/jewelery.jpg',
      'catName' : "Jewelery",
    },
    {
      'catImg' : 'assets/images/catgory/beauty.jpg',
      'catName' : "Beauty",
    }
  ];
  List<Map<String,dynamic>> discatPro = [
    {
      'discatImg' : 'assets/images/subcatlog/Img_blu1.jpg',
      'discatName' : "Earbuds",
    },{
      'discatImg' : 'assets/images/subcatlog/img_sweter.jpg',
      'discatName' : "Women's Sweter",
    },{
      'discatImg' : 'assets/images/subcatlog/Img_hphone.jpg',
      'discatName' : "Wireless Headphone",
    },{
      'discatImg' : 'assets/images/subcatlog/img_whitetshirt.jpg',
      'discatName' : "Men' T-shirt",
    },{
      'discatImg' : 'assets/images/subcatlog/img_swatch.jpg',
      'discatName' : "Smart Watch",
    },{
      'discatImg' : 'assets/images/subcatlog/img_women.jpg',
      'discatName' : "T-shirt For Women",
    },{
      'discatImg' : 'assets/images/subcatlog/women1.jpg',
      'discatName' : "Green T-shirts",
    },

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton(
              onPressed: () {}, icon: Icon(Ionicons.grid_outline), iconSize: 20),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications_none_sharp,
              ),
              iconSize: 20,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 10, 16, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(left: 8,right: 8),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(22),
                    border: Border.all(color: Colors.white),
                    boxShadow: [BoxShadow(blurRadius: 2,color: Colors.grey)]
                  ),
                  child: Row(
                    children: [
                      Icon(Ionicons.search,color: Colors.grey,),
                      SizedBox(width: 12,),
                      Flexible(
                        flex: 4,
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                              hintText: 'Search..',
                              hintStyle: TextStyle(fontSize: 16),
                        ),
                        ),
                      ),
                      Container(margin: EdgeInsets.symmetric(horizontal: 5),
                          width: 1.5,height: 25, color: Colors.grey),

                      Icon(Ionicons.options_outline),
                    ],
                  ),
                ),
              Container(
                child: Image.asset('assets/images/sale.png',fit: BoxFit.cover,),
                margin: EdgeInsets.only(top: 16),
                height: 200,
                clipBehavior: Clip.antiAlias,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [BoxShadow(blurRadius: 2, color: Colors.black26)],
                ),
              ),
              SizedBox(
                height: 120,
                width: double.infinity,
                child: ListView.builder( scrollDirection: Axis.horizontal,itemCount: catPro.length,itemBuilder: (context, index) {
                  return
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: double.infinity,
                        width: 60,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CircleAvatar(
                              radius: 28,
                             backgroundImage: AssetImage(catPro[index]['catImg'],),
                            ),
                            Text(catPro[index]['catName'],maxLines: 2,textAlign: TextAlign.center,)
                          ],
                                        ),
                      ),
                    );
                }
              ),
              ),

              Text(
                'Special For You',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 300,
                width: double.infinity,
                child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: 2/2.6),
                    itemCount: discatPro.length,
                    itemBuilder: (context, index) {
                      return
                          Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                              boxShadow: [BoxShadow(blurRadius: 2, color: Colors.black26)],),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [Stack(children: [
                                Center(child: Image.asset(discatPro[index]['discatImg'],fit: BoxFit.fitHeight,height: 180,)),
                                ClipRRect(clipBehavior: Clip.antiAlias,borderRadius: BorderRadius.circular(22),child: Image.asset('assets/images/heart.jpg',height: 30,))
                              ],
                              ),
                                Text(discatPro[index]['discatName']),
                                Text("Price : 120.00"),
                               ]
                                ),

                            );


                    },)
              )

            ],
          ),
        ),
      ),
    );
  }
}
