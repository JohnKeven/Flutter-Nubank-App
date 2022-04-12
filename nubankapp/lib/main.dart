// ignore_for_file: camel_case_types, import_of_legacy_library_into_null_safe

import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Nubank',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: const home());
  }
}

Color backgroundColor = const Color.fromRGBO(131, 10, 210, 1);
Color secondaryPurple = const Color.fromRGBO(155, 59, 218, 1);
Color greyColor = const Color.fromRGBO(240, 241, 245, 1);

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  void initState() {
    //_setStatusBarColor();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: _appBar(),
      body: _body(),
    );
  }

  _appBar() {
    return PreferredSize(
      child: AppBar(
        elevation: 0,
        //brightness: Brightness.dark,
      ),
      preferredSize: const Size.fromHeight(0),
    );
  }

  _icon(icon) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: Icon(
        icon,
        color: Colors.white,
      ),
    );
  }

  _profile() {
    return InkWell(
      child: Container(
        margin: const EdgeInsets.all(15),
        padding: const EdgeInsets.all(7),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: secondaryPurple),
        child: const Icon(
          MdiIcons.accountOutline,
          color: Colors.white,
        ),
      ),
      onTap: () {},
    );
  }

  _options() {
    return Row(
      children: [
        _icon(MdiIcons.eyeOutline),
        _icon(MdiIcons.helpCircleOutline),
        _icon(MdiIcons.emailPlus),
      ],
    );
  }

  _welcome() {
    return Container(
      margin: const EdgeInsets.only(left: 20, bottom: 15),
      child: const Text(
        "Olá, John",
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  _header() {
    return Container(
      color: backgroundColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _profile(),
              _options(),
            ],
          ),
          _welcome(),
        ],
      ),
    );
  }

  _body() {
    return SafeArea(
      child: Container(
        color: Colors.white,
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _header(),
                _account(),
                _myCards(),
                _info(),
                _divider(),
                _creditCard(),
                _divider(),
                _loanArea(),
                _divider(),
                _easynvest(),
                _divider(),
                _lifeInsurance(),
                _divider(),
                _discover()
              ],
            ),
          ),
        ),
      ),
    );
  }

  _account() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _accountText(),
          _money(),
          _actions(),
          _myCards(),
          _info(),
          _divider(),
          _creditCard(),
          _divider(),
          _loanArea(),
        ],
      ),
    );
  }

  _loanArea() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _loanIcon(),
          _loanText(),
          _loanValue(),
        ],
      ),
    );
  }

  _loanIcon() {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: const Icon(MdiIcons.cash),
    );
  }

  _loanText() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Text(
          'Empréstimo',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        Icon(MdiIcons.chevronRight),
      ],
    );
  }

  _loanValue() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'Valor disponível até',
            style: TextStyle(color: Colors.grey),
          ),
          Text(
            'R\$ 100.000,00',
            style: TextStyle(color: Colors.grey),
          ),
        ],
      ),
    );
  }

  _creditCard() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _creditCardIcon(),
          _creditCardText(),
          _invoiceText(),
          _invoiceValue(),
          _limitText(),
        ],
      ),
    );
  }

  _invoiceText() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: const Text(
        'Fatura Atual',
        style: TextStyle(color: Colors.grey),
      ),
    );
  }

  _invoiceValue() {
    return const Text(
      'R\$ 500,00',
      style: TextStyle(
        fontSize: 23,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  _limitText() {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      child: const Text(
        'Limite disponível de R\$ 5.000,00',
        style: TextStyle(
          color: Colors.grey,
        ),
      ),
    );
  }

  _creditCardIcon() {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: const Icon(MdiIcons.creditCard),
    );
  }

  _creditCardText() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Text(
          'Cartão de Crédito',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        Icon(MdiIcons.chevronRight),
      ],
    );
  }

  _divider() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      child: const Divider(
        thickness: 2,
      ),
    );
  }

  _info() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          _loan(),
          _saveMoney(),
        ],
      ),
    );
  }

  _loan() {
    return Container(
      width: MediaQuery.of(context).size.width * .7,
      margin: const EdgeInsets.only(left: 20, top: 10),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: greyColor, borderRadius: BorderRadius.circular(15)),
      child: RichText(
        text: TextSpan(
          children: [
            const TextSpan(
              text: 'Você tem R\$ 100.000,00 disponíveis para ',
              style: TextStyle(color: Colors.black),
            ),
            TextSpan(
              text: 'empréstimo',
              style: TextStyle(color: backgroundColor),
            ),
          ],
        ),
      ),
    );
  }

  _saveMoney() {
    return Container(
      width: MediaQuery.of(context).size.width * .7,
      margin: const EdgeInsets.only(left: 10, top: 10, right: 20),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: greyColor, borderRadius: BorderRadius.circular(15)),
      child: RichText(
        text: TextSpan(
          children: [
            const TextSpan(
              text: 'Conquiste planos futuros: conheça as opções para ',
              style: TextStyle(color: Colors.black),
            ),
            TextSpan(
              text: 'guardar dinheiro',
              style: TextStyle(color: backgroundColor),
            ),
          ],
        ),
      ),
    );
  }

  _myCards() {
    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: greyColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          const Icon(MdiIcons.creditCard),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            child: const Text('Meus Cartões'),
          ),
        ],
      ),
    );
  }

  _actions() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      // padding: const EdgeInsets.only(left: 10),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            _actionItem(icon: MdiIcons.clover, name: "Área Pix", isFirst: true),
            _actionItem(icon: MdiIcons.barcode, name: "Pagar", isFirst: false),
            _actionItem(
                icon: MdiIcons.cash, name: "Transferir", isFirst: false),
            _actionItem(icon: MdiIcons.cash, name: "Depositar", isFirst: false),
            _actionItem(
                icon: MdiIcons.creditCard, name: "Recarga", isFirst: false),
            _actionItem(
                icon: MdiIcons.heartOutline, name: "Doação", isFirst: false),
          ],
        ),
      ),
    );
  }

  _actionItem(
      {required IconData icon, required String name, required bool isFirst}) {
    return Container(
      //margin: const EdgeInsets.symmetric(horizontal: 5),
      padding: isFirst
          ? const EdgeInsets.only(left: 40, right: 7)
          : const EdgeInsets.symmetric(horizontal: 7),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 10),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: greyColor,
              borderRadius: BorderRadius.circular(40),
            ),
            child: Icon(icon),
          ),
          Text(
            name,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  _money() {
    return Container(
      margin: const EdgeInsets.only(left: 15, top: 15),
      child: const Text(
        "R\$ 100.000,00",
        style: TextStyle(
          fontSize: 23,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  _accountText() {
    return Container(
      padding: const EdgeInsets.only(left: 15, top: 15, right: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text(
            "Conta",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Icon(MdiIcons.chevronDoubleRight)
        ],
      ),
    );
  }

  _easynvest() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _easynvestIcon(),
          _easynvestText(),
          _easynvestInfo(),
          _easynvestButton(),
        ],
      ),
    );
  }

  _easynvestIcon() {
    return const Icon(MdiIcons.finance);
  }

  _easynvestText() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text(
            'Investimentos Easynvest',
            style: TextStyle(fontSize: 23),
          ),
          Icon(MdiIcons.chevronRight)
        ],
      ),
    );
  }

  _easynvestInfo() {
    return const Text(
        'Você já abriu sua conta Easynvest para investir sem taxas e burocracia.');
  }

  _easynvestButton() {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: ElevatedButton(
        child: const Text(
          'Ir para Easynvest',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        onPressed: () {},
      ),
    );
  }

  _lifeInsurance() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _lifeInsuranceIcon(),
          _lifeInsuranceText(),
          _lifeInsuranceInfo(),
        ],
      ),
    );
  }

  _lifeInsuranceIcon() {
    return const Icon(MdiIcons.heartOutline);
  }

  _lifeInsuranceText() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text(
            'Seguro de vida',
            style: TextStyle(fontSize: 23),
          ),
          Icon(MdiIcons.chevronRight)
        ],
      ),
    );
  }

  _lifeInsuranceInfo() {
    return const Text(
        'Conheça Nubank Vida: um seguro simples e que cabe no bolso.');
  }

  _discover() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _discoverText(),
          _discoverAction(),
        ],
      ),
    );
  }

  _discoverText() {
    return const Text(
      'Descubra mais',
      style: TextStyle(fontSize: 20),
    );
  }

  _discoverAction() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      width: MediaQuery.of(context).size.width * .7,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: greyColor, borderRadius: BorderRadius.circular(20)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _discoverText2(),
          _discoverText3(),
          _discoverButton(),
        ],
      ),
    );
  }

  _discoverText2() {
    return const Text(
      'Indique seus amigos',
      style: TextStyle(fontSize: 20),
    );
  }

  _discoverText3() {
    return const Text(
      'Mostre aos seus amigos como é fácil ter uma vida sem burocracia.',
    );
  }

  _discoverButton() {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: ElevatedButton(
        child: const Text(
          'Indicar amigos',
          style: TextStyle(color: Colors.white),
        ),
        onPressed: () {},
      ),
    );
  }
}
