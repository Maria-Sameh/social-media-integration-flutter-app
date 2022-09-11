import 'package:flutter/material.dart';

class MessengerScreen extends StatelessWidget {
  const MessengerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        titleSpacing: 20.0,
        title:Row (
          children: [
            CircleAvatar(
              radius: 20.0,
              backgroundImage:NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR3F3e5C2_4KVWpSSvmBDVb8iPGyRnDB5DVPA&usqp=CAU'),
            ),
            SizedBox(
              width: 15.0,
            ),
            Text(
              'Chats',
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.black,

              ),
            ),
            
          ],

        ),
        actions: [
          IconButton(onPressed: (){},
              icon: CircleAvatar(
                radius: 15.0,
                backgroundColor: Colors.black38,
                child: Icon(
                  Icons.camera_alt,
                  size: 16.0,
                  color: Colors.white,
                ),
              ),
          ),
          IconButton(onPressed: (){},
            icon: CircleAvatar(
              radius: 15.0,
              backgroundColor: Colors.black38,
              child: Icon(
                Icons.edit,
                size: 20.0,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50.0,
                  ),
                color: Colors.grey[300],
              ),
              padding: const EdgeInsets.all(5.0),

              child: Row(
                children: [
                  Icon(
                    Icons.search,
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Text(
                      'Search',
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    width: 60,
                    child: Column(

                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage:NetworkImage('https://w7.pngwing.com/pngs/193/660/png-transparent-computer-icons-woman-avatar-avatar-girl-thumbnail.png'),
                            ),
                            CircleAvatar(
                              radius: 9.0,
                              backgroundColor: Colors.white,

                            ),
                            CircleAvatar(
                              radius: 7.0,
                              backgroundColor: Colors.green,

                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                            'Sarah Esmat',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),

                      ],
                    ),
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Container(
                    width: 60,
                    child: Column(

                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage:NetworkImage('https://img.lovepik.com/free_png/28/75/03/20X58PICK6abardeaea58PIC3_PIC2018.png_860.png'),
                            ),
                            CircleAvatar(
                              radius: 9.0,
                              backgroundColor: Colors.white,

                            ),
                            CircleAvatar(
                              radius: 7.0,
                              backgroundColor: Colors.green,

                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          'Mona Mazn',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),

                      ],
                    ),
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Container(
                    width: 60,
                    child: Column(

                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage:NetworkImage('https://img.freepik.com/premium-vector/illustration-young-brownhaired-girl-cartoon-woman-points-left-with-her-hands-character-advertising-design-bright-image-businesswoman-profile-avatar-pointer-presentation_15870-733.jpg?w=2000'),
                            ),
                            CircleAvatar(
                              radius: 9.0,
                              backgroundColor: Colors.white,

                            ),
                            CircleAvatar(
                              radius: 7.0,
                              backgroundColor: Colors.green,

                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          'Sarah Shahier',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),

                      ],
                    ),
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Container(
                    width: 60,
                    child: Column(

                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage:NetworkImage('https://images.all-free-download.com/images/graphiclarge/attractive_woman_avatar_template_cartoon_character_sketch_6849756.jpg'),
                            ),
                              CircleAvatar(
                              radius: 9.0,

                              backgroundColor: Colors.white,

                            ),
                            CircleAvatar(
                              radius: 7.0,
                              backgroundColor: Colors.green,

                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          'Karin Ashraf',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),

                      ],
                    ),
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Container(
                    width: 60,
                    child: Column(

                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage:NetworkImage('https://static.vecteezy.com/system/resources/previews/003/563/444/original/kids-faces-child-expression-faces-little-boys-girls-cartoon-avatars-collection-free-vector.jpg'),
                            ),
                            CircleAvatar(
                              radius: 9.0,

                              backgroundColor: Colors.white,

                            ),
                            CircleAvatar(
                              radius: 7.0,
                              backgroundColor: Colors.green,

                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          'Balalikaa',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),

                      ],
                    ),
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Container(
                    width: 60,
                    child: Column(

                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage:NetworkImage('https://img.freepik.com/premium-vector/woman-girl-female-cartoon-avatar-icon_25030-13347.jpg?w=2000'),
                            ),
                            CircleAvatar(
                              radius: 9.0,

                              backgroundColor: Colors.white,

                            ),
                            CircleAvatar(
                              radius: 7.0,
                              backgroundColor: Colors.green,

                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          'Magy Emad',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),

                      ],
                    ),
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Container(
                    width: 60,
                    child: Column(

                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage:NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTRucUnmqNIiArZaLPhH1mkCK6LtW3LAu2i7Q&usqp=CAU'),
                            ),
                            CircleAvatar(
                              radius: 9.0,

                              backgroundColor: Colors.white,

                            ),
                            CircleAvatar(
                              radius: 7.0,
                              backgroundColor: Colors.green,

                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          'Tony Ragy',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),

                      ],
                    ),
                  ),

                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height:30.0 ,
                    ),
                    Row(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage:NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTRucUnmqNIiArZaLPhH1mkCK6LtW3LAu2i7Q&usqp=CAU'),
                            ),
                            CircleAvatar(
                              radius: 9.0,

                              backgroundColor: Colors.white,

                            ),
                            CircleAvatar(
                              radius: 7.0,
                              backgroundColor: Colors.green,

                            ),
                          ],
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Tony Ragy',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.0
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      'HAHAHAHAHAHAHAHHAHAHAHAHAHAHA',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10.0,),
                                    child: Container(
                                      width: 7.0,
                                      height: 7.0,
                                      decoration: BoxDecoration(
                                        color: Colors.blue,
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                  ),
                                  Text(
                                      '2:30 PM'
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage:NetworkImage('https://img.freepik.com/premium-vector/isolated-white-flat-vector-cartoon-character-illustration-boy-people-icon-afro-man-portrait-avatar-head-indian-user-web-sites-applications-stock-design_599742-77.jpg?w=2000'),
                            ),
                            CircleAvatar(
                              radius: 9.0,

                              backgroundColor: Colors.white,

                            ),
                            CircleAvatar(
                              radius: 7.0,
                              backgroundColor: Colors.green,

                            ),
                          ],
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Mayer Emad',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.0
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      'ya Handsaaaaaaaaaa',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10.0,),
                                    child: Container(
                                      width: 7.0,
                                      height: 7.0,
                                      decoration: BoxDecoration(
                                        color: Colors.blue,
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                  ),
                                  Text(
                                      '1:30 PM'
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage:NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTVznlt8tvVLtXIZVHKvxDApcpftlmVaTVapQ&usqp=CAU'),
                            ),
                            CircleAvatar(
                              radius: 9.0,

                              backgroundColor: Colors.white,

                            ),
                            CircleAvatar(
                              radius: 7.0,
                              backgroundColor: Colors.green,

                            ),
                          ],
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Samer Bahaa',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.0
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      'AAA TAMORAAAAA',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10.0,),
                                    child: Container(
                                      width: 7.0,
                                      height: 7.0,
                                      decoration: BoxDecoration(
                                        color: Colors.blue,
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                  ),
                                  Text(
                                      '2:30 PM'
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage:NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSaqnDo4Mn8wAxv3Jc9GHc1XfhB6_JUh3uELQ&usqp=CAU'),
                            ),
                            CircleAvatar(
                              radius: 9.0,

                              backgroundColor: Colors.white,

                            ),
                            CircleAvatar(
                              radius: 7.0,
                              backgroundColor: Colors.green,

                            ),
                          ],
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'joy Brakat',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.0
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      'Jojo ',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10.0,),
                                    child: Container(
                                      width: 7.0,
                                      height: 7.0,
                                      decoration: BoxDecoration(
                                        color: Colors.blue,
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                  ),
                                  Text(
                                      '2:30 PM'
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage:NetworkImage('https://i.pinimg.com/736x/fc/ab/4b/fcab4b85eda45cef74802d8823a84e7a.jpg'),
                            ),
                            CircleAvatar(
                              radius: 9.0,

                              backgroundColor: Colors.white,

                            ),
                            CircleAvatar(
                              radius: 7.0,
                              backgroundColor: Colors.green,

                            ),
                          ],
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Marvel Reda',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.0
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      'I miss you ',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10.0,),
                                    child: Container(
                                      width: 7.0,
                                      height: 7.0,
                                      decoration: BoxDecoration(
                                        color: Colors.blue,
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                  ),
                                  Text(
                                      '2:30 PM'
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage:NetworkImage('https://img.freepik.com/premium-vector/woman-girl-female-cartoon-avatar-icon_25030-13347.jpg?w=2000'),
                            ),
                            CircleAvatar(
                              radius: 9.0,

                              backgroundColor: Colors.white,

                            ),
                            CircleAvatar(
                              radius: 7.0,
                              backgroundColor: Colors.green,

                            ),
                          ],
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Magy Emad',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.0
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      'HAHAHAHAHAHAHAHHAHAHAHAHAHAHA',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10.0,),
                                    child: Container(
                                      width: 7.0,
                                      height: 7.0,
                                      decoration: BoxDecoration(
                                        color: Colors.blue,
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                  ),
                                  Text(
                                      '2:30 PM'
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage:NetworkImage('https://img.freepik.com/premium-vector/woman-girl-female-cartoon-avatar-icon_25030-13347.jpg?w=2000'),
                            ),
                            CircleAvatar(
                              radius: 9.0,

                              backgroundColor: Colors.white,

                            ),
                            CircleAvatar(
                              radius: 7.0,
                              backgroundColor: Colors.green,

                            ),
                          ],
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Magy Emad',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.0
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      'HAHAHAHAHAHAHAHHAHAHAHAHAHAHA',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10.0,),
                                    child: Container(
                                      width: 7.0,
                                      height: 7.0,
                                      decoration: BoxDecoration(
                                        color: Colors.blue,
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                  ),
                                  Text(
                                      '2:30 PM'
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage:NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSaqnDo4Mn8wAxv3Jc9GHc1XfhB6_JUh3uELQ&usqp=CAU'),
                            ),
                            CircleAvatar(
                              radius: 9.0,

                              backgroundColor: Colors.white,

                            ),
                            CircleAvatar(
                              radius: 7.0,
                              backgroundColor: Colors.green,

                            ),
                          ],
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'joy Brakat',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.0
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      'Jojo ',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10.0,),
                                    child: Container(
                                      width: 7.0,
                                      height: 7.0,
                                      decoration: BoxDecoration(
                                        color: Colors.blue,
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                  ),
                                  Text(
                                      '2:30 PM'
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage:NetworkImage('https://img.freepik.com/premium-vector/woman-girl-female-cartoon-avatar-icon_25030-13347.jpg?w=2000'),
                            ),
                            CircleAvatar(
                              radius: 9.0,

                              backgroundColor: Colors.white,

                            ),
                            CircleAvatar(
                              radius: 7.0,
                              backgroundColor: Colors.green,

                            ),
                          ],
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Magy Emad',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.0
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      'HAHAHAHAHAHAHAHHAHAHAHAHAHAHA',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10.0,),
                                    child: Container(
                                      width: 7.0,
                                      height: 7.0,
                                      decoration: BoxDecoration(
                                        color: Colors.blue,
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                  ),
                                  Text(
                                      '2:30 PM'
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage:NetworkImage('https://img.freepik.com/premium-vector/woman-girl-female-cartoon-avatar-icon_25030-13347.jpg?w=2000'),
                            ),
                            CircleAvatar(
                              radius: 9.0,

                              backgroundColor: Colors.white,

                            ),
                            CircleAvatar(
                              radius: 7.0,
                              backgroundColor: Colors.green,

                            ),
                          ],
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Magy Emad',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.0
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      'HAHAHAHAHAHAHAHHAHAHAHAHAHAHA',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10.0,),
                                    child: Container(
                                      width: 7.0,
                                      height: 7.0,
                                      decoration: BoxDecoration(
                                        color: Colors.blue,
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                  ),
                                  Text(
                                      '2:30 PM'
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                  ],
                ),
              ),
            ),




          ],
        ),
      ),


    );
  }



}
