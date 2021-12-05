class SpacesModel {
  List<Track> track = [];

  SpacesModel({required this.track});

  SpacesModel.fromJson(Map<String, dynamic> json) {
    if (json['track'] != null) {
      track = <Track>[];
      json['track'].forEach((v) {
        track.add(new Track.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.track != null) {
      data['track'] = this.track.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Track {
  String? title;
  String? id;
  String? cover;
  String? status;
  String? disabledMsg;
  TrackRegistrationsAggregate? trackRegistrationsAggregate;

  Track(
      {this.title = '',
      this.id = '',
      this.cover = '',
      this.status = '',
      this.disabledMsg = '',
      this.trackRegistrationsAggregate});

  Track.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    id = json['id'];
    cover = json['cover'];
    status = json['status'];
    disabledMsg = json['disabled_msg'];
    trackRegistrationsAggregate = (json['track_registrations_aggregate'] != null
        ? new TrackRegistrationsAggregate.fromJson(
            json['track_registrations_aggregate'])
        : null)!;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['id'] = this.id;
    data['cover'] = this.cover;
    data['status'] = this.status;
    data['disabled_msg'] = this.disabledMsg;
    if (this.trackRegistrationsAggregate != null) {
      data['track_registrations_aggregate'] =
          this.trackRegistrationsAggregate!.toJson();
    }
    return data;
  }
}

class TrackRegistrationsAggregate {
  Aggregate? aggregate;

  TrackRegistrationsAggregate({this.aggregate});

  TrackRegistrationsAggregate.fromJson(Map<String, dynamic> json) {
    aggregate = json['aggregate'] != null
        ? new Aggregate.fromJson(json['aggregate'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.aggregate != null) {
      data['aggregate'] = this.aggregate!.toJson();
    }
    return data;
  }
}

class Aggregate {
  int? count;

  Aggregate({this.count = 0});

  Aggregate.fromJson(Map<String, dynamic> json) {
    count = json['count'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['count'] = this.count;
    return data;
  }
}
