import 'package:flutter/material.dart';
import '../theme/app_theme.dart';


class FixedBottomNavBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  const FixedBottomNavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:  BoxDecoration(
        color: AppColors.tertiary,
        border: Border.all(color: const Color(0xFFE0E0E0)),
        borderRadius: BorderRadius.vertical(top: Radius.circular(21)),
      ),
      child: SafeArea(
        child: SizedBox(
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _item(0, Icons.layers, 'Projects',),
              _item(1, Icons.add_circle_outline, 'Add'),
              _item(2, Icons.assignment_outlined, 'Requests'),
              _item(3, Icons.account_circle_outlined, 'Profile'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _item(int index, IconData icon, String label) {
    final isSelected = currentIndex == index;
    final color = isSelected ? Colors.white : AppColors.textSecondary;

    return InkWell(
      onTap: () => onTap(index),
      borderRadius: BorderRadius.circular(30),
      child:AnimatedContainer(
        duration:const Duration(milliseconds: 200), 
        padding: isSelected
            ? const EdgeInsets.symmetric(horizontal: 16, vertical: 10)
            : const EdgeInsets.symmetric(horizontal: 10, vertical: 8), 
            decoration: BoxDecoration(color: isSelected ? AppColors.primary : AppColors.tertiary,
             borderRadius: BorderRadius.circular(30)),
      
      child:isSelected?
       Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: isSelected?AppColors.background:AppColors.textSecondary, size: 22),
          SizedBox(width: 8),
          Text(
            label,
            style: TextStyle(
              color: AppColors.background,
              fontSize: 13,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ):
      Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: color, size: 22),
          SizedBox(height: 4),
          Text(
            label,
            style: TextStyle(
              color: AppColors.textSecondary,
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    ),
    );
  }
}