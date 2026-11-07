import 'package:flutter/material.dart';
import '../../../../../core/theme/app_theme.dart';
import '../widgets/project_card.dart';

class MyProjectsScreen extends StatefulWidget {
  const MyProjectsScreen({super.key});

  @override
  State<MyProjectsScreen> createState() => _MyProjectsScreenState();
}

class _MyProjectsScreenState extends State<MyProjectsScreen> {
  int selectedFilterIndex = 0;
  final List<String> filters = ['All (3)', 'Pending (1)', 'Approved (1)', 'Rejected (1)'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'My Projects',
          style: TextStyle(
            color: AppColors.textPrimary,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: AppColors.textPrimary),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 60,
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: filters.length,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              itemBuilder: (context, index) {
                bool isSelected = selectedFilterIndex == index;
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedFilterIndex = index;
                    });
                  },
                  child: Container(
                    margin: const EdgeInsets.only(right: 8),
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    decoration: BoxDecoration(
                      color: isSelected ? AppColors.primary : Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: isSelected ? AppColors.primary : const Color(0xFFC4C3D0),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        filters[index],
                        style: TextStyle(
                          color: isSelected ? Colors.white : AppColors.textPrimary,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(16),
              children: const [
                ProjectCard(
                  status: 'Approved',
                  statusColor: Colors.green,
                  title: 'ClinicFlow - Intelligent Clinic Manager',
                  description: 'Full-stack Next.js and Flutter platform for clinic scheduling...',
                  category: 'Healthcare',
                  price: '8,500 EGP',
                  views: '342 views',
                  inquiries: '14 inquiries',
                ),
                ProjectCard(
                  status: 'Pending Review',
                  statusColor: Colors.orange,
                  title: 'ShopLite - Modern E-Commerce',
                  description: 'Retail platform with advanced shopping cart...',
                  category: 'Retail',
                  price: '6,000 EGP',
                  views: '120 views',
                  inquiries: '5 inquiries',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}