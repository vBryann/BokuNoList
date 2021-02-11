// @generated
//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

public enum MediaSeason: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
  public typealias RawValue = String
  /// Months December to February
  case winter
  /// Months March to May
  case spring
  /// Months June to August
  case summer
  /// Months September to November
  case fall
  /// Auto generated constant for unknown enum values
  case __unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "WINTER": self = .winter
      case "SPRING": self = .spring
      case "SUMMER": self = .summer
      case "FALL": self = .fall
      default: self = .__unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .winter: return "WINTER"
      case .spring: return "SPRING"
      case .summer: return "SUMMER"
      case .fall: return "FALL"
      case .__unknown(let value): return value
    }
  }

  public static func == (lhs: MediaSeason, rhs: MediaSeason) -> Bool {
    switch (lhs, rhs) {
      case (.winter, .winter): return true
      case (.spring, .spring): return true
      case (.summer, .summer): return true
      case (.fall, .fall): return true
      case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }

  public static var allCases: [MediaSeason] {
    return [
      .winter,
      .spring,
      .summer,
      .fall,
    ]
  }
}

/// Media type enum, anime or manga.
public enum MediaType: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
  public typealias RawValue = String
  /// Japanese Anime
  case anime
  /// Asian comic
  case manga
  /// Auto generated constant for unknown enum values
  case __unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "ANIME": self = .anime
      case "MANGA": self = .manga
      default: self = .__unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .anime: return "ANIME"
      case .manga: return "MANGA"
      case .__unknown(let value): return value
    }
  }

  public static func == (lhs: MediaType, rhs: MediaType) -> Bool {
    switch (lhs, rhs) {
      case (.anime, .anime): return true
      case (.manga, .manga): return true
      case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }

  public static var allCases: [MediaType] {
    return [
      .anime,
      .manga,
    ]
  }
}

/// The format the media was released in
public enum MediaFormat: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
  public typealias RawValue = String
  /// Anime broadcast on television
  case tv
  /// Anime which are under 15 minutes in length and broadcast on television
  case tvShort
  /// Anime movies with a theatrical release
  case movie
  /// Special episodes that have been included in DVD/Blu-ray releases, picture dramas, pilots, etc
  case special
  /// (Original Video Animation) Anime that have been released directly on DVD/Blu-ray without originally going through a theatrical release or television broadcast
  case ova
  /// (Original Net Animation) Anime that have been originally released online or are only available through streaming services.
  case ona
  /// Short anime released as a music video
  case music
  /// Professionally published manga with more than one chapter
  case manga
  /// Written books released as a series of light novels
  case novel
  /// Manga with just one chapter
  case oneShot
  /// Auto generated constant for unknown enum values
  case __unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "TV": self = .tv
      case "TV_SHORT": self = .tvShort
      case "MOVIE": self = .movie
      case "SPECIAL": self = .special
      case "OVA": self = .ova
      case "ONA": self = .ona
      case "MUSIC": self = .music
      case "MANGA": self = .manga
      case "NOVEL": self = .novel
      case "ONE_SHOT": self = .oneShot
      default: self = .__unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .tv: return "TV"
      case .tvShort: return "TV_SHORT"
      case .movie: return "MOVIE"
      case .special: return "SPECIAL"
      case .ova: return "OVA"
      case .ona: return "ONA"
      case .music: return "MUSIC"
      case .manga: return "MANGA"
      case .novel: return "NOVEL"
      case .oneShot: return "ONE_SHOT"
      case .__unknown(let value): return value
    }
  }

  public static func == (lhs: MediaFormat, rhs: MediaFormat) -> Bool {
    switch (lhs, rhs) {
      case (.tv, .tv): return true
      case (.tvShort, .tvShort): return true
      case (.movie, .movie): return true
      case (.special, .special): return true
      case (.ova, .ova): return true
      case (.ona, .ona): return true
      case (.music, .music): return true
      case (.manga, .manga): return true
      case (.novel, .novel): return true
      case (.oneShot, .oneShot): return true
      case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }

  public static var allCases: [MediaFormat] {
    return [
      .tv,
      .tvShort,
      .movie,
      .special,
      .ova,
      .ona,
      .music,
      .manga,
      .novel,
      .oneShot,
    ]
  }
}

/// The current releasing status of the media
public enum MediaStatus: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
  public typealias RawValue = String
  /// Has completed and is no longer being released
  case finished
  /// Currently releasing
  case releasing
  /// To be released at a later date
  case notYetReleased
  /// Ended before the work could be finished
  case cancelled
  /// Version 2 only. Is currently paused from releasing and will resume at a later date
  case hiatus
  /// Auto generated constant for unknown enum values
  case __unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "FINISHED": self = .finished
      case "RELEASING": self = .releasing
      case "NOT_YET_RELEASED": self = .notYetReleased
      case "CANCELLED": self = .cancelled
      case "HIATUS": self = .hiatus
      default: self = .__unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .finished: return "FINISHED"
      case .releasing: return "RELEASING"
      case .notYetReleased: return "NOT_YET_RELEASED"
      case .cancelled: return "CANCELLED"
      case .hiatus: return "HIATUS"
      case .__unknown(let value): return value
    }
  }

  public static func == (lhs: MediaStatus, rhs: MediaStatus) -> Bool {
    switch (lhs, rhs) {
      case (.finished, .finished): return true
      case (.releasing, .releasing): return true
      case (.notYetReleased, .notYetReleased): return true
      case (.cancelled, .cancelled): return true
      case (.hiatus, .hiatus): return true
      case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }

  public static var allCases: [MediaStatus] {
    return [
      .finished,
      .releasing,
      .notYetReleased,
      .cancelled,
      .hiatus,
    ]
  }
}

public final class FetchQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query Fetch {
      trending: Page(page: 1, perPage: 6) {
        __typename
        media(sort: TRENDING_DESC, type: ANIME, isAdult: false) {
          __typename
          ...media
        }
      }
      popular: Page(page: 1, perPage: 6) {
        __typename
        media(sort: POPULARITY_DESC, type: ANIME, isAdult: false) {
          __typename
          ...media
        }
      }
    }
    """

  public let operationName: String = "Fetch"

  public var queryDocument: String { return operationDefinition.appending("\n" + Media.fragmentDefinition) }

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("Page", alias: "trending", arguments: ["page": 1, "perPage": 6], type: .object(Trending.selections)),
        GraphQLField("Page", alias: "popular", arguments: ["page": 1, "perPage": 6], type: .object(Popular.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(trending: Trending? = nil, popular: Popular? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "trending": trending.flatMap { (value: Trending) -> ResultMap in value.resultMap }, "popular": popular.flatMap { (value: Popular) -> ResultMap in value.resultMap }])
    }

    public var trending: Trending? {
      get {
        return (resultMap["trending"] as? ResultMap).flatMap { Trending(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "trending")
      }
    }

    public var popular: Popular? {
      get {
        return (resultMap["popular"] as? ResultMap).flatMap { Popular(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "popular")
      }
    }

    public struct Trending: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Page"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("media", arguments: ["sort": "TRENDING_DESC", "type": "ANIME", "isAdult": false], type: .list(.object(Medium.selections))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(media: [Medium?]? = nil) {
        self.init(unsafeResultMap: ["__typename": "Page", "media": media.flatMap { (value: [Medium?]) -> [ResultMap?] in value.map { (value: Medium?) -> ResultMap? in value.flatMap { (value: Medium) -> ResultMap in value.resultMap } } }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var media: [Medium?]? {
        get {
          return (resultMap["media"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Medium?] in value.map { (value: ResultMap?) -> Medium? in value.flatMap { (value: ResultMap) -> Medium in Medium(unsafeResultMap: value) } } }
        }
        set {
          resultMap.updateValue(newValue.flatMap { (value: [Medium?]) -> [ResultMap?] in value.map { (value: Medium?) -> ResultMap? in value.flatMap { (value: Medium) -> ResultMap in value.resultMap } } }, forKey: "media")
        }
      }

      public struct Medium: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Media"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLFragmentSpread(Media.self),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var fragments: Fragments {
          get {
            return Fragments(unsafeResultMap: resultMap)
          }
          set {
            resultMap += newValue.resultMap
          }
        }

        public struct Fragments {
          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public var media: Media {
            get {
              return Media(unsafeResultMap: resultMap)
            }
            set {
              resultMap += newValue.resultMap
            }
          }
        }
      }
    }

    public struct Popular: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Page"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("media", arguments: ["sort": "POPULARITY_DESC", "type": "ANIME", "isAdult": false], type: .list(.object(Medium.selections))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(media: [Medium?]? = nil) {
        self.init(unsafeResultMap: ["__typename": "Page", "media": media.flatMap { (value: [Medium?]) -> [ResultMap?] in value.map { (value: Medium?) -> ResultMap? in value.flatMap { (value: Medium) -> ResultMap in value.resultMap } } }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var media: [Medium?]? {
        get {
          return (resultMap["media"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Medium?] in value.map { (value: ResultMap?) -> Medium? in value.flatMap { (value: ResultMap) -> Medium in Medium(unsafeResultMap: value) } } }
        }
        set {
          resultMap.updateValue(newValue.flatMap { (value: [Medium?]) -> [ResultMap?] in value.map { (value: Medium?) -> ResultMap? in value.flatMap { (value: Medium) -> ResultMap in value.resultMap } } }, forKey: "media")
        }
      }

      public struct Medium: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Media"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLFragmentSpread(Media.self),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var fragments: Fragments {
          get {
            return Fragments(unsafeResultMap: resultMap)
          }
          set {
            resultMap += newValue.resultMap
          }
        }

        public struct Fragments {
          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public var media: Media {
            get {
              return Media(unsafeResultMap: resultMap)
            }
            set {
              resultMap += newValue.resultMap
            }
          }
        }
      }
    }
  }
}

public struct Media: GraphQLFragment {
  /// The raw GraphQL definition of this fragment.
  public static let fragmentDefinition: String =
    """
    fragment media on Media {
      __typename
      id
      title {
        __typename
        userPreferred
      }
      coverImage {
        __typename
        large
      }
      startDate {
        __typename
        year
        month
        day
      }
      bannerImage
      season
      description
      type
      format
      status(version: 2)
      episodes
      duration
      genres
      averageScore
      nextAiringEpisode {
        __typename
        timeUntilAiring
        episode
      }
      studios(isMain: true) {
        __typename
        edges {
          __typename
          isMain
          node {
            __typename
            id
            name
          }
        }
      }
    }
    """

  public static let possibleTypes: [String] = ["Media"]

  public static var selections: [GraphQLSelection] {
    return [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("id", type: .nonNull(.scalar(Int.self))),
      GraphQLField("title", type: .object(Title.selections)),
      GraphQLField("coverImage", type: .object(CoverImage.selections)),
      GraphQLField("startDate", type: .object(StartDate.selections)),
      GraphQLField("bannerImage", type: .scalar(String.self)),
      GraphQLField("season", type: .scalar(MediaSeason.self)),
      GraphQLField("description", type: .scalar(String.self)),
      GraphQLField("type", type: .scalar(MediaType.self)),
      GraphQLField("format", type: .scalar(MediaFormat.self)),
      GraphQLField("status", arguments: ["version": 2], type: .scalar(MediaStatus.self)),
      GraphQLField("episodes", type: .scalar(Int.self)),
      GraphQLField("duration", type: .scalar(Int.self)),
      GraphQLField("genres", type: .list(.scalar(String.self))),
      GraphQLField("averageScore", type: .scalar(Int.self)),
      GraphQLField("nextAiringEpisode", type: .object(NextAiringEpisode.selections)),
      GraphQLField("studios", arguments: ["isMain": true], type: .object(Studio.selections)),
    ]
  }

  public private(set) var resultMap: ResultMap

  public init(unsafeResultMap: ResultMap) {
    self.resultMap = unsafeResultMap
  }

  public init(id: Int, title: Title? = nil, coverImage: CoverImage? = nil, startDate: StartDate? = nil, bannerImage: String? = nil, season: MediaSeason? = nil, description: String? = nil, type: MediaType? = nil, format: MediaFormat? = nil, status: MediaStatus? = nil, episodes: Int? = nil, duration: Int? = nil, genres: [String?]? = nil, averageScore: Int? = nil, nextAiringEpisode: NextAiringEpisode? = nil, studios: Studio? = nil) {
    self.init(unsafeResultMap: ["__typename": "Media", "id": id, "title": title.flatMap { (value: Title) -> ResultMap in value.resultMap }, "coverImage": coverImage.flatMap { (value: CoverImage) -> ResultMap in value.resultMap }, "startDate": startDate.flatMap { (value: StartDate) -> ResultMap in value.resultMap }, "bannerImage": bannerImage, "season": season, "description": description, "type": type, "format": format, "status": status, "episodes": episodes, "duration": duration, "genres": genres, "averageScore": averageScore, "nextAiringEpisode": nextAiringEpisode.flatMap { (value: NextAiringEpisode) -> ResultMap in value.resultMap }, "studios": studios.flatMap { (value: Studio) -> ResultMap in value.resultMap }])
  }

  public var __typename: String {
    get {
      return resultMap["__typename"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "__typename")
    }
  }

  /// The id of the media
  public var id: Int {
    get {
      return resultMap["id"]! as! Int
    }
    set {
      resultMap.updateValue(newValue, forKey: "id")
    }
  }

  /// The official titles of the media in various languages
  public var title: Title? {
    get {
      return (resultMap["title"] as? ResultMap).flatMap { Title(unsafeResultMap: $0) }
    }
    set {
      resultMap.updateValue(newValue?.resultMap, forKey: "title")
    }
  }

  /// The cover images of the media
  public var coverImage: CoverImage? {
    get {
      return (resultMap["coverImage"] as? ResultMap).flatMap { CoverImage(unsafeResultMap: $0) }
    }
    set {
      resultMap.updateValue(newValue?.resultMap, forKey: "coverImage")
    }
  }

  /// The first official release date of the media
  public var startDate: StartDate? {
    get {
      return (resultMap["startDate"] as? ResultMap).flatMap { StartDate(unsafeResultMap: $0) }
    }
    set {
      resultMap.updateValue(newValue?.resultMap, forKey: "startDate")
    }
  }

  /// The banner image of the media
  public var bannerImage: String? {
    get {
      return resultMap["bannerImage"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "bannerImage")
    }
  }

  /// The season the media was initially released in
  public var season: MediaSeason? {
    get {
      return resultMap["season"] as? MediaSeason
    }
    set {
      resultMap.updateValue(newValue, forKey: "season")
    }
  }

  /// Short description of the media's story and characters
  public var description: String? {
    get {
      return resultMap["description"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "description")
    }
  }

  /// The type of the media; anime or manga
  public var type: MediaType? {
    get {
      return resultMap["type"] as? MediaType
    }
    set {
      resultMap.updateValue(newValue, forKey: "type")
    }
  }

  /// The format the media was released in
  public var format: MediaFormat? {
    get {
      return resultMap["format"] as? MediaFormat
    }
    set {
      resultMap.updateValue(newValue, forKey: "format")
    }
  }

  /// The current releasing status of the media
  public var status: MediaStatus? {
    get {
      return resultMap["status"] as? MediaStatus
    }
    set {
      resultMap.updateValue(newValue, forKey: "status")
    }
  }

  /// The amount of episodes the anime has when complete
  public var episodes: Int? {
    get {
      return resultMap["episodes"] as? Int
    }
    set {
      resultMap.updateValue(newValue, forKey: "episodes")
    }
  }

  /// The general length of each anime episode in minutes
  public var duration: Int? {
    get {
      return resultMap["duration"] as? Int
    }
    set {
      resultMap.updateValue(newValue, forKey: "duration")
    }
  }

  /// The genres of the media
  public var genres: [String?]? {
    get {
      return resultMap["genres"] as? [String?]
    }
    set {
      resultMap.updateValue(newValue, forKey: "genres")
    }
  }

  /// A weighted average score of all the user's scores of the media
  public var averageScore: Int? {
    get {
      return resultMap["averageScore"] as? Int
    }
    set {
      resultMap.updateValue(newValue, forKey: "averageScore")
    }
  }

  /// The media's next episode airing schedule
  public var nextAiringEpisode: NextAiringEpisode? {
    get {
      return (resultMap["nextAiringEpisode"] as? ResultMap).flatMap { NextAiringEpisode(unsafeResultMap: $0) }
    }
    set {
      resultMap.updateValue(newValue?.resultMap, forKey: "nextAiringEpisode")
    }
  }

  /// The companies who produced the media
  public var studios: Studio? {
    get {
      return (resultMap["studios"] as? ResultMap).flatMap { Studio(unsafeResultMap: $0) }
    }
    set {
      resultMap.updateValue(newValue?.resultMap, forKey: "studios")
    }
  }

  public struct Title: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["MediaTitle"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("userPreferred", type: .scalar(String.self)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(userPreferred: String? = nil) {
      self.init(unsafeResultMap: ["__typename": "MediaTitle", "userPreferred": userPreferred])
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    /// The currently authenticated users preferred title language. Default romaji for non-authenticated
    public var userPreferred: String? {
      get {
        return resultMap["userPreferred"] as? String
      }
      set {
        resultMap.updateValue(newValue, forKey: "userPreferred")
      }
    }
  }

  public struct CoverImage: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["MediaCoverImage"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("large", type: .scalar(String.self)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(large: String? = nil) {
      self.init(unsafeResultMap: ["__typename": "MediaCoverImage", "large": large])
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    /// The cover image url of the media at a large size
    public var large: String? {
      get {
        return resultMap["large"] as? String
      }
      set {
        resultMap.updateValue(newValue, forKey: "large")
      }
    }
  }

  public struct StartDate: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["FuzzyDate"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("year", type: .scalar(Int.self)),
        GraphQLField("month", type: .scalar(Int.self)),
        GraphQLField("day", type: .scalar(Int.self)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(year: Int? = nil, month: Int? = nil, day: Int? = nil) {
      self.init(unsafeResultMap: ["__typename": "FuzzyDate", "year": year, "month": month, "day": day])
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    /// Numeric Year (2017)
    public var year: Int? {
      get {
        return resultMap["year"] as? Int
      }
      set {
        resultMap.updateValue(newValue, forKey: "year")
      }
    }

    /// Numeric Month (3)
    public var month: Int? {
      get {
        return resultMap["month"] as? Int
      }
      set {
        resultMap.updateValue(newValue, forKey: "month")
      }
    }

    /// Numeric Day (24)
    public var day: Int? {
      get {
        return resultMap["day"] as? Int
      }
      set {
        resultMap.updateValue(newValue, forKey: "day")
      }
    }
  }

  public struct NextAiringEpisode: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["AiringSchedule"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("timeUntilAiring", type: .nonNull(.scalar(Int.self))),
        GraphQLField("episode", type: .nonNull(.scalar(Int.self))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(timeUntilAiring: Int, episode: Int) {
      self.init(unsafeResultMap: ["__typename": "AiringSchedule", "timeUntilAiring": timeUntilAiring, "episode": episode])
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    /// Seconds until episode starts airing
    public var timeUntilAiring: Int {
      get {
        return resultMap["timeUntilAiring"]! as! Int
      }
      set {
        resultMap.updateValue(newValue, forKey: "timeUntilAiring")
      }
    }

    /// The airing episode number
    public var episode: Int {
      get {
        return resultMap["episode"]! as! Int
      }
      set {
        resultMap.updateValue(newValue, forKey: "episode")
      }
    }
  }

  public struct Studio: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["StudioConnection"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("edges", type: .list(.object(Edge.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(edges: [Edge?]? = nil) {
      self.init(unsafeResultMap: ["__typename": "StudioConnection", "edges": edges.flatMap { (value: [Edge?]) -> [ResultMap?] in value.map { (value: Edge?) -> ResultMap? in value.flatMap { (value: Edge) -> ResultMap in value.resultMap } } }])
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    public var edges: [Edge?]? {
      get {
        return (resultMap["edges"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Edge?] in value.map { (value: ResultMap?) -> Edge? in value.flatMap { (value: ResultMap) -> Edge in Edge(unsafeResultMap: value) } } }
      }
      set {
        resultMap.updateValue(newValue.flatMap { (value: [Edge?]) -> [ResultMap?] in value.map { (value: Edge?) -> ResultMap? in value.flatMap { (value: Edge) -> ResultMap in value.resultMap } } }, forKey: "edges")
      }
    }

    public struct Edge: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["StudioEdge"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("isMain", type: .nonNull(.scalar(Bool.self))),
          GraphQLField("node", type: .object(Node.selections)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(isMain: Bool, node: Node? = nil) {
        self.init(unsafeResultMap: ["__typename": "StudioEdge", "isMain": isMain, "node": node.flatMap { (value: Node) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// If the studio is the main animation studio of the anime
      public var isMain: Bool {
        get {
          return resultMap["isMain"]! as! Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "isMain")
        }
      }

      public var node: Node? {
        get {
          return (resultMap["node"] as? ResultMap).flatMap { Node(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "node")
        }
      }

      public struct Node: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Studio"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(Int.self))),
            GraphQLField("name", type: .nonNull(.scalar(String.self))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: Int, name: String) {
          self.init(unsafeResultMap: ["__typename": "Studio", "id": id, "name": name])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        /// The id of the studio
        public var id: Int {
          get {
            return resultMap["id"]! as! Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }

        /// The name of the studio
        public var name: String {
          get {
            return resultMap["name"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "name")
          }
        }
      }
    }
  }
}
