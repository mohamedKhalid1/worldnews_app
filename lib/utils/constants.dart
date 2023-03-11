import 'package:flutter/material.dart';

class Constants {
  static const color1 = Colors.red;
  static const color2 = Colors.blue;
  static const styleTitle =
      TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
  static const styleSubTitle = TextStyle(fontSize: 18);

  static getSnackBar(context, String title, Color color) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(title),
      backgroundColor: color,
    ));
  }
//      List<Widget> getChildren4=[
//           SingleChildScrollView(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   'Page 1',
//                   style: Theme.of(context).textTheme.headline5?.copyWith(
//                         color: Colors.white,
//                       ),
//                 ),
//                 const SizedBox(height: 50.0),
//                 const Text(
//                   '''Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur scelerisque, est ac suscipit interdum, leo lacus ultrices metus, eget tristique metus velit eget nisi. Cras ut sagittis libero, in volutpat erat. Proin luctus turpis nec molestie congue. Nam et mollis augue. Duis ornare odio vel egestas lacinia. Nam luctus venenatis diam sollicitudin elementum. Duis laoreet, mi quis luctus lacinia, nunc mauris auctor turpis, ac condimentum felis augue at purus. Integer eu dolor vehicula odio elementum vulputate vel non neque.
//         Vestibulum et sapien sed quam euismod rutrum. Phasellus molestie dignissim ullamcorper. Donec eleifend sapien egestas tincidunt ornare. Pellentesque elit leo, bibendum nec augue nec, faucibus eleifend nisi. In blandit nulla sit amet congue tincidunt. Etiam dictum ornare justo, vulputate aliquam nisi egestas id. Nulla diam ipsum, pretium vitae leo et, fringilla mollis arcu. Praesent ut ipsum malesuada, posuere quam non, consectetur sem. Aenean velit dolor, laoreet sit amet lacinia quis, porta vitae tortor. Pellentesque scelerisque lacus nec velit finibus pharetra. Donec lacus arcu, consectetur eget nibh ac, viverra mollis nunc. Morbi auctor condimentum odio, ut laoreet neque maximus et. Mauris ut magna ipsum.''',
//                   style: TextStyle(color: Colors.white),
//                 ),
//               ],
//             ),
//           ),
//           SingleChildScrollView(
//             child: Container(
//               color: Color(0xff380036),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     'Page 2',
//                     style: Theme.of(context).textTheme.headline5?.copyWith(
//                           color: Colors.white,
//                         ),
//                   ),
//                   const SizedBox(height: 50.0),
//                   const Text(
//                     '''Duis in tortor nisl. Vestibulum vitae ullamcorper urna. Aliquam at consequat mi, sit amet ultricies mauris. Nam volutpat risus mollis tortor porta volutpat. Fusce sollicitudin felis in interdum finibus. Nam ultrices volutpat posuere. Quisque eget mattis nulla. Cras sit amet consequat erat. Nam consectetur urna sem, eget faucibus quam tincidunt sed. Cras congue diam vitae turpis tristique, ut commodo nunc placerat. Nunc id risus mattis, cursus erat in, dignissim mauris.
//
// Donec ac libero arcu. Pellentesque sollicitudin mi et lectus interdum, sit amet dignissim turpis laoreet. Aenean id sapien at felis fermentum faucibus. Fusce suscipit, odio eget vestibulum rutrum, magna nibh sagittis felis, auctor blandit tortor diam et augue. Etiam sit amet mi fermentum, sollicitudin dolor sit amet, viverra lectus. Curabitur non leo vulputate, gravida urna non, maximus lacus. Maecenas a suscipit lacus. Donec pharetra laoreet lacus, non sagittis ante aliquet eget. Sed fermentum eros a nunc molestie imperdiet. Ut quis massa vitae sem vehicula facilisis at eget eros. Proin facilisis eu dolor eu ultricies. Etiam rhoncus arcu nec diam malesuada, in malesuada ipsum rhoncus. Nunc convallis fermentum purus. Sed lobortis purus sit amet ante blandit pharetra. Cras ut turpis sem. Vivamus vel felis in elit fringilla laoreet.''',
//                     style: TextStyle(color: Colors.white),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           SingleChildScrollView(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   'Page 3',
//                   style: Theme.of(context).textTheme.headline5?.copyWith(
//                         color: Colors.white,
//                       ),
//                 ),
//                 const SizedBox(height: 50.0),
//                 const Text(
//                   '''Phasellus a rutrum lectus. Maecenas turpis nisi, imperdiet non tellus eget, aliquam bibendum urna. Nullam tincidunt aliquam sem, eget finibus mauris commodo nec. Sed pharetra varius augue, id dignissim tortor vulputate at. Nunc sodales, nisl a ornare posuere, dolor purus pulvinar nulla, vel facilisis magna justo id tortor. Aliquam tempus nulla diam, non faucibus ligula cursus id. Maecenas vitae lorem augue. Aliquam hendrerit urna quis mi ornare pharetra. Duis vitae urna porttitor, porta elit a, egestas nibh. Etiam sollicitudin tincidunt sem pellentesque fringilla. Aenean sed mauris non augue hendrerit volutpat. Praesent consectetur metus ex, eu feugiat risus rhoncus sed. Suspendisse dapibus, nunc vel rhoncus placerat, tellus odio tincidunt mi, sed sagittis dui nulla eu erat.''',
//                   style: TextStyle(color: Colors.white),
//                 ),
//               ],
//             ),
//           ),
//           SingleChildScrollView(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   'Page 3',
//                   style: Theme.of(context).textTheme.headline5?.copyWith(
//                         color: Colors.white,
//                       ),
//                 ),
//                 const SizedBox(height: 50.0),
//                 const Text(
//                   '''Phasellus a rutrum lectus. Maecenas turpis nisi, imperdiet non tellus eget, aliquam bibendum urna. Nullam tincidunt aliquam sem, eget finibus mauris commodo nec. Sed pharetra varius augue, id dignissim tortor vulputate at. Nunc sodales, nisl a ornare posuere, dolor purus pulvinar nulla, vel facilisis magna justo id tortor. Aliquam tempus nulla diam, non faucibus ligula cursus id. Maecenas vitae lorem augue. Aliquam hendrerit urna quis mi ornare pharetra. Duis vitae urna porttitor, porta elit a, egestas nibh. Etiam sollicitudin tincidunt sem pellentesque fringilla. Aenean sed mauris non augue hendrerit volutpat. Praesent consectetur metus ex, eu feugiat risus rhoncus sed. Suspendisse dapibus, nunc vel rhoncus placerat, tellus odio tincidunt mi, sed sagittis dui nulla eu erat.''',
//                   style: TextStyle(color: Colors.white),
//                 ),
//               ],
//             ),
//           ),
//           SingleChildScrollView(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   'Page 3',
//                   style: Theme.of(context).textTheme.headline5?.copyWith(
//                         color: Colors.white,
//                       ),
//                 ),
//                 const SizedBox(height: 50.0),
//                 const Text(
//                   '''Phasellus a rutrum lectus. Maecenas turpis nisi, imperdiet non tellus eget, aliquam bibendum urna. Nullam tincidunt aliquam sem, eget finibus mauris commodo nec. Sed pharetra varius augue, id dignissim tortor vulputate at. Nunc sodales, nisl a ornare posuere, dolor purus pulvinar nulla, vel facilisis magna justo id tortor. Aliquam tempus nulla diam, non faucibus ligula cursus id. Maecenas vitae lorem augue. Aliquam hendrerit urna quis mi ornare pharetra. Duis vitae urna porttitor, porta elit a, egestas nibh. Etiam sollicitudin tincidunt sem pellentesque fringilla. Aenean sed mauris non augue hendrerit volutpat. Praesent consectetur metus ex, eu feugiat risus rhoncus sed. Suspendisse dapibus, nunc vel rhoncus placerat, tellus odio tincidunt mi, sed sagittis dui nulla eu erat.''',
//                   style: TextStyle(color: Colors.white),
//                 ),
//               ],
//             ),
//           ),
//           SingleChildScrollView(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   'Page 3',
//                   style: Theme.of(context).textTheme.headline5?.copyWith(
//                         color: Colors.white,
//                       ),
//                 ),
//                 const SizedBox(height: 50.0),
//                 const Text(
//                   '''Phasellus a rutrum lectus. Maecenas turpis nisi, imperdiet non tellus eget, aliquam bibendum urna. Nullam tincidunt aliquam sem, eget finibus mauris commodo nec. Sed pharetra varius augue, id dignissim tortor vulputate at. Nunc sodales, nisl a ornare posuere, dolor purus pulvinar nulla, vel facilisis magna justo id tortor. Aliquam tempus nulla diam, non faucibus ligula cursus id. Maecenas vitae lorem augue. Aliquam hendrerit urna quis mi ornare pharetra. Duis vitae urna porttitor, porta elit a, egestas nibh. Etiam sollicitudin tincidunt sem pellentesque fringilla. Aenean sed mauris non augue hendrerit volutpat. Praesent consectetur metus ex, eu feugiat risus rhoncus sed. Suspendisse dapibus, nunc vel rhoncus placerat, tellus odio tincidunt mi, sed sagittis dui nulla eu erat.''',
//                   style: TextStyle(color: Colors.white),
//                 ),
//               ],
//             ),
//           ),
//         ];
//
//     List<String> getTabs4=
//       ['1', '2', '3', '4', '5', '6'];
//
 }
