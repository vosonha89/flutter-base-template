import 'package:flutter/material.dart';
import 'components/header.component.dart';
import 'layout.logic.dart';

/// A stateful widget that serves as a layout container for child widgets.
///
/// This component provides a basic layout structure using a Column arrangement
/// and ensures content is displayed within a safe area.
class LayoutComponent extends StatefulWidget {
  final String? title;
  final List<Widget> children;

  const LayoutComponent({super.key, this.title, required this.children});

  @override
  LayoutWidgetState createState() => LayoutWidgetState();
}

/// State class for the LayoutComponent widget.
///
/// Manages the state and builds the widget tree for the layout structure.
class LayoutWidgetState extends LayoutLogic {
  @override
  /// Builds the widget tree for the layout component.
  ///
  /// Returns a SafeArea widget containing a Column with the provided children.
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Column(
              children: [
                if (isLoading) Text('21321'),
                // Container(
                //   color: Colors.black.withValues(alpha: 0.5),
                //   child: Center(child: CircularProgressIndicator()),
                // ),
                if (widget.title != null)
                  HeaderComponent(widget.title.toString()),
                for (var widget in widget.children) widget,
              ],
            ),
          ],
        ),
      ),
    );
  }
}
