import 'package:alvin_mock_app/config/Palette.dart';
import 'package:alvin_mock_app/widgets/BudgetCard.dart';
import 'package:flutter/material.dart';

class BudgetPage extends StatelessWidget {
  BudgetPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List budgetList = [
      const BudgetCard(
        title: 'Overview',
        icon: Icon(
          Icons.card_giftcard_rounded,
          color: Palette.goldColor,
          size: 30,
        ),
      ),
      const BudgetCard(
        title: 'Transport',
        icon: Icon(
          Icons.emoji_transportation_outlined,
          color: Palette.goldColor,
          size: 30,
        ),
      ),
      const BudgetCard(
        title: 'Healthcare',
        icon: Icon(
          Icons.health_and_safety_outlined,
          color: Palette.goldColor,
          size: 30,
        ),
      ),
      const BudgetCard(
        title: 'Water & Electricity',
        icon: Icon(
          Icons.health_and_safety_outlined,
          color: Palette.goldColor,
          size: 30,
        ),
      )
    ];

    List wantsList = [
      const BudgetCard(
        title: 'House',
        icon: Icon(
          Icons.card_giftcard_rounded,
          color: Palette.goldColor,
          size: 30,
        ),
      ),
      const BudgetCard(
        title: 'Car',
        icon: Icon(
          Icons.emoji_transportation_outlined,
          color: Palette.goldColor,
          size: 30,
        ),
      ),
    ];
    List savingsList = [
      const BudgetCard(
        title: 'Cryptocurrency investments',
        icon: Icon(
          Icons.card_giftcard_rounded,
          color: Palette.goldColor,
          size: 30,
        ),
      ),
    ];
    return DefaultTabController(
      length: 3,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Palette.primaryColor.withOpacity(.06),
              borderRadius: BorderRadius.circular(16),
            ),
            margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
            padding: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 8.0),
            child: TabBar(
              labelColor: Palette.primaryColor,
              labelStyle: const TextStyle(fontSize: 16, fontFamily: 'Poppins-Bold'),
              unselectedLabelColor: Palette.accentColor,
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Palette.tertiaryColor,
              ),
              tabs: const [
                Tab(text: 'Essentials'),
                Tab(text: 'Wants'),
                Tab(text: 'Savings'),
              ],
              indicatorSize: TabBarIndicatorSize.tab,
            ),
          ),
          Flexible(
            child: TabBarView(
              children: [
                ListOfBudgetCards(budgetCards: budgetList),
                ListOfBudgetCards(budgetCards: wantsList),
                ListOfBudgetCards(budgetCards: savingsList),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ListOfBudgetCards extends StatelessWidget {
  const ListOfBudgetCards({Key? key, this.budgetCards}) : super(key: key);
  final List? budgetCards;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return SizedBox(
      width: width,
      child: ListView.builder(
        itemCount: budgetCards!.length,
        itemBuilder: (BuildContext context, int index) {
          final budgetCard = budgetCards![index];
          return BudgetCard(
            title: budgetCard.title,
            icon: budgetCard.icon,
          );
        },
      ),
    );
  }
}
