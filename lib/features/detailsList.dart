// import 'package:fk_sample/models/detailsTypeConfig.dart';
// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';
//
// class DetailsTypes extends StatelessWidget {
//   final bool? isSelectAllSelected;
//   final Function(bool)? onChanged;
//   final List<DetailsTypeConfig> transactionTypeList;
//   final Function()? onFilterClicked;
//   final ValueChanged<bool?>? onSelectAllClicked;
//   final String? selectAllText;
//   final List<String>? selectedTransactions;
//   final Widget filterWidget;
//
//   const DetailsTypes(
//       {Key? key,
//         this.isSelectAllSelected,
//         this.onChanged,
//         required this.transactionTypeList,
//         this.onFilterClicked,
//         this.onSelectAllClicked,
//         this.selectAllText,
//         this.selectedTransactions,
//         required this.filterWidget})
//       : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     List<DetailsTypeConfig> transactionTypeSortedList =
//     _sortByDate(transactionTypeList);
//
//     return Padding(
//       padding: const EdgeInsets.symmetric(
//           horizontal: 16.0, vertical: 8.0),
//       child: Column(
//         children: [
//           Padding(
//             padding: const EdgeInsets.symmetric(vertical: 12.0),
//             child: Row(
//               children: [
//                 filterWidget,
//                 Expanded(
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.end,
//                     children: [
//                       if (selectAllText != null) Text(selectAllText!),
//                       Checkbox(
//                         materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
//                         value: isSelectAllSelected,
//                         onChanged: onSelectAllClicked,
//                         activeColor: UdtColors.blueTrust,
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Column(
//             children: transactionTypeSortedList.map((transactionTypeListItem) {
//               return InkWell(
//                 onTap: () {
//                   _onTabCheck(transactionTypeListItem);
//                 },
//                 child: Padding(
//                   padding: const EdgeInsets.only(bottom: 8.0),
//                   child: Container(
//                     decoration: BoxDecoration(
//                       color: UdtColors.white100,
//                       borderRadius:
//                       const BorderRadius.all(Radius.circular(10.0)),
//                       boxShadow: [
//                         BoxShadow(
//                           color: Colors.grey.withOpacity(0.5),
//                           spreadRadius: 1,
//                           blurRadius: 1,
//                           offset:
//                           const Offset(0, 1), // changes position of shadow
//                         ),
//                       ],
//                     ),
//                     alignment: Alignment.centerLeft,
//                     child: Padding(
//                       padding: const EdgeInsets.symmetric(
//                           vertical: UDTspacings.spacingL),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Expanded(
//                             child: Padding(
//                               padding: const EdgeInsets.only(
//                                   left: UDTspacings.spacingM,
//                                   top: UDTspacings.spacingXS),
//                               child: Column(
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   Padding(
//                                     padding: const EdgeInsets.only(
//                                         bottom: UDTspacings.spacingXXS),
//                                     child: Text(
//                                       transactionTypeListItem.title,
//                                       style: UdtTypography.bodySmallBold,
//                                     ),
//                                   ),
//                                   Text(
//                                     "No. de orden: ${transactionTypeListItem.order}",
//                                     style: UdtTypography.bodySmall,
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ),
//                           Expanded(
//                             child: Row(
//                               crossAxisAlignment: CrossAxisAlignment.end,
//                               mainAxisAlignment: MainAxisAlignment.end,
//                               children: [
//                                 Column(
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   crossAxisAlignment: CrossAxisAlignment.end,
//                                   children: [
//                                     Padding(
//                                       padding: const EdgeInsets.only(
//                                           bottom: UDTspacings.spacingXXS),
//                                       child: Text(
//                                         "\$${transactionTypeListItem.amount}",
//                                         style: UdtTypography.bodySmallBold,
//                                       ),
//                                     ),
//                                     Text(
//                                       DateFormat("yyyy/MM/dd")
//                                           .format(transactionTypeListItem.date),
//                                       // transactionTypeListItem.date,
//                                       style: UdtTypography.bodySmall,
//                                     ),
//                                   ],
//                                 ),
//                                 Checkbox(
//                                   materialTapTargetSize:
//                                   MaterialTapTargetSize.shrinkWrap,
//                                   value: transactionTypeListItem.isChecked,
//                                   onChanged: (bool? newValue) {
//                                     _onTabCheck(transactionTypeListItem);
//                                   },
//                                   activeColor: UdtColors.blueTrust,
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//               );
//             }).toList(),
//           ),
//         ],
//       ),
//     );
//   }
//
//   void _onTabCheck(DetailsTypeConfig transactionTypeListItem) {
//     if (!transactionTypeListItem.isChecked) {
//       selectedTransactions?.add(transactionTypeListItem.order);
//     } else {
//       selectedTransactions?.remove(transactionTypeListItem.order);
//     }
//     transactionTypeListItem.isChecked = !transactionTypeListItem.isChecked;
//
//     onChanged!(!transactionTypeListItem.isChecked);
//   }
//
//   List<DetailsTypeConfig> _sortByDate(
//       List<DetailsTypeConfig> transactions) {
//     transactions.sort((a, b) {
//       var adate = a.date;
//       var bdate = b.date;
//       return -adate.compareTo(bdate);
//     });
//     return transactions;
//   }
// }
