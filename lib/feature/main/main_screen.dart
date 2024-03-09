
import 'package:chrconnecthpdraft/feature/app/extension/context.dart';
import 'package:chrconnecthpdraft/feature/appointment/appointment_screen.dart';
import 'package:chrconnecthpdraft/feature/billing/billing_screen.dart';
import 'package:chrconnecthpdraft/feature/home/home_screen.dart';
import 'package:chrconnecthpdraft/feature/inbox/inbox_screen.dart';
import 'package:chrconnecthpdraft/feature/main/bloc/intro_bloc.dart';
import 'package:chrconnecthpdraft/feature/main/bloc/main_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_expandable_fab/flutter_expandable_fab.dart';
import 'package:typewritertext/typewritertext.dart';
import '../home/home_screen_alternative.dart';

class MainScreen extends StatefulWidget {
  static String routeName = '/';

  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> with SingleTickerProviderStateMixin{
  late MainBloc _mainBloc;
  late IntroBloc _introBloc;


  OverlayEntry? overlayEntry;
  int currentPageIndex = 0;
  late final AnimationController controller = AnimationController(
    duration: const Duration(milliseconds: 500),
    vsync: this,
  )..repeat(reverse: true);
  late final Animation<double> animation = CurvedAnimation(
    parent: controller,
    curve: Curves.easeIn,
  );
  introPage1(){

    double c_width = MediaQuery.of(context).size.width*0.8;

    return SafeArea(
      child: Container(
        color: Colors.black.withOpacity(0.7),
        child: Stack(
          children: [

            Positioned(
                left: 10,
                top: 10,
                child: IconButton(
                  icon: Icon(Icons.close,color: Colors.white,),
                  onPressed: (){
                    currentPageIndex=0;
                    removeHighlightOverlay();
                  },
                )
            ),


            Positioned(
                left: 50,
                top: 50,
                child: DefaultTextStyle(
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 14.0,

                    ),
                    child:
                    Container(
                      width: c_width,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Text(
                            "Hi Lynda!",
                            style: TextStyle(color: Colors.white,fontSize: 20,),
                          ),
                          SizedBox(height: 20,),
                          Text("Good Evening",
                            style: TextStyle(color: Colors.white,fontSize: 14),
                          ),
                          SizedBox(height: 10,),

                          TypeWriterText(
                            text: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc pulvinar enim et justo lobortis scelerisque.'),
                            duration: Duration(milliseconds: 10),
                          ),
                          SizedBox(height: 20,),
                          ElevatedButton(
                              onPressed: (){
                                setState(() {
                                  currentPageIndex=1;
                                });
                                createHighlightOverlay();
                              }
                              , child: Text("next")
                          ),

                        ],
                      ),
                    )

                )
            ),

            Positioned(
              left: 0,
              bottom: 0,
              //heightFactor: 1.0,
              child: DefaultTextStyle(
                style: const TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 14.0,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Column(
                      children: <Widget>[

                        FadeTransition(opacity: animation,
                          child: Icon(
                            Icons.arrow_downward,
                            color: Colors.red,
                          ),
                        ),
                      ],
                    ),
                    FadeTransition(opacity: animation,
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width / 3,
                        height: 80.0,
                        child: Center(
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.red,
                                width: 4.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  introPage2(){

    double c_width = MediaQuery.of(context).size.width*0.8;

    return SafeArea(
      child: Container(
        color: Colors.black.withOpacity(0.7),
        child: Stack(
          children: [
            Positioned(
                left: 10,
                top: 10,
                child: IconButton(
                  icon: Icon(Icons.close,color: Colors.white,),
                  onPressed: (){
                    currentPageIndex=0;
                    removeHighlightOverlay();
                  },
                )
            ),

            Positioned(
                left: 50,
                top: 250,
                child: DefaultTextStyle(
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 14.0,

                    ),
                    child:
                    Container(
                      width: c_width,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Text(
                            "Your Reminders",
                            style: TextStyle(color: Colors.white,fontSize: 20,),
                          ),
                          SizedBox(height: 20,),

                          TypeWriterText(
                            text: Text('Nunc eu vulputate tellus. Donec ullamcorper ullamcorper neque, ac efficitur nunc eleifend non. '),
                            duration: Duration(milliseconds: 10),
                          ),
                          SizedBox(height: 20,),
                          ElevatedButton(
                              onPressed: (){
                                setState(() {
                                  currentPageIndex=2;
                                });
                                createHighlightOverlay(
                                );
                              }
                              , child: Text("next")
                          ),

                        ],
                      ),
                    )

                )
            ),

            Positioned(
              left: 10,
              top: 98,
              //heightFactor: 1.0,
              child: DefaultTextStyle(
                style: const TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 14.0,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Column(
                      children: <Widget>[

                        FadeTransition(opacity: animation,
                          child: Icon(
                            Icons.arrow_downward,
                            color: Colors.red,
                          ),
                        ),
                      ],
                    ),
                    FadeTransition(opacity: animation,
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width / 3,
                        height: 50.0,
                        child: Center(
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.red,
                                width: 4.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  introPage3(){

    double c_width = MediaQuery.of(context).size.width*0.8;

    return SafeArea(
      child: Container(
        color: Colors.black.withOpacity(0.7),
        child: Stack(
          children: [
            Positioned(
                left: 10,
                top: 10,
                child: IconButton(
                  icon: Icon(Icons.close,color: Colors.white,),
                  onPressed: (){
                    currentPageIndex=0;
                    removeHighlightOverlay();
                  },
                )
            ),
            Positioned(
                left: 50,
                top: 250,
                child: DefaultTextStyle(
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 14.0,

                    ),
                    child:
                    Container(
                      width: c_width,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Text(
                            "Your Notifications",
                            style: TextStyle(color: Colors.white,fontSize: 20,),
                          ),
                          SizedBox(height: 20,),

                          TypeWriterText(
                            text: Text('Nullam condimentum urna sit amet urna blandit sagittis. Phasellus in tempor metus. Aliquam feugiat vel dui vel porta.'),
                            duration: Duration(milliseconds: 10),
                          ),
                          SizedBox(height: 20,),
                          ElevatedButton(
                              onPressed: (){
                                setState(() {
                                  currentPageIndex=3;
                                });
                                createHighlightOverlay();
                              }
                              , child: Text("next")
                          ),

                        ],
                      ),
                    )

                )
            ),

            Positioned(
              right: 0,
              top: 0,
              //heightFactor: 1.0,
              child: DefaultTextStyle(
                style: const TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 14.0,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[

                    FadeTransition(opacity: animation,
                      child: SizedBox(
                        width: 50,
                        height: 50.0,
                        child: Center(
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.red,
                                width: 4.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Column(
                      children: <Widget>[

                        FadeTransition(opacity: animation,
                          child: Icon(
                            Icons.arrow_upward,
                            color: Colors.red,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  introPage4(){

    double c_width = MediaQuery.of(context).size.width*0.8;

    return SafeArea(
      child: Container(
        color: Colors.black.withOpacity(0.7),
        child: Stack(
          children: [
            Positioned(
                left: 10,
                top: 10,
                child: IconButton(
                  icon: Icon(Icons.close,color: Colors.white,),
                  onPressed: (){
                    currentPageIndex=0;
                    removeHighlightOverlay();
                  },
                )
            ),
            Positioned(
                left: 50,
                top: 200,
                child: DefaultTextStyle(
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 14.0,

                    ),
                    child:
                    Container(
                      width: c_width,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Text(
                            "Your upcoming appointments",
                            style: TextStyle(color: Colors.white,fontSize: 20,),
                          ),
                          SizedBox(height: 20,),

                          TypeWriterText(
                            text: Text('Nullam condimentum urna sit amet urna blandit sagittis. Phasellus in tempor metus. Aliquam feugiat vel dui vel porta.'),
                            duration: Duration(milliseconds: 10),
                          ),
                          SizedBox(height: 20,),
                          ElevatedButton(
                              onPressed: (){
                                currentPageIndex=4;
                                createHighlightOverlay(
                                );
                              }
                              , child: Text("next")
                          ),

                        ],
                      ),
                    )

                )
            ),

            Positioned(
              left: 0,
              top: 400,
              //heightFactor: 1.0,
              child: DefaultTextStyle(
                style: const TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 14.0,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[

                    FadeTransition(opacity: animation,
                      child: SizedBox(
                        width: 250,
                        height: 50.0,
                        child: Center(
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.red,
                                width: 4.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Column(
                      children: <Widget>[

                        FadeTransition(opacity: animation,
                          child: Icon(
                            Icons.arrow_upward,
                            color: Colors.red,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  introEndPage(){

    double c_width = MediaQuery.of(context).size.width*0.8;

    return SafeArea(
      child: Container(
        color: Colors.black.withOpacity(0.7),
        child: Stack(
          children: [
            Positioned(
                left: 10,
                top: 10,
                child: IconButton(
                  icon: Icon(Icons.close,color: Colors.white,),
                  onPressed: (){
                    currentPageIndex=0;
                    removeHighlightOverlay();
                  },
                )
            ),
            Positioned(
                left: 50,
                top: 200,
                child: DefaultTextStyle(
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 14.0,

                    ),
                    child:
                    Container(
                      width: c_width,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Text(
                            "That\'s all for now",
                            style: TextStyle(color: Colors.white,fontSize: 20,),
                          ),
                          SizedBox(height: 20,),

                          TypeWriterText(
                            text: Text('Praesent ut dapibus arcu. Nulla auctor sagittis aliquet. Vivamus tristique varius facilisis. Curabitur elementum sem vel ipsum sodales convallis.'),
                            duration: Duration(milliseconds: 10),
                          ),
                          SizedBox(height: 20,),
                          ElevatedButton(
                              onPressed: (){
                                currentPageIndex=0;
                                removeHighlightOverlay();
                              }
                              , child: Text("Finish")
                          ),

                        ],
                      ),
                    )

                )
            ),


          ],
        ),
      ),
    );
  }


  void createHighlightOverlay() {
    // Remove the existing OverlayEntry.
    removeHighlightOverlay();

    assert(overlayEntry == null);

    overlayEntry = OverlayEntry(
      // Create a new OverlayEntry.
      builder: (BuildContext context) {
        switch(currentPageIndex){
          case 0:
            return introPage1();
            //break;
          case 1:
            return introPage2();
          case 2:
            return introPage3();
          case 3:
            return introPage4();
          case 4:
            return introEndPage();
          default:
            return Container();
        }
        // Align is used to position the highlight overlay
        // relative to the NavigationBar destination.

      },
    );

    // Add the OverlayEntry to the Overlay.
    Overlay.of(context, debugRequiredFor: widget).insert(overlayEntry!);
  }

  // Remove the OverlayEntry.
  void removeHighlightOverlay() {

    overlayEntry?.remove();
    overlayEntry?.dispose();
    overlayEntry = null;
  }




  @override
  void initState() {
    _mainBloc = MainBloc();
    _introBloc = BlocProvider.of<IntroBloc>(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        foregroundColor: Theme.of(context).colorScheme.onBackground,
        iconTheme: context.theme.iconTheme,
        elevation: 0,
        scrolledUnderElevation: 2,
        actions: <Widget>[
          IconButton(
            onPressed: () {

              setState(() {
                currentPageIndex = 0;
              });
              createHighlightOverlay();


            },
            icon: Image.asset('images/bell-24.png'),
            tooltip: context.localizations.show_notifications,
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              child: SizedBox.shrink(),
            ),
            ListTile(
              title: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                  createHighlightOverlay();
                },
                child: Text("Launch Intro"),
              ),


            ),
            ListTile(
              title: Text(
                'Default',
                style: Theme.of(context)
                    .textTheme
                    .displaySmall
                    ?.copyWith(fontWeight: FontWeight.w400),
              ),
              trailing: BlocBuilder<MainBloc, MainState>(
                bloc: _mainBloc,
                buildWhen: (previous, current) =>
                previous.defaultVersion != current.defaultVersion,
                builder: (context, state) {
                  return Switch(
                    value: _mainBloc.state.defaultVersion,
                    onChanged: (bool value) => _mainBloc.add(
                      MainEvent.changeDashboard(defaultVersion: value),
                    ),
                  );
                },
              ),
              onTap: () => _mainBloc.add(
                MainEvent.changeDashboard(
                    fullDashboard: !_mainBloc.state.defaultVersion),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BlocBuilder<MainBloc, MainState>(
        bloc: _mainBloc,
        buildWhen: (previous, current) => previous.index != current.index,
        builder: (context, state) {
          return BottomNavigationBar(
            selectedItemColor: Theme.of(context).colorScheme.primary,
            unselectedItemColor: Theme.of(context).colorScheme.outline,
            selectedLabelStyle: context.textTheme.labelMedium,
            unselectedLabelStyle: context.textTheme.labelMedium,
            items: [
              BottomNavigationBarItem(
                icon: Image.asset(
                  'images/home-24.png',
                  color: state.index == 0 ? context.colorScheme.primary : null,
                ),
                label: context.localizations.home,
                backgroundColor: Theme.of(context).colorScheme.background,
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'images/schedule-24.png',
                  color: state.index == 1 ? context.colorScheme.primary : null,
                ),
                label: context.localizations.appointments,
                backgroundColor: Theme.of(context).colorScheme.background,
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'images/inbox-24.png',
                  color: state.index == 2 ? context.colorScheme.primary : null,
                ),
                label: context.localizations.inbox,
                backgroundColor: Theme.of(context).colorScheme.background,
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'images/money-24.png',
                  color: state.index == 3 ? context.colorScheme.primary : null,
                ),
                label: context.localizations.billing,
                backgroundColor: Theme.of(context).colorScheme.background,
              ),
            ],
            currentIndex: _mainBloc.state.index,
            onTap: (index) =>
                {_mainBloc.add(MainEvent.changePage(index: index))},
          );
        },
      ),
      floatingActionButtonLocation: ExpandableFab.location,
      floatingActionButton: ExpandableFab(
        type: ExpandableFabType.up,
        distance: 64,
        expandedFabSize: ExpandableFabSize.regular,
        closeButtonStyle: ExpandableFabCloseButtonStyle(
          child: const Icon(Icons.add_rounded),
          backgroundColor: context.colorScheme.primary,
        ),
        backgroundColor: context.colorScheme.primary,
        child: const Icon(Icons.add_rounded),
        children: [
          FloatingActionButton.extended(
            icon: Image.asset(
              'images/hospital.png',
              color: context.colorScheme.onPrimary,
            ),
            label: Text(
              context.localizations.find_new_clinic,
              style: context.textTheme.displaySmall
                  ?.copyWith(color: context.colorScheme.onPrimary),
            ),
            backgroundColor: context.colorScheme.primary,
            onPressed: () {},
          ),
          FloatingActionButton.extended(
            icon: Image.asset(
              'images/edit-20.png',
              color: context.colorScheme.onPrimary,
            ),
            label: Text(
              context.localizations.new_message,
              style: context.textTheme.displaySmall
                  ?.copyWith(color: context.colorScheme.onPrimary),
            ),
            backgroundColor: context.colorScheme.primary,
            onPressed: () {},
          ),
          FloatingActionButton.extended(
            icon: const Icon(Icons.add_rounded),
            label: Text(
              context.localizations.book_appointment,
              style: context.textTheme.displaySmall
                  ?.copyWith(color: context.colorScheme.onPrimary),
            ),
            backgroundColor: context.colorScheme.primary,
            onPressed: () {},
          ),
        ],
      ),
      body: SafeArea(
        child: BlocBuilder<MainBloc, MainState>(
          bloc: _mainBloc,
          builder: (context, state) {
            return _showPage();
          },
        ),
      ),
    );
  }

  Widget _showPage() {
    switch (_mainBloc.state.index) {
      case 0:
        return _mainBloc.state.defaultVersion
            ? const HomeScreen()
            : const HomeScreenAlternative();
      case 1:
        return const AppointmentScreen();
      case 2:
        return const InboxScreen();
      default:
        return const BillingScreen();
    }
  }
}
