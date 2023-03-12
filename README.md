# Badges App

Badges application.


![Screenshot 2023-03-12 at 12 19 45](https://user-images.githubusercontent.com/45641833/224535728-773f1e57-8741-4f45-b673-74114fdf69b8.png)


# Subject

- BLoC/Cubit was used for State Management.
- Unit test setup.
- JSON serializable/annotation was used for automatically generate code.
- Screen Util adapting screen and font size.
- Completion of design UI/UX compatibility.

# Flutter Packages Available in the Project:

**build_runner:** A build system for Dart code generation and modular compilation.

**dots_indicator:** Dots indicator to show progression of a PageView for example.

**flutter_bloc:** Flutter Widgets that make it easy to implement the BLoC (Business Logic Component) design pattern. Built to be used with the bloc state management package.

**flutter_rating_bar:** A simple yet fully customizable ratingbar for flutter which also include a rating bar indicator, supporting any fraction of rating.

**flutter_screenutil:** A flutter plugin for adapting screen and font size.Guaranteed to look good on different models.

**flutter_svg:** An SVG rendering and widget library for Flutter, which allows painting and displaying Scalable Vector Graphics 1.1 files.

**json_annotation:** Classes and helper functions that support JSON code generation via the `json_serializable` package.

# Tasks 📋
## UI/UX
**Slider Card**

<img width="489" alt="Screenshot 2023-03-12 at 12 22 54" src="https://user-images.githubusercontent.com/45641833/224535869-e96142ad-f31d-4be5-9cb6-17c3a2d3027d.png">
<img width="221" alt="Screenshot 2023-03-12 at 12 25 48" src="https://user-images.githubusercontent.com/45641833/224535963-4c88ad35-69b8-4445-85cc-08cf1bd88ccd.png">

```dart

   @override
  Widget build(BuildContext context) {
    return Container(
      height: 258.h,
      width: 343.w,
      decoration: BoxDecoration(
        color: context.appColors.white,
        borderRadius: BorderRadius.all(context.lowRadius),
        boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.16),
            blurRadius: 16,
            offset: Offset(0, 8),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              flagIconAndPraiseRaitng(context),
              cardTitleAndRaitingBar(context),
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 16,
            ),
            child: child!,
          ),
          buildDotsIndicator(context)
        ],
      ),
    );
  }
```

**User Rating Card**

<img width="475" alt="Screenshot 2023-03-12 at 12 26 36" src="https://user-images.githubusercontent.com/45641833/224536030-a4fdacc5-4a4f-4fc1-a57c-049667783b5b.png">
<img width="179" alt="Screenshot 2023-03-12 at 12 26 48" src="https://user-images.githubusercontent.com/45641833/224536033-8a03551f-b2e1-4167-91b5-5ec887d8a28a.png">

```dart

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 207.h,
      width: 345.w,
      decoration: BoxDecoration(
        color: context.appColors.white,
        borderRadius: BorderRadius.all(context.normalRadius),
        boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.16),
            blurRadius: 16,
            offset: Offset(0, 8),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 16),
        child: Column(
          children: [
            SizedBox(
              height: 12.5.h,
            ),
            profileBuild(context),
            SizedBox(
              height: 16.5.h,
            ),
            badgeBuild(context),
            SizedBox(
              height: 5.51.h,
            ),
            descriptionBuild(context)
          ],
        ),
      ),
    );
  }
```
**Theme**

*app_colors.dart*
```dart
abstract class AppColors {
  //Unique Colors

  Color white = 'FFFFFF'.color;
  Color tundora = '4A4A4A'.color;
  Color black = '000000'.color;
  Color silver = 'C4C4C4'.color;

  //Overrided Colors

  late Color textColor;
  late Color unitColor;
  late Color backgroundColor;
  late Color dotsSliderColor;
}

class LightColors extends AppColors {
  @override
  Color get textColor => tundora;

  @override
  Color get unitColor => black;

  @override
  Color get backgroundColor => white;

  @override
  Color get dotsSliderColor => silver;
}

```

*app_theme_manager.dart*
```dart
class AppThemeManager extends AppTheme {
  static AppThemeManager? _instance;
  static AppThemeManager get instance {
    return _instance ??= AppThemeManager._init();
  }

  AppThemeManager._init();

  @override
  ThemeData get lightTheme => ThemeData(
      brightness: Brightness.light,
      scaffoldBackgroundColor: LightColors().white,
      backgroundColor: LightColors().white,
      fontFamily: 'Gotham',
      textTheme: TextThemeManager.instance.textTheme(),
     );
}

```

*text_theme.dart*

*-It has been used in special places in this way.*

```dart
 style: context.textTheme.headline4!.copyWith(
                          color: context.appColors.textColor,
                          fontFamily: 'Gotham-Medium'),
```
```dart
class TextThemeManager {
  static TextThemeManager? _instance;
  static TextThemeManager get instance {
    return _instance ??= TextThemeManager.init();
  }

  TextThemeManager.init();

  TextTheme textTheme({bool isDark = false}) {
    return TextTheme(
      headline1: TextStyle(
        fontFamily: 'Gotham-Black',
        fontSize: 30,
        fontWeight: FontWeight.w700,
        decoration: TextDecoration.underline,
        color: Colors.white,
        decorationColor: Colors.white.withOpacity(0.01),
      ),
      
   headline3: TextStyle(
        fontFamily: 'Gotham-Bold',
        fontSize: 24,
        decoration: TextDecoration.underline,
        fontWeight: FontWeight.w400,
        color: Colors.white,
        decorationColor: Colors.white.withOpacity(0.01),
      ),

      headline4: TextStyle(
        fontFamily: 'Gotham-Bold',
        fontSize: 22,
        decoration: TextDecoration.underline,
        fontWeight: FontWeight.w700,
        color: Colors.white,
        decorationColor: Colors.white.withOpacity(0.01),
      ),

      headline5: TextStyle(
        fontFamily: 'Gotham-Book',
        fontSize: 14,
        fontWeight: FontWeight.w400,
        decoration: TextDecoration.underline,
        color: Colors.white,
        decorationColor: Colors.white.withOpacity(0.01),
      ),

      bodyText1: TextStyle(
        fontFamily: 'Gotham-Book',
        fontSize: 13,
        decoration: TextDecoration.underline,
        color: Colors.white,
        decorationColor: Colors.white.withOpacity(0.01),
      ),

      subtitle1:  TextStyle(
        fontFamily: 'Gotham-Medium',
        fontSize: 10,
        decoration: TextDecoration.underline,
        color: Colors.black.withOpacity(0.3),
        decorationColor: Colors.white.withOpacity(0.01),
        
      ),
    );
  }
}

```
## Models

*author_model.dart*
```dart

part 'author_model.g.dart';

@JsonSerializable()
class Author extends BaseModel<Author>{
    Author({
       this.id,
         this.title,
         this.email,
         this.sip,
         this.picture,
    });

    String? id;
    String? title;
    String? email;
    String? sip;
    String? picture;

    factory Author.fromJson(Map<String, dynamic> json) => _$AuthorFromJson(json);
    
    @override
    Author fromJson(Map<String, dynamic> json) {
    return _$AuthorFromJson(json);
    }

    @override
    Map<String, dynamic> toJson() {
    return _$AuthorToJson(this);
    }
}
```

*badge_data_model.dart*
```dart

part 'badge_data_model.g.dart';

@JsonSerializable()
class BadgeDataModel extends BaseModel<BadgeDataModel> {
    BadgeDataModel({
        this.odataType,
        this.odataId,
        this.odataEtag,
        this.odataEditLink,
        this.title,
        this.badgeIcon,
        this.id,
    });

    String? odataType;
    String? odataId;
    String? odataEtag;
    String? odataEditLink;
    String? title;
    String? badgeIcon;
    int? id;

    factory BadgeDataModel.fromJson(Map<String, dynamic> json) => _$BadgeDataModelFromJson(json);
    
    @override
    BadgeDataModel fromJson(Map<String, dynamic> json) {
    return _$BadgeDataModelFromJson(json);
    }

    @override
    Map<String, dynamic> toJson() {
    return _$BadgeDataModelToJson(this);
    }
}
```
*user_list_data_model.dart*
```dart


part 'users_list_data_model.g.dart';

@JsonSerializable()
class UsersDataModel extends BaseModel<UsersDataModel> {
  UsersDataModel({
    this.relatedPerson,
    this.principalCount,
    this.praiseRating,
    this.message,
    this.badge,
    this.author,
    this.created,
    this.authorTitle,
    this.id,
  });
  String? id;
  String? praiseRating;
  String? principalCount;
  String? message;
  String? created;
  String? authorTitle;
  List<Badge>? badge;
  List<Author>? author;
  List<dynamic>? relatedPerson;

  factory UsersDataModel.fromJson(Map<String, dynamic> json) =>
      _$UsersDataModelFromJson(json);

  @override
  UsersDataModel fromJson(Map<String, dynamic> json) {
    return _$UsersDataModelFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$UsersDataModelToJson(this);
  }
}

```
*list_user_badge_model.dart*
```dart

part 'list_user_badge_model.g.dart';

@JsonSerializable()
class Badge extends BaseModel<Badge> {
    Badge({
         this.lookupId,
         this.lookupValue,
         this.isSecretFieldValue,
    });

    int? lookupId;
    String? lookupValue;
    bool? isSecretFieldValue;

        factory Badge.fromJson(Map<String, dynamic> json) => _$BadgeFromJson(json);
    
    @override
    Badge fromJson(Map<String, dynamic> json) {
    return _$BadgeFromJson(json);
    }

    @override
    Map<String, dynamic> toJson() {
    return _$BadgeToJson(this);
    }

}
```
## Badges Service

```dart

  @override
  Future<List<BadgeDataModel>> fetchLocalBadges() async {
    var localData = await rootBundle.loadString(AppConstants.BADGES_LOCAL_PATH);

    Map<String, dynamic> map = json.decode(localData);
    final List<BadgeDataModel>? result =
        ResponseParser<BadgeDataModel>(response: map['value'])
            .fromList(model: BadgeDataModel());

    AppStateManager.instance.badges = result!;
    return result;
  }

  @override
  Future<List<UsersDataModel?>> fetchLocalUsers() async {
    var localData = await rootBundle.loadString(AppConstants.LIST_DATA_PATH);

    Map<String, dynamic> map = json.decode(localData);
    final List<UsersDataModel>? result =
        ResponseParser<UsersDataModel>(response: map['Row'])
            .fromList<List<UsersDataModel>>(model: UsersDataModel());

    AppStateManager.instance.users = result!;
    return result;
  }
```
## Badges Cubit

```dart

  class BadgesCubit extends Cubit<BadgesState> with BaseCubit {
  BadgesCubit() : super(const BadgesState());
  late BadgesService badgesService;
  late List<BadgeDataModel> badgesList = [];
  late List<UsersDataModel> usersList = [];
  late List<Badge> badgeUserList = [];
  late List<Author> authorList = [];
  late ScrollController controller;
  @override
  void init()  {
    initService();
  }

  void initService() async {
    badgesService = BadgesService();
    controller = ScrollController();
    await fetchLocalBadges();
  }

  void localFetchLoading(bool loading) {
    emit(state.copyWith(loading: loading));
  }

  Future<void> fetchLocalBadges() async {
    localFetchLoading(true);
    await badgesService.fetchLocalBadges();
    await badgesService.fetchLocalUsers();

    badgesList = AppStateManager.instance.badges;
    usersList = AppStateManager.instance.users;
    badgeUserList = AppStateManager.instance.badgeUsers;
    localFetchLoading(false);
  }

  

  String badgesIcon(int index) {
    if (badgesList[index].id.toString() == '3') {
      return ImageConstants.instance.addingValue;
    } else if (badgesList[index].id.toString() == '4') {
      return ImageConstants.instance.openToChange;
    } else if (badgesList[index].id.toString() == '5') {
      return ImageConstants.instance.masteringHisJob;
    } else if (badgesList[index].id.toString() == '6') {
      return ImageConstants.instance.lead;
    } else if (badgesList[index].id.toString() == '7') {
      return ImageConstants.instance.problemSolver;
    } else if (badgesList[index].id.toString() == '8') {
      return ImageConstants.instance.teamPlayer;
    } else if (badgesList[index].id.toString() == '9') {
      return ImageConstants.instance.gratitude;
    } else if (badgesList[index].id.toString() == '10') {
      return ImageConstants.instance.creative;
    } else {
      return ImageConstants.instance.innovative;
    }
  }


  @override
  void setContext(BuildContext context) => this.context = context;
}

```

## Badges State

```dart

class BadgesState {
  final bool loading;

  const BadgesState(
      {this.loading = false,

      });
  @override
  List<Object?> get props => [loading];

  BadgesState copyWith({
    bool? loading,

  }) {
    return BadgesState(
      loading: loading ?? this.loading,

    );
  }
}

```
## Unit Test 

```dart

void main() {
  late BadgesService badgesService;
  setUp(() async {
    badgesService = BadgesService();
  });

  test('fetchBadges success', () async {
    final List<BadgeDataModel> result = await badgesService.fetchLocalBadges();
    expect(result, isList);
    expect(result, isNotEmpty);
  });
}

void main() {
  late BadgesService localUserService;
  setUp(() async {
    localUserService = BadgesService();
  });

  test('fetchLocalUsers success', () async {
    final List<UsersDataModel?> result = await localUserService.fetchLocalUsers();
    expect(result, isList);
    expect(result, isNotEmpty);
  });
}


```

# Folder Structure

```
badges_app
│   
└───lib
│    │
│    └───core
│    │    │    
│    │    └───base
│    │    │
│    │    └───components
│    │    │    
│    │    └───constants
│    │    │
│    │    └───extensions
│    │    │
│    │    └───init
│    │    │
│    │    └───utility
│    └───features
│         └───badges
│
│
└───test
     │
     └───features
          └───badges    

```
