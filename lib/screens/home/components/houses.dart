import 'package:flutter/material.dart';
import 'package:hfh1/constants/constants.dart';
import 'package:hfh1/data/data.dart';
import 'package:hfh1/model/house.dart';


class Houses extends StatefulWidget {
  const Houses({Key? key}) : super(key: key);

  @override
  _HousesState createState() => _HousesState();
}

class _HousesState extends State<Houses> {
  Widget _buildHouse(BuildContext context,int index){
    Size size= MediaQuery.of(context).size;
    House house=houseList[index];

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: appPadding,vertical: appPadding/2),
          child: Container(
            height: 250,
            child: Column(
             children: [
               Stack(
                 children: [
                 ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                   child: Image(
                  height:180,
                  width: size.width,
                  fit: BoxFit.cover,
                  image: AssetImage(house.imageUrl),
                ),
               ),
                 Positioned(
                   right: appPadding /2,
                   top: appPadding /2,
                    child: Container(
                      decoration: BoxDecoration(
                      color:white,
                      borderRadius: BorderRadius.circular(15)),
                      child: IconButton(

                       icon: house.isFav
                        ? Icon(
                        Icons.favorite_rounded,
                        color: red,
                       ) :
                        Icon(
                        Icons.favorite_rounded,
                        color: black,
                       ),
                       onPressed: (){
                         setState(() {
                           house.isFav =! house.isFav;

                       });
                     },



                  ),
                  ),
              ),

            ],
          ),
        ],
      ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Expanded(child: ListView.builder(
      physics: BouncingScrollPhysics(),


      itemBuilder:(context, index){
        return _buildHouse(context,index);
      },
    ),);
  }
}
