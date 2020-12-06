// import screens
import '../screens/error/error.dart';
import '../screens/home/home.dart';
import '../screens/profile/profile.dart';

// name all routes. Named routes can be called
// as the route name when using routeTo
const HomeRoute = '/';
const ProfileRoute = '/profile';

// Add all your app routes here, the router has already been configured for you
// Params are variables passed into the route from another screen
List<Map<String, dynamic>> screens(params) {
  // create routes List(array)
  return [
    {
      'name': HomeRoute,
      'screen': Home(),
    },
    {
      'name': ProfileRoute,
      'screen': Profile(params['id']),
    },
    {
      'name': '*',
      'screen': Error(),
    },
  ];
}
