import 'package:equatable/equatable.dart';

class EventModel extends Equatable {
  const EventModel({
    required this.eventId,
    required this.title,
    required this.duration,
    required this.day,
    required this.images,
    required this.about,
    required this.date,
    required this.location,
    required this.author,
    required this.authorImage,
    required this.categoryName,
    required this.ticketType,
    this.regularPrice,
    this.silverPrice,
    this.goldPrice,
  });

  final int eventId;
  final String title;
  final String duration;
  final String day;
  final String images;
  final String about;
  final String date;
  final String location;
  final String author;
  final String authorImage;
  final String categoryName;
  final String ticketType;
  final int? regularPrice;
  final int? silverPrice;
  final int? goldPrice;
  @override
  List<Object?> get props => [eventId];
}
