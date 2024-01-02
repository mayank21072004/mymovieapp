import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Image.asset('assests/logoo.png',
        fit: BoxFit.cover,
        height: 45,
        filterQuality: FilterQuality.high,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
         physics: BouncingScrollPhysics(),
         child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(5),
              child: Center(
                child: Text(
                  'TRENDING MOVIES',
                  style: GoogleFonts.aBeeZee(fontSize: 20,fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: CarouselSlider.builder(
                itemCount: 10,
                options: CarouselOptions(
                  height: 300,
                  viewportFraction: 0.55,
                  enlargeCenterPage: true,
                  pageSnapping: true,
                  autoPlay: true,
                  autoPlayCurve: Curves.fastEaseInToSlowEaseOut,
                  autoPlayAnimationDuration: Duration(milliseconds: 4000),

                ),
                itemBuilder: (context, index, pageviewindex) => ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                  height: 300,
                  width: 200,
                  color: Colors.yellow,
                                ),
                )),
            ),
            SizedBox(height: 16),
            Center(
              child: Text(
                  'TOP RATED MOVIES',
                  style: GoogleFonts.aBeeZee(fontSize: 20,fontWeight: FontWeight.bold),
                ),
            ),
              const SizedBox(height: 10),
              SizedBox(
                height: 350,
                width: double.infinity,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Container(
                          height: 300,
                          width: 220,
                          color: Colors.yellow,
                        ),
                      ),
                    );
                  },
                  ),
              ),

              SizedBox(height: 16),
            Center(
              child: Text(
                  'MOVIES PLAYED',
                  style: GoogleFonts.aBeeZee(fontSize: 20,fontWeight: FontWeight.bold),
                ),
            ),
              const SizedBox(height: 10),
              SizedBox(
                height: 350,
                width: double.infinity,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Container(
                          height: 300,
                          width: 220,
                          color: Colors.yellow,
                        ),
                      ),
                    );
                  },
                  ),
              ),

          ],
         ),
      ),
    );
  }
}