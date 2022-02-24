// ignore_for_file: file_names

// import 'package:code_manga/screens/homePage.dart';

class MangaApiModel {
  Data? data;

  MangaApiModel({this.data});

  MangaApiModel.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    // ignore: prefer_collection_literals
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
    // return data;
  }
}

class Data {
  int? malId;
  String? url;
  Images? images;
  String? title;
  String? titleEnglish;
  String? titleJapanese;
  List<String>? titleSynonyms;
  String? type;
  int? chapters;
  int? volumes;
  String? status;
  bool? publishing;
  Published? published;
  double? scored;
  int? scoredBy;
  int? rank;
  int? popularity;
  int? members;
  int? favorites;
  String? synopsis;
  String? background;
  List<Authors>? authors;
  List<Serializations>? serializations;
  List<Genres>? genres;
  List<ExplicitGenres>? explicitGenres;
  List<Themes>? themes;
  List<Demographics>? demographics;

  Data(
      {this.malId,
      this.url,
      this.images,
      this.title,
      this.titleEnglish,
      this.titleJapanese,
      this.titleSynonyms,
      this.type,
      this.chapters,
      this.volumes,
      this.status,
      this.publishing,
      this.published,
      this.scored,
      this.scoredBy,
      this.rank,
      this.popularity,
      this.members,
      this.favorites,
      this.synopsis,
      this.background,
      this.authors,
      this.serializations,
      this.genres,
      this.explicitGenres,
      this.themes,
      this.demographics});

  Data.fromJson(Map<String, dynamic> json) {
    malId = json['mal_id'];
    url = json['url'];
    images = json['images'] != null ? Images.fromJson(json['images']) : null;
    title = json['title'];
    titleEnglish = json['title_english'];
    titleJapanese = json['title_japanese'];
    titleSynonyms = json['title_synonyms'].cast<String>();
    type = json['type'];
    chapters = json['chapters'];
    volumes = json['volumes'];
    status = json['status'];
    publishing = json['publishing'];
    published = json['published'] != null
        ? Published.fromJson(json['published'])
        : null;
    scored = json['scored'];
    scoredBy = json['scored_by'];
    rank = json['rank'];
    popularity = json['popularity'];
    members = json['members'];
    favorites = json['favorites'];
    synopsis = json['synopsis'];
    background = json['background'];
    if (json['authors'] != null) {
      authors = <Authors>[];
      json['authors'].forEach((v) {
        authors!.add(Authors.fromJson(v));
      });
    }
    if (json['serializations'] != null) {
      serializations = <Serializations>[];
      json['serializations'].forEach((v) {
        serializations!.add(Serializations.fromJson(v));
      });
    }
    if (json['genres'] != null) {
      genres = <Genres>[];
      json['genres'].forEach((v) {
        genres!.add(Genres.fromJson(v));
      });
    }
    if (json['explicit_genres'] != null) {
      explicitGenres = <ExplicitGenres>[];
      json['explicit_genres'].forEach((v) {
        explicitGenres!.add(ExplicitGenres.fromJson(v));
      });
    }
    if (json['themes'] != null) {
      themes = <Themes>[];
      json['themes'].forEach((v) {
        themes!.add(Themes.fromJson(v));
      });
    }
    if (json['demographics'] != null) {
      demographics = <Demographics>[];
      json['demographics'].forEach((v) {
        demographics!.add(Demographics.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    // ignore: prefer_collection_literals
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['mal_id'] = malId;
    data['url'] = url;
    if (images != null) {
      data['images'] = images!.toJson();
    }
    data['title'] = title;
    data['title_english'] = titleEnglish;
    data['title_japanese'] = titleJapanese;
    data['title_synonyms'] = titleSynonyms;
    data['type'] = type;
    data['chapters'] = chapters;
    data['volumes'] = volumes;
    data['status'] = status;
    data['publishing'] = publishing;
    if (published != null) {
      data['published'] = published!.toJson();
    }
    data['scored'] = scored;
    data['scored_by'] = scoredBy;
    data['rank'] = rank;
    data['popularity'] = popularity;
    data['members'] = members;
    data['favorites'] = favorites;
    data['synopsis'] = synopsis;
    data['background'] = background;
    if (authors != null) {
      data['authors'] = authors!.map((v) => v.toJson()).toList();
    }
    if (serializations != null) {
      data['serializations'] = serializations!.map((v) => v.toJson()).toList();
    }
    if (genres != null) {
      data['genres'] = genres!.map((v) => v.toJson()).toList();
    }
    if (explicitGenres != null) {
      data['explicit_genres'] = explicitGenres!.map((v) => v.toJson()).toList();
    }
    if (themes != null) {
      data['themes'] = themes!.map((v) => v.toJson()).toList();
    }
    if (demographics != null) {
      data['demographics'] = demographics!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Images {
  Jpg? jpg;
  Jpg? webp;

  Images({this.jpg, this.webp});

  Images.fromJson(Map<String, dynamic> json) {
    jpg = json['jpg'] != null ? Jpg.fromJson(json['jpg']) : null;
    webp = json['webp'] != null ? Jpg.fromJson(json['webp']) : null;
  }

  Map<String, dynamic> toJson() {
    // ignore: prefer_collection_literals
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (jpg != null) {
      data['jpg'] = jpg!.toJson();
    }
    if (webp != null) {
      data['webp'] = webp!.toJson();
    }
    return data;
  }
}

class Jpg {
  String? imageUrl;
  String? smallImageUrl;
  String? largeImageUrl;

  Jpg({this.imageUrl, this.smallImageUrl, this.largeImageUrl});

  Jpg.fromJson(Map<String, dynamic> json) {
    imageUrl = json['image_url'];
    smallImageUrl = json['small_image_url'];
    largeImageUrl = json['large_image_url'];
  }

  Map<String, dynamic> toJson() {
    // ignore: prefer_collection_literals
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['image_url'] = imageUrl;
    data['small_image_url'] = smallImageUrl;
    data['large_image_url'] = largeImageUrl;
    return data;
  }
}

class Published {
  String? from;
  String? to;
  Prop? prop;

  Published({this.from, this.to, this.prop});

  Published.fromJson(Map<String, dynamic> json) {
    from = json['from'];
    to = json['to'];
    prop = json['prop'] != null ? Prop.fromJson(json['prop']) : null;
  }

  Map<String, dynamic> toJson() {
    // ignore: prefer_collection_literals
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['from'] = from;
    data['to'] = to;
    if (prop != null) {
      data['prop'] = prop!.toJson();
    }
    return data;
  }
}

class Prop {
  From? from;
  From? to;
  String? string;

  Prop({this.from, this.to, this.string});

  Prop.fromJson(Map<String, dynamic> json) {
    from = json['from'] != null ? From.fromJson(json['from']) : null;
    to = json['to'] != null ? From.fromJson(json['to']) : null;
    string = json['string'];
  }

  Map<String, dynamic> toJson() {
    // ignore: prefer_collection_literals
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (from != null) {
      data['from'] = from!.toJson();
    }
    if (to != null) {
      data['to'] = to!.toJson();
    }
    data['string'] = string;
    return data;
  }
}

class From {
  int? day;
  int? month;
  int? year;

  From({this.day, this.month, this.year});

  From.fromJson(Map<String, dynamic> json) {
    day = json['day'];
    month = json['month'];
    year = json['year'];
  }

  Map<String, dynamic> toJson() {
    // ignore: prefer_collection_literals
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['day'] = day;
    data['month'] = month;
    data['year'] = year;
    return data;
  }
}

class Authors {
  int? malId;
  String? type;
  String? name;
  String? url;

  Authors({this.malId, this.type, this.name, this.url});

  Authors.fromJson(Map<String, dynamic> json) {
    malId = json['mal_id'];
    type = json['type'];
    name = json['name'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    // ignore: prefer_collection_literals
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['mal_id'] = malId;
    data['type'] = type;
    data['name'] = name;
    data['url'] = url;
    return data;
  }
}

class Serializations {
  int? malId;
  String? type;
  String? name;
  String? url;

  Serializations({this.malId, this.type, this.name, this.url});

  Serializations.fromJson(Map<String, dynamic> json) {
    malId = json['mal_id'];
    type = json['type'];
    name = json['name'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    // ignore: prefer_collection_literals
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['mal_id'] = malId;
    data['type'] = type;
    data['name'] = name;
    data['url'] = url;
    return data;
  }
}

class Genres {
  int? malId;
  String? type;
  String? name;
  String? url;

  Genres({this.malId, this.type, this.name, this.url});

  Genres.fromJson(Map<String, dynamic> json) {
    malId = json['mal_id'];
    type = json['type'];
    name = json['name'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    // ignore: prefer_collection_literals
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['mal_id'] = malId;
    data['type'] = type;
    data['name'] = name;
    data['url'] = url;
    return data;
  }
}

class ExplicitGenres {
  int? malId;
  String? type;
  String? name;
  String? url;

  ExplicitGenres({this.malId, this.type, this.name, this.url});

  ExplicitGenres.fromJson(Map<String, dynamic> json) {
    malId = json['mal_id'];
    type = json['type'];
    name = json['name'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    // ignore: prefer_collection_literals
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['mal_id'] = malId;
    data['type'] = type;
    data['name'] = name;
    data['url'] = url;
    return data;
  }
}

class Themes {
  int? malId;
  String? type;
  String? name;
  String? url;

  Themes({this.malId, this.type, this.name, this.url});

  Themes.fromJson(Map<String, dynamic> json) {
    malId = json['mal_id'];
    type = json['type'];
    name = json['name'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['mal_id'] = malId;
    data['type'] = type;
    data['name'] = name;
    data['url'] = url;
    return data;
  }
}

class Demographics {
  int? malId;
  String? type;
  String? name;
  String? url;

  Demographics({this.malId, this.type, this.name, this.url});

  Demographics.fromJson(Map<String, dynamic> json) {
    malId = json['mal_id'];
    type = json['type'];
    name = json['name'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['mal_id'] = malId;
    data['type'] = type;
    data['name'] = name;
    data['url'] = url;
    return data;
  }
}
