//***  AUTO-GENERATED FILE - DO NOT MODIFY ***//

import 'model_base.dart';
import 'presentation.dart';
import 'attachment.dart';

class PresentationMedia implements ToJson, IdString {
  @override
  String? id;
  String? presentationId;
  Presentation? presentation;
  String? mediaId;
  Attachment? media;
  int? order;

  PresentationMedia({
    this.id,
    this.presentationId,
    this.presentation,
    this.mediaId,
    this.media,
    this.order = 0,
  });

  factory PresentationMedia.fromJson(Map<String, dynamic> json) =>
      PresentationMedia(
          id: json['id'] as String?,
          presentationId: json['presentationId'] as String?,
          presentation: json['presentation'] != null
              ? Presentation.fromJson(
                  json['presentation'] as Map<String, dynamic>)
              : null,
          mediaId: json['mediaId'] as String?,
          media: json['media'] != null
              ? Attachment.fromJson(json['media'] as Map<String, dynamic>)
              : null,
          order: json['order'] as int?);

  PresentationMedia copyWith({
    String? id,
    String? presentationId,
    Presentation? presentation,
    String? mediaId,
    Attachment? media,
    int? order,
  }) {
    return PresentationMedia(
        id: id ?? this.id,
        presentationId: presentationId ?? this.presentationId,
        presentation: presentation ?? this.presentation,
        mediaId: mediaId ?? this.mediaId,
        media: media ?? this.media,
        order: order ?? this.order);
  }

  PresentationMedia copyWithInstance(PresentationMedia presentationMedia) {
    return PresentationMedia(
        id: presentationMedia.id ?? id,
        presentationId: presentationMedia.presentationId ?? presentationId,
        presentation: presentationMedia.presentation ?? presentation,
        mediaId: presentationMedia.mediaId ?? mediaId,
        media: presentationMedia.media ?? media,
        order: presentationMedia.order ?? order);
  }

  @override
  Map<String, dynamic> toJson() => ({
        if (id != null) 'id': id,
        if (presentationId != null) 'presentationId': presentationId,
        if (presentation != null) 'presentation': presentation,
        if (mediaId != null) 'mediaId': mediaId,
        if (media != null) 'media': media,
        if (order != null) 'order': order
      });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PresentationMedia &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          presentationId == other.presentationId &&
          presentation == other.presentation &&
          mediaId == other.mediaId &&
          media == other.media &&
          order == other.order;

  @override
  int get hashCode =>
      id.hashCode ^
      presentationId.hashCode ^
      presentation.hashCode ^
      mediaId.hashCode ^
      media.hashCode ^
      order.hashCode;
}
