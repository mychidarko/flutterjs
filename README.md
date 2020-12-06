# flutterjs

flutterjs is a flutter boilerplate based on web frameworks and libraries like CRA, Vue CLI apps and even ordinary web setups.

The whole idea is to create some level of familiarity for web, especially JavaScript developers.

## Getting Started

- Clone this project.
- Search and replace all occurances of `flutterjs` with the name of your project
- Add your screens (routes/pages) in `lib/router/routes.dart`
- Configure your app styles/theme in `lib/assets/styles`
- Add and remove screens (pages) in `lib/screens`
- General widgets (components) go in `lib/widgets`, screen based widgets in `lib\screens\{screen}\widgets`

## Routing

Routing with flutterjs is really simple, since all the pressing configuration has already been done for you, all that's left is for you to define your own routes (screens). This is also simple, as it follows a simple JS approach heavily inspired by Vue. In your `routes.dart` file, you should have something like this:

```dart
List<Map<String, dynamic>> screens(params) {
  // create routes List(array)
  return [
    {
      'name': HomeRoute,
      'screen': Home(),
    },
    {
      'name': ProfileRoute,
      'screen': Profile(),
    },
    {
      'name': '*',
      'screen': Error(),
    },
  ];
}
```

The `screens` method is where you define all your screens, it should return a `List`(array) of `Maps`(Objects).

```dart
{
  'name': HomeRoute,
  'screen': Home(),
},
```

`name` is the route handler, sort of and `screen` is the screen to load for that route.

Switching to a different screen is quite easy, all you need to do is to call the `routeTo` method.

```dart
GestureDetector(
  child: Text('Go To Profile Screen'),
  onTap: () => routeTo(context, ProfileRoute, {}),
)
```

In some cases, you might want to pass a variable into a "route", that's simple! You simply need to pass whatever variable you want into the third parameter of `routeTo`

```dart
GestureDetector(
  child: Text('Go To Profile Screen'),
  onTap: () => routeTo(context, ProfileRoute, {'id': 1}),
)
```

Now, you just need to pass it into the route list

```dart
{
  'name': ProfileRoute,
  'screen': Profile($params['id']),
},
```

Finally, you include it in the Screen's constructor, so it knows it's supposed to look for it on load.

```dart
class LocationDetail extends StatelessWidget {
  // Set variable
  final int _locationID;

  // Set constructor variable to class variable
  LocationDetail(this._locationID);

  @override
  Widget build(BuildContext context) {
    // use variable
    final location = Location.fetchByID(_locationID);
    ...
```
