// Build navigator
import 'package:flutter/widgets.dart';

/// Navigate to a different screen. *Inspired by vue router*
void routeTo(BuildContext context, String route, {Object params}) {
  Navigator.pushNamed(context, route, arguments: params);
}

void routeBack(BuildContext context) {
  Navigator.pop(context);
}

void pushToRoute(BuildContext context, Route route) {
  Navigator.push(context, route);
}

GestureDetector linkTo(BuildContext context, String route,
    {Object params, child}) {
  return GestureDetector(
    child: child,
    onTap: () => routeTo(context, route, params: params),
  );
}
