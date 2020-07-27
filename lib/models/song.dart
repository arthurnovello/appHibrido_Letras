class song {
  Status status;
  List<Content> content;

  song({this.status, this.content});

  song.fromJson(Map<String, dynamic> json) {
    status =
    json['status'] != null ? new Status.fromJson(json['status']) : null;
    if (json['content'] != null) {
      content = new List<Content>();
      json['content'].forEach((v) {
        content.add(new Content.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.status != null) {
      data['status'] = this.status.toJson();
    }
    if (this.content != null) {
      data['content'] = this.content.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Status {
  int code;
  String message;
  bool failed;

  Status({this.code, this.message, this.failed});

  Status.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    message = json['message'];
    failed = json['failed'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this.code;
    data['message'] = this.message;
    data['failed'] = this.failed;
    return data;
  }
}

class Content {
  String title;
  String lyrics;
  String artist;

  Content({this.title, this.lyrics, this.artist});

  Content.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    lyrics = json['lyrics'];
    artist = json['artist'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['lyrics'] = this.lyrics;
    data['artist'] = this.artist;
    return data;
  }
}
