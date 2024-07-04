import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final PageController _pageController = PageController();
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    if (index == 1) {
      Navigator.pushNamed(context, '/accounts');
    }
    // Add other navigation logic if needed
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.grey[200],
                        child: const Icon(Icons.person, color: Colors.grey),
                      ),
                      const SizedBox(width: 8),
                      const Text(
                        'Ovie J',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Icon(Icons.arrow_forward_ios, size: 16),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(Icons.qr_code_scanner),
                      const SizedBox(width: 16), // Space between barcode and notification
                      IconButton(
                        icon: const Icon(Icons.account_balance_wallet),
                        onPressed: () {
                          Navigator.pushNamed(context, '/accounts');
                        },
                      ),
                      Stack(
                        children: [
                          const Icon(Icons.notifications),
                          Positioned(
                            right: 0,
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
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 24),
              const Text(
                '\$85,429',
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Total Balance in base currency of USD',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 24),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 99, 68, 255),
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24), // More rounded corners
                        ),
                      ),
                      child: const Text('Add Money', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24), // More rounded corners
                        ),
                      ),
                      child: const Text('Send Money', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.grey),
                    ),
                    child: IconButton(
                      icon: const Icon(Icons.more_horiz),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              const Text(
                'Quick Actions',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              SizedBox(
                height: 150,
                child: PageView(
                  controller: _pageController,
                  children: const [
                    QuickActionPage(
                      quickActions: [
                        QuickActionItem(
                          icon: Icons.swap_horiz,
                          title: 'Recent Transfers',
                          subtitle: 'Effortless payments to those you send to often.',
                          imageUrls: ['url1', 'url2', 'url3'],
                        ),
                        QuickActionItem(
                          icon: Icons.monetization_on,
                          title: 'Crypto Purchase',
                          subtitle: 'Securely buy your favorite cryptocurrencies.',
                          imageUrls: [],
                        ),
                      ],
                    ),
                    QuickActionPage(
                      quickActions: [
                        QuickActionItem(
                          icon: Icons.receipt,
                          title: 'Generate Invoice',
                          subtitle: 'Create and manage your invoices.',
                          imageUrls: [],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 8),
              Center(
                child: SmoothPageIndicator(
                  controller: _pageController,
                  count: 2,
                  effect: const WormEffect(
                    dotHeight: 8,
                    dotWidth: 8,
                    activeDotColor: Color.fromARGB(255, 99, 68, 255),
                    dotColor: Colors.grey,
                  ),
                ),
              ),
              const SizedBox(height: 24),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.grey[300]!), // Grey outline
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'All Operations',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Spendings in June, 2024',
                      style: TextStyle(color: Colors.grey),
                    ),
                    const SizedBox(height: 8),
                    LinearProgressIndicator(
                      value: 0.6,
                      backgroundColor: Colors.grey[300],
                      valueColor: const AlwaysStoppedAnimation<Color>(Color.fromARGB(255, 99, 68, 255)),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      '\$8,562.89',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Recent Transactions',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'See all',
                    style: TextStyle(color: Color.fromARGB(255, 99, 68, 255)),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Expanded(
                child: ListView(
                  children: const [
                    ListTile(
                      leading: CircleAvatar(child: Text('MB')),
                      title: Text('Micheal B.'),
                      subtitle: Text('August 3, 2024. Payment'),
                      trailing: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '-\$5,000',
                            style: TextStyle(color: Colors.red, fontSize: 16),
                          ),
                          Text(
                            'Pending',
                            style: TextStyle(color: Colors.orange, fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                    ListTile(
                      leading: CircleAvatar(child: Text('G')),
                      title: Text('Google Inc'),
                      subtitle: Text('July 12, 2024. Deposit'),
                      trailing: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '+\$20,000',
                            style: TextStyle(color: Colors.green, fontSize: 16),
                          ),
                          Text(
                            'Received',
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
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
        currentIndex: _selectedIndex,
        selectedItemColor: const Color.fromARGB(255, 99, 68, 255),
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}

class QuickActionPage extends StatelessWidget {
  final List<QuickActionItem> quickActions;

  const QuickActionPage({super.key, required this.quickActions});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: quickActions,
    );
  }
}

class QuickActionItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final List<String> imageUrls;

  const QuickActionItem({super.key, 
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.imageUrls,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160, // Adjusted width to better match the provided image
      margin: const EdgeInsets.only(right: 8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey[300]!), // Grey outline
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              for (var url in imageUrls)
                const Padding(
                  padding: EdgeInsets.only(right: 4),
                  child: CircleAvatar(
                    radius: 10,
                    backgroundColor: Colors.grey,
                    // backgroundImage: NetworkImage(url), // Use actual images in a real app
                    child: Icon(Icons.person, size: 10),
                  ),
                ),
              const Spacer(),
              const Icon(Icons.arrow_forward_ios, size: 16),
            ],
          ),
          const Spacer(),
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            subtitle,
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
