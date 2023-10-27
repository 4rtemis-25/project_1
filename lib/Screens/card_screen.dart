import 'package:flutter/material.dart';
import 'package:project_1/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widgets'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric( horizontal: 20, vertical: 10),
        children: const [
          CustomCard1(),
          SizedBox( height: 10, ),
          CustomCard2( imageUrl: 'https://th-thumbnailer.cdn-si-edu.com/aGr9gOggiiBZ4SBT2Fog0bO7D3A=/1000x750/filters:no_upscale():focal(2362x1597:2363x1598)/https://tf-cmsv2-smithsonianmag-media.s3.amazonaws.com/filer_public/18/f4/18f4e941-b85b-45ae-b07c-52eaa6ca1f84/gettyimages-1237093074.jpg', name: 'Black Hole',),
          SizedBox( height: 10, ),
          CustomCard2( imageUrl: 'https://stsci-opo.org/STScI-01FMN22BJXHTZ1HKWMFR8DWFAJ.jpg', name: 'Quasar',),
          SizedBox( height: 10, ),
          CustomCard2( imageUrl: 'https://www.eso.org/public/archives/images/thumb700x/eso0907a.jpg', name: 'Helix Nebula',),
          SizedBox( height: 10, ),
          CustomCard2( imageUrl: 'https://images.saymedia-content.com/.image/c_limit%2Ccs_srgb%2Cq_auto:eco%2Cw_700/MTc0Mzg2MjY5NTEyOTM0NzYw/neutron-stars-pulsars-and-magnetars-or-the-odd-physics-of-extreme-stars.webp'),
        ],
      ),
    );
  }
}