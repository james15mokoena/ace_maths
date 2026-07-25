import 'package:flutter/material.dart';

/// Encapsulates the name of the topic and its image.
class TopicModel {
  /// The name of the topic.
  final String name;

  /// The image of the topic.
  final Image? image;

  /// An example of a problem within the topic.
  final Widget example;

  final Color? color;

  final String targetRoute;

  /// Creates a [TopicModel] with the given [name] and [image].
  TopicModel({
    required this.name,
    required this.example,
    this.image,
    this.color,
    required this.targetRoute,
  });
}
