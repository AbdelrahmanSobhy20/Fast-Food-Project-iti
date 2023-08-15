import 'package:fisrtapp/dio/apiProvider.dart';
import 'package:flutter/material.dart';
import '../dio/model/storiesModel.dart';

class Messenger extends StatefulWidget {
  const Messenger({Key? key}) : super(key: key);

  @override
  State<Messenger> createState() => _Messenger();
}


class _Messenger extends State<Messenger> {
  SuccessStories? successStories ;
  bool loading = true;
  getData()async{
successStories =await ApiProvider().getStories();
setState(() {
  loading=false;
});}
@override
    void initState() {
    super.initState();
    getData();
    // Add code after super
    }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          elevation: 0,
          title: Row(
            children: const [
              Icon(Icons.menu, size: 35),
              SizedBox(
                width: 125,
              ),
              Text("Chats", style: TextStyle(fontSize: 25),),
              SizedBox(
                width: 115,
              ),
              Icon(Icons.create, size: 35),
            ],
          ),
        ),
        body:  loading ? const Center(child: CircularProgressIndicator(color: Colors.white,)):
            ListView.separated(
                  // shrinkWrap: true,
                  // physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => builderUserItem(successStory: successStories!.model![index], index: index),
                  separatorBuilder: (context, index) =>
                  const SizedBox(
                    height: 10,
                  ),
                  itemCount: successStories!.model!.length,
                ),
            );
  }
  Widget builderUserItem({required Model successStory , required int index}) =>
    Row(
      children: [
        Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: [ CircleAvatar(
              radius: 32.0,
              child: Text("${successStory.id}"),
            ),
              const Padding(
                  padding: EdgeInsetsDirectional.only(
                    bottom: 3,
                    end: 3,
                  ),
                  child: CircleAvatar(
                    radius: 7,
                    backgroundColor: Colors.green,
                  ))
            ]
        ),
        const SizedBox(width: 16,),
        Expanded(
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("${successStory.title}", style: const TextStyle(
              fontWeight:FontWeight.bold,
              color: Colors.white
            ),),
            const SizedBox(
              height: 10,
            ),
            Text("${successStory.createdAt}", style: const TextStyle(
                color: Colors.white
            ),),
          ],
        ),)
      ],
    );
  }










// Widget story() {
//   return Container(
//       width: 50,
//       child: Column(
//         children: [
//           Stack(
//               alignment: AlignmentDirectional.bottomEnd,
//               children: const [ CircleAvatar(
//                 radius: 38.0,
//                 backgroundImage: NetworkImage(
//                     "https://th.bing.com/th/id/OIP.3zQuSczNU1NJTqWWLrfNZwAAAA?pid=ImgDet&rs=1"
//                 ),
//               ),
//                 Padding(
//                     padding: EdgeInsetsDirectional.only(
//                       bottom: 3,
//                       end: 3,
//                     ),
//                     child: CircleAvatar(
//                       radius: 7,
//                       backgroundColor: Colors.green,
//                     ))
//               ]
//           ),
//           const SizedBox(
//             height: 6,
//           ),
//           const Text("lionel Messi", style: TextStyle(color: Colors.white),),
//         ],
//       )
//   );
// }
