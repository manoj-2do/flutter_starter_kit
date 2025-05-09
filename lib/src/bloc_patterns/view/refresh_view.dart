import 'dart:async';
import 'package:flutter/material.dart';

class RefreshView extends StatefulWidget {
  const RefreshView({
    super.key,
    required this.child,
    this.onRefresh,
    this.notificationPredicate = defaultScrollNotificationPredicate,
    this.displacement = 40.0,
    this.color,
    this.backgroundColor,
    this.semanticsLabel,
    this.semanticsValue,
    this.strokeWidth = RefreshProgressIndicator.defaultStrokeWidth,
    this.edgeOffset = 0.0,
    this.triggerMode = RefreshIndicatorTriggerMode.onEdge,
  });

  final Widget child;
  final VoidCallback? onRefresh;
  final ScrollNotificationPredicate notificationPredicate;
  final double displacement;
  final Color? color;
  final Color? backgroundColor;
  final String? semanticsLabel;
  final String? semanticsValue;
  final double strokeWidth;
  final double edgeOffset;
  final RefreshIndicatorTriggerMode triggerMode;

  @override
  State<RefreshView> createState() => _RefreshViewState();
}

class _RefreshViewState extends State<RefreshView> {
  Completer<void>? _refreshCompleter;

  @override
  Widget build(BuildContext context) {
    _refreshCompleter?.complete();
    _refreshCompleter = Completer();

    return RefreshIndicator(
      backgroundColor: widget.backgroundColor,
      color: widget.color,
      semanticsLabel: widget.semanticsLabel,
      semanticsValue: widget.semanticsValue,
      strokeWidth: widget.strokeWidth,
      edgeOffset: widget.edgeOffset,
      triggerMode: widget.triggerMode,
      displacement: widget.displacement,
      onRefresh: _refresh,
      notificationPredicate: widget.notificationPredicate,
      child: widget.child,
    );
  }

  Future<void> _refresh() async {
    widget.onRefresh?.call();
    return _refreshCompleter?.future;
  }
}
