// import screens
import '../screens/error/error.dart';
import '../screens/login/login.dart';
import '../screens/register/register.dart';
import '../screens/home/home.dart';
import '../screens/movie/movie.dart';
import '../screens/movies/movies.dart';
import '../screens/show/show.dart';
import '../screens/shows/shows.dart';
import '../screens/bookmarks/bookmarks.dart';
import '../screens/profile/profile.dart';

// name all routes. Named routes can be called
// as the route name when using routeTo
const HomeRoute = '/';
const ProfileRoute = '/profile';
const BookmarksRoute = '/bookmarks';
const MovieRoute = '/movie';
const MoviesRoute = '/movies';
const ShowRoute = '/show';
const ShowsRoute = '/shows';
const LoginRoute = '/auth/login';
const RegisterRoute = '/auth/register';

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
      'name': LoginRoute,
      'screen': Login(),
    },
    {
      'name': RegisterRoute,
      'screen': Register(),
    },
    {
      'name': BookmarksRoute,
      'screen': Bookmarks(),
    },
    {
      'name': MovieRoute,
      'screen': Movie(),
    },
    {
      'name': MoviesRoute,
      'screen': Movies(),
    },
    {
      'name': ShowRoute,
      'screen': Show(),
    },
    {
      'name': ShowsRoute,
      'screen': Shows(),
    },
    {
      'name': ProfileRoute,
      'screen': Profile(params('id')),
    },
    {
      'name': '*',
      'screen': Error(),
    },
  ];
}
