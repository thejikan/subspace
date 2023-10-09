import 'package:fk_sample/features/data/detailsRepository.dart';
import 'package:fk_sample/models/detailsModel.dart';
import 'package:fk_sample/models/detailsTypeConfig.dart';
import 'package:intl/intl.dart';
import 'package:rxdart/subjects.dart';

class DetailsService {
  IDetailsRepository repository;

  late DetailsModel _DetailsModel;
  late BehaviorSubject<DetailsModel> DetailsController;
  //
  DetailsService({required this.repository, DetailsModel? detailsModel}) {
    _DetailsModel = detailsModel ?? DetailsModel.empty();
  }


  List<DetailsTypeConfig> productsList(){

    List<DetailsTypeConfig> myData = [
      DetailsTypeConfig(
          title: "Apple",
          orderId: '58970931',
          amount: '102.00',
          date: DateFormat("yyyy-MM-dd hh:mm:ss").parse('2022-12-03 00:00:00'),
          place: 'Delhi'),
      DetailsTypeConfig(
          title: "Mango",
          orderId: '58970932',
          amount: '200.00',
          date: DateFormat("yyyy-MM-dd hh:mm:ss").parse('2023-1-01 00:00:00'),
          place: 'Delhi'),
      DetailsTypeConfig(
          title: "Banana",
          orderId: '58970933',
          amount: '100.00',
          date: DateFormat("yyyy-MM-dd hh:mm:ss").parse('2023-1-05 00:00:00'),
          place: 'Delhi'),
      DetailsTypeConfig(
          title: "Pumpkin",
          orderId: '58970934',
          amount: '102.00',
          date: DateFormat("yyyy-MM-dd hh:mm:ss").parse('2023-2-04 00:00:00'),
          place: 'Delhi'),
      DetailsTypeConfig(
          title: "Brinjal",
          orderId: '58970935',
          amount: '102.00',
          date: DateFormat("yyyy-MM-dd hh:mm:ss").parse('2023-2-09 00:00:00'),
          place: 'Delhi'),
      DetailsTypeConfig(
          title: "Pea",
          orderId: '58970921',
          amount: '102.00',
          date: DateFormat("yyyy-MM-dd hh:mm:ss").parse('2023-2-09 00:00:00'),
          place: 'Delhi'),
      DetailsTypeConfig(
          title: "Corn",
          orderId: '58970922',
          amount: '200.00',
          date: DateFormat("yyyy-MM-dd hh:mm:ss").parse('2023-2-03 00:00:00'),
          place: 'Delhi'),
      DetailsTypeConfig(
          title: "Pulse",
          orderId: '58970923',
          amount: '100.00',
          date: DateFormat("yyyy-MM-dd hh:mm:ss").parse('2023-2-03 00:00:00'),
          place: 'Delhi'),
      DetailsTypeConfig(
          title: "Pineapple",
          orderId: '58970924',
          amount: '102.00',
          date: DateFormat("yyyy-MM-dd hh:mm:ss").parse('2023-2-04 00:00:00'),
          place: 'Delhi'),
      DetailsTypeConfig(
          title: "Rice",
          orderId: '58970925',
          amount: '102.00',
          date: DateFormat("yyyy-MM-dd hh:mm:ss").parse('2023-2-05 00:00:00'),
          place: 'Delhi'),
      DetailsTypeConfig(
          title: "Wheat",
          orderId: '58970926',
          amount: '102.00',
          date: DateFormat("yyyy-MM-dd hh:mm:ss").parse('2023-2-02 00:00:00'),
          place: 'Delhi'),
      DetailsTypeConfig(
          title: "Carrot",
          orderId: '58970927',
          amount: '200.00',
          date: DateFormat("yyyy-MM-dd hh:mm:ss").parse('2023-2-02 00:00:00'),
          place: 'Delhi'),
      DetailsTypeConfig(
          title: "Cauliflower",
          orderId: '58970928',
          amount: '100.00',
          date: DateFormat("yyyy-MM-dd hh:mm:ss").parse('2023-2-15 00:00:00'),
          place: 'Delhi'),
      DetailsTypeConfig(
          title: "Ladyfinger",
          orderId: '58970929',
          amount: '102.00',
          date: DateFormat("yyyy-MM-dd hh:mm:ss").parse('2023-2-20 00:00:00'),
          place: 'Delhi'),
      DetailsTypeConfig(
          title: "Tomato",
          orderId: '58970930',
          amount: '102.00',
          date: DateFormat("yyyy-MM-dd hh:mm:ss").parse('2023-2-25 00:00:00'),
          place: 'Delhi')
    ];

    return myData;
    // todo: use repository for getting this product list
  }


}
