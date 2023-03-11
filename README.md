# Badges App

Badges application.

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