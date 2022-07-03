import 'package:fast_call_app/models/call_list.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';


class HomeUI extends StatefulWidget {
  const HomeUI({Key? key}) : super(key: key);

  @override
  State<HomeUI> createState() => _HomeUIState();
}

class _HomeUIState extends State<HomeUI> {
  Future<void> _makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launchUrl(launchUri);
  }

  List<CallList> callListP = [
    CallList(
      name: 'เหตุด่วนเหตุร้าย',
      number: '191',
    ),
    CallList(
      name: 'ดับเพลิง สัตว์ร้ายเข้าบ้าน',
      number: '199',
    ),
    CallList(
      name: 'กู้ชีพ วชิรพยาบาล',
      number: '1154',
    ),
    CallList(
      name: 'จส.ร้อย',
      number: '1137',
    ),
    CallList(
      name: 'ตำรวจท่องเที่ยว',
      number: '1155',
    ),
    CallList(
      name: 'กองปราบปราม',
      number: '1195',
    ),
  ];
  List<CallList> callListE = [
    CallList(
      name: 'การไฟฟ้านครหลวง',
      number: '1130',
    ),
    CallList(
      name: 'การไฟฟ้าส่วนภูมิภาค',
      number: '1129',
    ),
    CallList(
      name: 'การประปานครหลวง',
      number: '1125',
    ),
    CallList(
      name: 'การประปาส่วนภูมิภาค',
      number: '1662',
    ),
  ];
  List<CallList> callListM = [
    CallList(
      name: 'ไปรษณีย์ไทย',
      number: '1545',
    ),
    CallList(
      name: 'ศูรย์รับแจ้งการเงินนอกระบบ',
      number: '1359',
    ),
    CallList(
      name: 'สายด่วน บขส.',
      number: '1490',
    ),
    CallList(
      name: 'สายด่วนประกันสังคม',
      number: '1506',
    ),
    CallList(
      name: 'รถไฟฟ้า BTS',
      number: '026176000',
    ),
    CallList(
      name: 'รถไฟใต้ดิน MRT',
      number: '026245200',
    ),
  ];
  List<CallList> callListB = [
    CallList(
      name: 'ธนาคารออมสิน',
      number: '1115',
    ),
    CallList(
      name: 'ธนาคารกรุงเทพ',
      number: '1333',
    ),
    CallList(
      name: 'ธนาคารกรุงไทย',
      number: '1551',
    ),
    CallList(
      name: 'ธนาคารกรุงศรีอยุธยา',
      number: '1572',
    ),
    CallList(
      name: 'ธนาคารทหารไทย',
      number: '1558',
    ),
    CallList(
      name: 'ธนาคารซิตี้แบงค์',
      number: '1588',
    ),
  ];
  List<CallList> callListI = [
    CallList(
      name: 'DTAC',
      number: '1678',
    ),
    CallList(
      name: 'AIS',
      number: '1175',
    ),
    CallList(
      name: 'TRUE',
      number: '1331',
    ),
    CallList(
      name: 'TOT',
      number: '1100',
    ),
    CallList(
      name: '3BB',
      number: '1530',
    ),
    CallList(
      name: 'CAT',
      number: '1322',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow[800],
        title: Text(
          'รายการ',
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              'เหตุฉุกเฉิน',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Expanded(
              child: ListView.separated(
                separatorBuilder: (context, index) {
                  return Divider();
                },
                itemCount: callListP.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: () {
                      _makePhoneCall(
                        callListP[index].number!,
                      );
                    },
                    title: Text(
                      callListP[index].name!,
                    ),
                    subtitle: Text(
                      callListP[index].number!,
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                    ),
                  );
                },
              ),
            ),
            Text(
              'แจ้งไฟดับ น้ำไม่ไหล',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Expanded(
              child: ListView.separated(
                separatorBuilder: (context, index) {
                  return Divider();
                },
                itemCount: callListE.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: () {
                      _makePhoneCall(
                        callListE[index].number!,
                      );
                    },
                    title: Text(
                      callListE[index].name!,
                    ),
                    subtitle: Text(
                      callListE[index].number!,
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                    ),
                  );
                },
              ),
            ),
            Text(
              'หน่วยงานต่างๆ',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Expanded(
              child: ListView.separated(
                separatorBuilder: (context, index) {
                  return Divider();
                },
                itemCount: callListM.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: () {
                      _makePhoneCall(
                        callListM[index].number!,
                      );
                    },
                    title: Text(
                      callListM[index].name!,
                    ),
                    subtitle: Text(
                      callListM[index].number!,
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                    ),
                  );
                },
              ),
            ),
            Text(
              'สายด่วนธนาคาร',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Expanded(
              child: ListView.separated(
                separatorBuilder: (context, index) {
                  return Divider();
                },
                itemCount: callListB.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: () {
                      _makePhoneCall(
                        callListB[index].number!,
                      );
                    },
                    title: Text(
                      callListB[index].name!,
                    ),
                    subtitle: Text(
                      callListB[index].number!,
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                    ),
                  );
                },
              ),
            ),
            Text(
              'ผู้ให้บริการโทรศัพท์และอินเตอร์เน็ต',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Expanded(
              child: ListView.separated(
                separatorBuilder: (context, index) {
                  return Divider();
                },
                itemCount: callListI.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: () {
                      _makePhoneCall(
                        callListI[index].number!,
                      );
                    },
                    title: Text(
                      callListI[index].name!,
                    ),
                    subtitle: Text(
                      callListI[index].number!,
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
