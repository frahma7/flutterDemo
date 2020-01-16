import 'package:flutter/material.dart';
import 'coin_data.dart';
import 'package:flutter/cupertino.dart';
import 'dart:io' show Platform;

CoinData coinData = CoinData();

class PriceScreen extends StatefulWidget {
  static const String id = 'bitcoin_screen';
  @override
  _PriceScreenState createState() => _PriceScreenState();
}

class _PriceScreenState extends State<PriceScreen> {
  String selectedCurrency = currenciesList[0];
  Map<String, double> data;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    findCurrencyData();
  }

  void findCurrencyData() async {
    try {
      Map<String, double> data =
          await coinData.getConversionData(selectedCurrency);
      setState(() {
        this.data = data;
      });
    } catch (e) {
      print(e);
    }
  }

  Widget createCoinConversionCard(String crypto, String value) {
    return Padding(
      padding: EdgeInsets.fromLTRB(18.0, 18.0, 18.0, 0),
      child: Card(
        color: Colors.lightBlueAccent,
        elevation: 5.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 28.0),
          child: Text(
            '1 $crypto = $value $selectedCurrency',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }

  Widget updateCards() {
    if (data == null || data.length == 0)
      return Center(
        child: Text(
          'Loading...',
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
      );
    else {
      List<Widget> list = [];
      data.forEach((crypto, value) {
        Widget item =
            createCoinConversionCard(crypto, value.toStringAsFixed(2));
        list.add(item);
      });
      return Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: list,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('🤑 Coin Ticker'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          updateCards(),
          Container(
            height: 150.0,
            alignment: Alignment.center,
            padding: EdgeInsets.only(bottom: 30.0),
            color: Colors.lightBlue,
            child: currencyPicker(),
          ),
        ],
      ),
    );
  }

  DropdownButton<String> createDropDownItemsForAndroid() {
    List<DropdownMenuItem<String>> list = [];
    for (String currency in currenciesList) {
      var item = DropdownMenuItem(
        child: Text(currency),
        value: currency,
      );
      list.add(item);
    }
    return DropdownButton<String>(
      value: selectedCurrency,
      items: list,
      onChanged: (value) {
        setState(() {
          selectedCurrency = value;
          findCurrencyData();
        });
      },
    );
  }

  CupertinoPicker createPickerForiOS() {
    List<Text> list = [];
    for (String currency in currenciesList) {
      var item = Text(currency);
      list.add(item);
    }
    return CupertinoPicker(
      backgroundColor: Colors.lightBlue,
      itemExtent: 32,
      onSelectedItemChanged: (value) {
        setState(() {
          selectedCurrency = list[value].data;
          findCurrencyData();
        });
      },
      children: list,
    );
  }

  Widget currencyPicker() {
    if (Platform.isIOS)
      return createPickerForiOS();
    else if (Platform.isAndroid) return createDropDownItemsForAndroid();
    return null;
  }
}
