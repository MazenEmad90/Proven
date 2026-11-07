import 'package:flutter/material.dart';
import 'package:proven/core/theme/app_theme.dart';

class ProjectCard extends StatelessWidget {
  final String status;
  final Color statusColor;
  final String title;
  final String description;
  final String category;
  final String price;
  final String views;
  final String inquiries;

  const ProjectCard({
    super.key,
    required this.status,
    required this.statusColor,
    required this.title,
    required this.description,
    required this.category,
    required this.price,
    required this.views,
    required this.inquiries,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: const Color(0xFFC4C3D0)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            blurRadius: 3,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                decoration: BoxDecoration(
                  color: statusColor.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(width: 6, height: 6, decoration: BoxDecoration(color: statusColor, shape: BoxShape.circle)),
                    const SizedBox(width: 6),
                    Text(status, style: TextStyle(color: statusColor, fontWeight: FontWeight.bold, fontSize: 12)),
                  ],
                ),
              ),
              Text(price, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: AppColors.textPrimary)),
            ],
          ),
          const SizedBox(height: 12),
          Text(category, style: const TextStyle(color: AppColors.textSecondary, fontSize: 12)),
          const SizedBox(height: 4),
          Text(title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: AppColors.textPrimary)),
          const SizedBox(height: 4),
          Text(description, style: const TextStyle(color: AppColors.textSecondary, fontSize: 13), maxLines: 2, overflow: TextOverflow.ellipsis),
          const Divider(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('$views · $inquiries', style: const TextStyle(color: AppColors.textSecondary, fontSize: 12)),
              Row(
                children: [
                  IconButton(icon: const Icon(Icons.edit, size: 18, color: AppColors.textSecondary), onPressed: () {}),
                  IconButton(icon: const Icon(Icons.delete, size: 18, color: Colors.red), onPressed: () {}),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}