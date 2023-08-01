import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../common/app_colors.dart';

Widget mySliverAppBar(viewModel, width) {
  return SliverAppBar(
    toolbarHeight: 0,
    backgroundColor: lightGreenHeigh,
    pinned: true,
    floating: false,
    bottom: PreferredSize(
      preferredSize: Size(width, 50),
      child: Column(
        children: [
          TabBar(
            onTap: (index) => viewModel.indexing(index),
            unselectedLabelColor: darkGreenHeigh,
            labelColor: Colors.white,
            labelStyle: GoogleFonts.ibmPlexSans(fontSize: 10),
            indicator: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10)), // Creates border
                color: darkGreenHeigh),
            padding: const EdgeInsets.symmetric(horizontal: 10),
            tabs: [
              Tab(
                child: const Text(
                  'earlyPaybackPenalty',
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
                ).tr(),
              ),
              Tab(
                child: const Text(
                  'sourceOfIncome',
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
                ).tr(),
              ),
              Tab(
                child: const Text(
                  'outstandingLoan',
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
                ).tr(),
              ),
            ],
          ),
          const Divider(
            color: darkGreenHeigh,
            height: 1.0,
            thickness: 3,
          ),
        ],
      ),
    ),
  );
}
