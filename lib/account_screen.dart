import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text(
          'My Accounts',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          CircleAvatar(
            radius: 20,
            backgroundColor: Colors.grey[200],
            child: const Icon(Icons.person, color: Colors.grey),
          ),
          const SizedBox(width: 8),
          IconButton(
            icon: const Icon(Icons.qr_code_scanner, color: Colors.black),
            onPressed: () {},
          ),
          Stack(
            children: [
              IconButton(
                icon: const Icon(Icons.notifications, color: Colors.black),
                onPressed: () {},
              ),
              Positioned(
                right: 8,
                top: 8,
                child: Container(
                  padding: const EdgeInsets.all(2),
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 99, 68, 255),
                    shape: BoxShape.circle,
                  ),
                  constraints: const BoxConstraints(
                    minWidth: 16,
                    minHeight: 16,
                  ),
                  child: const Text(
                    '5',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(width: 16),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.add),
              label: const Text('New'),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 99, 68, 255),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView(
                children: const [
                  AccountTile(
                    countryFlag: '🇺🇸',
                    accountType: 'Default/Main account',
                    currency: 'USD',
                    balance: '\$66,527.94',
                    creationDate: '16/04/2024',
                  ),
                  AccountTile(
                    countryFlag: '🇬🇧',
                    accountType: 'Business Deals',
                    currency: 'GDP',
                    balance: '€5,275.87',
                    creationDate: '01/09/2022',
                  ),
                  AccountTile(
                    countryFlag: '🇨🇦',
                    accountType: 'School/Education',
                    currency: 'CAD',
                    balance: '\$6,527.94',
                    creationDate: '24/05/2023',
                  ),
                  AccountTile(
                    countryFlag: '🇦🇪',
                    accountType: 'Freelance Contract UAE',
                    currency: 'UAE',
                    balance: '711.43',
                    creationDate: '13/06/2023',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_wallet),
            label: 'Accounts',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.credit_card),
            label: 'Cards',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: 'Hub',
          ),
        ],
        currentIndex: 1, // Set Accounts tab as active
        selectedItemColor: const Color.fromARGB(158, 46, 56, 163),
        onTap: (index) {
          // Handle navigation
        },
      ),
    );
  }
}

class AccountTile extends StatelessWidget {
  final String countryFlag;
  final String accountType;
  final String currency;
  final String balance;
  final String creationDate;

  const AccountTile({
    super.key,
    required this.countryFlag,
    required this.accountType,
    required this.currency,
    required this.balance,
    required this.creationDate,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey[300]!),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text(
                countryFlag,
                style: const TextStyle(fontSize: 24),
              ),
              const SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    accountType,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(currency),
                ],
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                balance,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text('Created On $creationDate'),
            ],
          ),
        ],
      ),
    );
  }
}
