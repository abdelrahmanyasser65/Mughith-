import "package:flutter/material.dart";
import 'package:mughith/persentation/resources/color_manager.dart';
import 'package:mughith/persentation/resources/fonts.dart';
import 'package:mughith/persentation/resources/values_manager.dart';

class ZakahInfoScreen extends StatelessWidget {
  const ZakahInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: ColorManager.black,
        ),
        title: Text(
          "معلومات",
          style: TextStyle(
            color: ColorManager.black,
          ),
        ),
        centerTitle: true,
        backgroundColor: ColorManager.secondPrimary,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                "معلومات عن الزكاه",
                style: TextStyle(
                  fontWeight: FontWeightManager.bold,
                  fontSize: FontSized.s16,
                  color: ColorManager.primary,
                ),
              ),
            ),
            SizedBox(height: HeightSized.h3),
            Text(
              "هل الزكاة واجبة ؟",
              style: TextStyle(
                fontWeight: FontWeightManager.bold,
                fontSize: FontSized.s14,
                // color: ColorManager.primary,
              ),
            ),
            SizedBox(height: HeightSized.h1),
            Text(
                "زكاة المال واجب شرعي وفريضة إسلامية على كل مسلمٍ عاقل مكلّف قادِر، وهي من أعظم الفرائض لدرجة أن تاركها عمداً قد يعرض نفسه لخطر في عقيدته كمسلم بناءً على إجماع علماء المسلمين. فعن عبدالله بن عمر رضي الله عنهما قال: سمعت رسول الله صلى الله عليه وسلم يقولُ: “بُنِي الإسلامُ عَلى خَمْسٍ: شَهادةِ أنْ لا إلهَ إلاَّ الله، وأنَّ مُحمَّداً عَبْدُه وَرَسولُهُ، وإقامِ الصلاةِ، وإيتاءِ الزَّكاةِ، وحَجِّ البيتِ، وصَومِ رَمضانَ“. رَواهُ البُخارِي ومُسلمٌ."),
            SizedBox(height: HeightSized.h3),
            Text(
              "من الذي تجب عليه الزكاة",
              style: TextStyle(
                fontWeight: FontWeightManager.bold,
                fontSize: FontSized.s14,
                // color: ColorManager.primary,
              ),
            ),
            SizedBox(height: HeightSized.h1),
            Text(
                '''وفقًا للمذهب الحنفي، يجب دفع الزكاة على كل مسلم بالغ عاقل ويملك مقدارًا من الثروة (الأصول الصافية) تتجاوز حدّ النصاب.

في حين يرى المذهب الشافعي والمالكي والحنبلي أن الزكاة واجبة أيضًا على الأطفال وعلى المجانين، إذا بلغت ثروتهم حدَ النصاب.

 

وتعني كلمة “النصاب” الحد الأدنى للممتلكات أو الثروة/الأصول التي يجب أن يمتلكها المسلم قبل أن يكون عليه لزاما البدء في دفع الزكاة. ويسمى هذا الحدّ الأدنى للمبلغ بحدّ النصاب.

ويصبح واجبٌ عليك دفع الزكاة في اليوم الذي تصل فيه ثروتك حدّ النصاب. وتُحسب الزكاة وتُدفع عن الثروة بعد مرور سنة قمرية كاملة. ويبلغ طول السنة القمرية حوالي 354 يومًا.

مثال: التحق عبد الله بوظيفة مؤخرًا، وبعد شهر واحد من عمله تلقى مرتبا شهريا بقيمة 1,000 ريال، ولم يكن على عبد الله أي ديون. وبالتالي فإن ثروته هي الألف ريال كاملة. وحد النصاب في حينها هو 190 ريال. وبالتالي يصبح عبد الله مُلزمًا بدفع الزكاة لأن ثروته الجديدة تجاوزت النصاب.

بعد 354 يومًا – سنة هجرية كاملة – حان الوقت لعبد الله لإعادة تقييم وضعه ومعرفة مقدار الثروة/صافي الأصول التي يمتلكها بما يزيد على النصاب.

وجد عبدالله بأنه ادّخر مبلغ 10,000 ريال، وعليه ديون فورية/قصيرة الأجل قدرها 2,000 ريال.

وبالتالي ففي نهاية السنة الهجرية، بلغت ثروة عبد الله أو أصوله الصافية قيمة 8,000 ريال، بينما بلغت قيمة النصاب في ذلك الوقت 200 ريال.

لذلك، سيتعين على عبد الله دفع زكاة مقدارها 200 ريال، وهي عبارة عن 2.5% من مبلغ 8,000 ريال.

يؤدي الكثير من المسلمين الزكاة خلال شهر رمضان، حيث يسهل عليهم تذكر وقتها. وفي كثير من الأحيان يُخرجونها في ليلة السابع والعشرين من رمضان سعيًا منهم في تعظيم الأجر والثواب.

إلا أن الطريقة الشرعية الأصح هي حساب الزكاة وإخراجها بعد سنة هجرية واحدة ابتداء من اليوم الذي تجاوزت فيه ثروتك مبلغ النصاب'''),
            SizedBox(height: HeightSized.h3),
            Text(
              "هل الزكاة واجبة ؟",
              style: TextStyle(
                fontWeight: FontWeightManager.bold,
                fontSize: FontSized.s14,
                // color: ColorManager.primary,
              ),
            ),
            SizedBox(height: HeightSized.h1),
            Text(
                "زكاة المال واجب شرعي وفريضة إسلامية على كل مسلمٍ عاقل مكلّف قادِر، وهي من أعظم الفرائض لدرجة أن تاركها عمداً قد يعرض نفسه لخطر في عقيدته كمسلم بناءً على إجماع علماء المسلمين. فعن عبدالله بن عمر رضي الله عنهما قال: سمعت رسول الله صلى الله عليه وسلم يقولُ: “بُنِي الإسلامُ عَلى خَمْسٍ: شَهادةِ أنْ لا إلهَ إلاَّ الله، وأنَّ مُحمَّداً عَبْدُه وَرَسولُهُ، وإقامِ الصلاةِ، وإيتاءِ الزَّكاةِ، وحَجِّ البيتِ، وصَومِ رَمضانَ“. رَواهُ البُخارِي ومُسلمٌ."),
            SizedBox(height: HeightSized.h3),
            Text(
              "هل الزكاة واجبة ؟",
              style: TextStyle(
                fontWeight: FontWeightManager.bold,
                fontSize: FontSized.s14,
                // color: ColorManager.primary,
              ),
            ),
            SizedBox(height: HeightSized.h1),
            Text(
                "زكاة المال واجب شرعي وفريضة إسلامية على كل مسلمٍ عاقل مكلّف قادِر، وهي من أعظم الفرائض لدرجة أن تاركها عمداً قد يعرض نفسه لخطر في عقيدته كمسلم بناءً على إجماع علماء المسلمين. فعن عبدالله بن عمر رضي الله عنهما قال: سمعت رسول الله صلى الله عليه وسلم يقولُ: “بُنِي الإسلامُ عَلى خَمْسٍ: شَهادةِ أنْ لا إلهَ إلاَّ الله، وأنَّ مُحمَّداً عَبْدُه وَرَسولُهُ، وإقامِ الصلاةِ، وإيتاءِ الزَّكاةِ، وحَجِّ البيتِ، وصَومِ رَمضانَ“. رَواهُ البُخارِي ومُسلمٌ.")
          ],
        ),
      ),
    );
  }
}
