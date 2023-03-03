import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const locationBadgeTextColor = Color(0xff292E69);
final TextStyle tsLocation = GoogleFonts.poppins(
  fontSize: 32,
  fontWeight: FontWeight.w700,
  color: locationBadgeTextColor,
);
final TextStyle tsSubInformation = GoogleFonts.poppins(
  fontSize: 20,
  fontWeight: FontWeight.w500,
  color: locationBadgeTextColor,
);

class IconTextBadge extends StatelessWidget {
  const IconTextBadge({
    Key? key,
    required this.location,
    required this.icon,
    required this.isLocationBadge,
  }) : super(key: key);

  final String location;
  final IconData icon;
  final bool isLocationBadge;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: isLocationBadge
          ? const EdgeInsets.only(left: 25, right: 25, top: 5)
          : const EdgeInsets.only(left: 0, right: 0, top: 0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            color: locationBadgeTextColor,
            size: isLocationBadge ? 32 : 24,
          ),
          const SizedBox(width: 10),
          Text(
            location,
            style: isLocationBadge ? tsLocation : tsSubInformation,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}