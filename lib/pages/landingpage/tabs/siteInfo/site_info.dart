import 'package:dashboard_v1/constants/style.dart';
import 'package:dashboard_v1/widgets/custom_text_field.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';

class SiteInfoTab extends StatelessWidget {
  const SiteInfoTab({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            const CustomTextField(
              title: 'Site Name',
              hint: 'Weellu',
            ),
            const CustomTextField(
              title: 'Welcome word',
              hint: 'Bem vindo!',
            ),
            const CustomTextField(
              title: 'Description 1',
              hint: 'Converse de forma descomplicada!',
            ),
            const CustomTextField(
              title: 'Description 2',
              hint:
                  'Interaja com seus amigos, familiares e faça negocios de forma simples e descomplicada. Tudo muito rápido e simples use o weellu no seu dia a dia e seja feliz.',
            ),
            const Align(
              alignment: AlignmentDirectional.topStart,
              child: const Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                child: Text(
                  'SOCIAL LINKS',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const CustomTextField(
              title: 'Facebook',
              hint: 'Facebook link here...',
            ),
            const CustomTextField(
              title: 'Instagram',
              hint: 'Instagram link here...',
            ),
          ],
        ),
      ),
    );
  }
}
