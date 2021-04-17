import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:himaka/services/locator.dart';
import 'package:himaka/utils/AppLanguage.dart';
import 'package:himaka/utils/app_localizations.dart';

class TermsAndConditionsScreen extends StatefulWidget {
  @override
  _TermsAndConditionsScreenState createState() => _TermsAndConditionsScreenState();
}
const htmlData = """
<ul>
<li><strong> </strong><strong>المقدمة </strong></li>
</ul>
<p><strong>نحن شركة &nbsp;</strong><strong>5HIMAKA</strong><strong>للتجارةالالكترونية</strong><strong> </strong><strong>وندير منصة للتجارة الالكترونية من خلال موقع وتطبيق للهواتف المحمولة وهذا مع توفير الخدمات اللوجيستية وخدمات الدفع لبيع وشراء المنتجات الاستهلاكية عن طريق متجر</strong><strong>&nbsp; </strong><strong>5HIMAKA</strong><strong> </strong><strong>في جمهورية مصر العربية ويتم تطبيق هذه الشروط علي جميع الاعضاء&nbsp; ويجب علي كل عضو ان يلتزم &nbsp;بقراتها جيدآ&nbsp; والموافقة علي جميع الشروط ولحرصنا الشديد علي قيامك بفهم وتاكيد هذه الشروط قمنا بتقرار وذكر وتاكيد البنود أكثر من مرة في كل مرحلة تحتاج الي تاكيد المعلومة واذا وجدت اي شرط لا تريد الموافقة عليه او تري أنه بند سوف يسبب اي ضرر عليك فنحن ننصحك ونشجعك ان لا تكمل الاشتراك او تقوم بالموافقة علي هذه الشروط والاحكام&nbsp; </strong></p>
<ul>
<li><strong> </strong><strong>شروط الاشتراك </strong></li>
</ul>
<p><strong>انك كا عضو تقر وتوافق علي الاتي ...</strong></p>
<p><strong>&nbsp;</strong></p>
<ul>
<li><strong> </strong><strong>يتم الحصول</strong><strong> </strong><strong>علي العضوية لمن تجاوز عمره 18 عام فقط ولنا الحق في حذف حساب اي</strong><strong> </strong><strong>عضو يتم اكتشاف انه لن يتجاوز سن 18 عام وبالطبع مع مراعات أعطائه جميع حقوقه المالية اذا وجد هذا علي حسابه بعد الاغلاق </strong></li>
<li><strong> </strong><strong>تقر ان متجر </strong><strong>5HIMAKA</strong><strong> </strong><strong>قمنا بالتاكيد عليك مرارآ وتكرارآ بقراءة هذه الاتفاقية بالكامل قبل الاشتراك واذا لم تقوم بقراتها وفهمها جيدآ تكون أنت المسؤل الوحيد علي ذلك</strong><strong> </strong><strong>وأننا نقوم بهذا التاكيد لحرصنا الشديد أن تقوم بأتخاذ قرارك بنفسك وحفاظآ منا علي خصوصيتك</strong></li>
</ul>
<p><strong>&nbsp;</strong></p>
<ul>
<li><strong> </strong><strong>تلتزم وتوافق وتقر بان قيمة اشتراكك ما هي الا مجرد الحصول علي العضوية والتجول في صفحات متجر </strong><strong>5HIMAKA</strong><strong> لمدة عام وطلب السماح لك باضافة فريق حتي يقوم بتقديم المساعدة اليك في الحصولعلي الخدمات و العمولة فقط وليس يوجد اي شئ اخر غير ذلك</strong></li>
</ul>
<p><strong>&nbsp;</strong></p>
<ul>
<li><strong> </strong><strong>تقر وتوافق أنك كاعضو علي علم كامل ويقين تام بان قيمة الاشتراك ماهي الا قيمة رمزية لتسجيل عضويتك والتجول داخل المتجر والسماح بأضافة فريق للمساعدة والمشاهدة فقط وليس لك الحق في الاستفادة باي خدمة داخل المتجر الا بعد تحقيق الشرط او الاختبار أولآ وهو &nbsp;الحصول علي </strong><strong>55</strong><strong>555</strong><strong> نقطة تسويق وبعد ذلك يكون لك الحق بالاستفادة واستخدام جميع الخدمات المجانية التي يقوم بتوفيرها متجر </strong><strong>5HIMAKA</strong><strong> </strong><strong>&nbsp;</strong></li>
</ul>
<p><strong>&nbsp;</strong></p>
<ul>
<li><strong> </strong><strong>تقر وتوافق كاعضو ليس لديك اي مشكلة في امر هذه النقاط التسويقية وليس لديك اي مشكلة بانها غير مفسر كيفية الحصول عليها كل نقطة علي حدا بمعني ان الزيارة الواحدة كم تساوي من النقاط وهذا ما في الامر</strong></li>
</ul>
<p><strong>&nbsp;</strong></p>
<ul>
<li><strong> </strong><strong>تقر وتوافق وتعترف بانك من المستحيل ان تعترض او تشكك في مصداقية ونزاهة برنامج </strong><strong>5HIMAKA</strong><strong> </strong><strong>بانه قد تم حرمانك من عمولة عملية بيع او شراء او تسويق تمت بنجاح حيث انك تعترف بان هذا البرنامج يتم بطريقة اتوماتيكيا وليس يحدث اي تدخل يدوي واذا قمت باي اعترض او تشكيك فانك لم يكن لك هذا الحق ولا ياخذ به بعين الاعتبار وانك تقر بان هذا البرنامج مقدم لك مجانا وليس عليه اي عمولات ولا مصاريف ادارية وليس مجبر انك تقوم بالاشتراك بهذا البرنامج وتم اشتراكك بحرية كاملة واننا لسنا مجبرين أن نعطيك هذه العمولة والخدمات المجانية ومن حق</strong><strong> </strong><strong>5HIMAKA</strong><strong> </strong><strong>ايقاف اي من هذه الخدمات والعوملات وقت ما تشاء دون الرجوع اليك او الزيادة في الاشتراك او العمولات او الخدمات دون الرجوع اليك ايضا </strong></li>
</ul>
<p><strong>&nbsp;</strong></p>
<ul>
<li><strong> </strong><strong>انت علي علم كامل ومعرفة كافية بانك سوف تقوم بالاشتراك فقط لمدةعام واحد وان اشتراكك لن يدوم اكثر من عام </strong></li>
</ul>
<p><strong>&nbsp;</strong></p>
<p><strong>&nbsp;</strong></p>
<ul>
<li><strong> </strong><strong>&nbsp;لا يحق لاي عضو القيام ببيع منتجات ممنوعة او مشبوهة او مسروقة او تخالف القوانين والاحكام وفي حال ثبوت هذا الامر فانه يضع نفسة امام المسائلة القانونية وهذا بدون ادني مسؤلية علي </strong><strong>5HIMAKA</strong></li>
</ul>
<p><strong>&nbsp;</strong></p>
<ul>
<li><strong> </strong><strong>&nbsp;تقر وتلتزم انك عند طلب العضوية سوف تقوم بتقديم جميع المعلومات والاوراق التي سوف يتم طلبها مع اعطائنا الحق في الاطلاع علي الاصل اذا لزم الامر ويجب ان يكون كل الاوراق سارية وفي حالة تقديم اي اوراق غير رسمية او معلومات غير حقيقية سوف يتم اخذ اجرات قانونية ضدك اذا لزم الامر لذلك</strong></li>
</ul>
<p><strong>&nbsp;</strong></p>
<ul>
<li><strong> </strong><strong>تقر وتلتزم بانك المسول الوحيد عن معلوماتك السرية وانت وحدك من يتحمل المسؤلية في حالة حدوث اي خسارة اليك مدية اومعنوية وأن &nbsp;</strong><strong>5HIMAKA</strong><strong> لا تتحمل المسؤلية عن اي خسارة مدية اومعنوية تحدث لاي عضو بسبب اهماله لمعلوماته السرية ولقد فعلنا كل مابوسعنا حتي نقوم بتامين حسابك ويكون الامر صعب علي اي شخص غيرك بالتحكم في حسابك واذا حدث هذا فانه يكون نتيجة لاهمالك لسرية معلوماتك </strong></li>
</ul>
<p><strong>&nbsp;</strong></p>
<ul>
<li><strong> </strong><strong>انت مطالب بتعويض </strong><strong>5HIMAKA</strong><strong> </strong><strong>اذا تم استخدام حسابك في اي نشاط غير شرعي وبنان عليه تم الخسارة لمنصة </strong><strong>5HIMAKA</strong></li>
</ul>
<p><strong>&nbsp;</strong></p>
<ul>
<li><strong> </strong><strong>يكون الحق كامل لمتجر </strong><strong>5HIMAKA</strong><strong> </strong><strong>ومطلق الحرية في اجراء اي تحقيق في اي وقت بطريقة مباشرة او بطريقة اخري للتاكد من صحة معلوماتك والاوراق المقدمة لاثبات هويتك وانت تلتزم بتقديم الاوراق المطلوبة منك اذا كنت بائع او مشتري فقط &nbsp;</strong></li>
</ul>
<p><strong>&nbsp;</strong></p>
<ul>
<li><strong> </strong><strong>في حالة التقصير اوعدم الالتزام بما ورد في ما سبق ذكره سوف يكون لمتجر </strong><strong>5HIMAKA</strong><strong> </strong><strong>الحق في حجب العضو المخالف عن المتجر نهائيا </strong></li>
</ul>
<p><strong>&nbsp;</strong></p>
<ul>
<li><strong> </strong><strong>انت توافق وتلتزم انك سوف تقوم</strong><strong> </strong><strong>بدفع تكلفة المنتج مع اتمام عملية الشراء وليس يوجد لدا متجر </strong><strong>5HIMAKA</strong><strong> </strong><strong>خاصية الدفع عند الاستلام وأن </strong><strong>&nbsp;متجر </strong><strong>5HIMAKA</strong><strong> </strong><strong>ماهو الا وسيط في هذه العملية واذا لن &nbsp;ينال المنتج رضائك وفي حالة ظهور اي عيب في المنتج فانت لك الحق في استبداله من خلالنا وبدون فرض اي رسوم وتبقي العملية مجانا كما هي &nbsp;او استرداد اموالك مرة اخرة ولاكن عند ذكر اي عيب في المنتج ومع الفحص لانجد العيب الذي قمت بذكره سوف تكون انت من مطالب بتعويض متجر </strong><strong>5HIMAKA</strong><strong> </strong><strong>عن هذا الخطاء في حقنا وفي حق التاجر وكل هذا يبقي لتقديرات متجر </strong><strong>5HIMAKA</strong><strong> </strong><strong>حيث ان ليس يوجد لاي عضو الحق أن يقرر ماذا يحدث في مثل هذه حالات</strong><strong> </strong></li>
</ul>
<p><strong>&nbsp;</strong></p>
<ul>
<li><strong> </strong><strong>تقر وتلتزم أنك كاعضو تاجر مسئول مسئولية كاملة عن كفائة منتجك وان يكون مثل ما قومت بتوضيحه في وصف المنتج 100% وتلتزم بقبول قرارات متجر </strong><strong>5HIMAKA</strong><strong> </strong><strong>&nbsp;في حالة وقوع اي قضية نزاع علي اي منتج قمت ببيعه </strong></li>
</ul>
<p><strong>&nbsp;</strong></p>
<ul>
<li><strong> </strong><strong>تقر وتلتزم أنك كاعضو مشتري أنك الشخص الوحيد الذي له الحق في استلام الشحنات التي تتم من حسابك وبنأن علي ذلك تقوم بتحديد الموعد الافضل بالاتفاق مع شركة الشحن لاستلام منتجك بالرقم القومي الخاص بك واذا لم تقوم بهذا الامر سوف يتم استرجاع المنتج مرة اخرة الي المخازن واذا تم شحنه مرة اخرة سوف تتحمل قيمة الشحن التي سوف يتم فرضها عليك لانك من تسبب في فشل عملية الشحن </strong></li>
</ul>
<p><strong>&nbsp;</strong></p>
<ul>
<li><strong> </strong><strong>&nbsp;أنك كاعضو تقر وتوافق باي تعديل يتم في هذا البرنامج او اضافة اي مصاريف اوضرايب حكومية وانت توافق علي هذا الامر بدون الرجوع اليك واخذ موافقتك علي اي تعديل يتم طوال فترة اشتراكك وليس لك الحق في الاعتراض نهائيا الا بطريقة واحدة وهي الغاء عضويتك فقط </strong></li>
</ul>
<p><strong>&nbsp;</strong></p>
<p><strong>&nbsp;</strong></p>
<ul>
<li><strong> </strong><strong>أنت كاعضو لدي متجر </strong><strong>5HIMAKA</strong><strong> </strong><strong>عليك ان توافق علي جميع شروط هذه الاتفاقية وليس لك الحق في الاعتراض علي اي شي في هذه الاتفاقية </strong></li>
</ul>
<p><strong>&nbsp;</strong></p>
<p><strong>تلتزم بعدم القيام بما يلي</strong><strong>:</strong></p>
<p><strong>&nbsp;</strong></p>
<ul>
<li><strong> </strong><strong>استخدام موقع </strong><strong>5HIMAKA</strong><strong> بأي شكل من الأشكال أو اتخاذ أي إجراء من شأنه قد يتسبب في إلحاق الضرر بالموقع أو إعاقة أداء الموقع أو إتاحته أو سهولة الوصول إليه أو نزاهته، أو أمنه</strong></li>
</ul>
<p><strong>&nbsp;</strong></p>
<ul>
<li><strong> </strong><strong>استخدام متجر </strong><strong>5HIMAKA</strong><strong> بأي طريقة غير أخلاقية أو غير قانونية أو غير شرعية أو احتيالية أو ضارة أو فيما يتعلق بأي غرض أو نشاط غير قانوني أو غير شرعي أو احتيالي أو ضار اختراق أو التلاعب بمتجر </strong><strong>5HIMAKA</strong><strong> </strong></li>
</ul>
<p><strong>&nbsp;</strong></p>
<ul>
<li><strong> </strong><strong>التحقيق أو الفحص أو اختبار الموقع دون إذن من أدارة </strong><strong>5HIMAKA</strong></li>
</ul>
<p><strong>&nbsp;</strong></p>
<ul>
<li><strong> </strong><strong>التحايل على أي أنظمة أو إجراءات التوثيق أو الحماية على </strong><strong>5HIMAKA</strong></li>
</ul>
<p><strong>&nbsp;</strong></p>
<ul>
<li><strong> </strong><strong>عدم استخدام متجر </strong><strong>5HIMAKA</strong><strong> لنسخ أو تخزين أو استضافة أو نقل أو إرسال أو استخدام أو نشر أو توزيع أو أي محتوى يتكون من أي برامج تجسس أو فيروسات كمبيوتر</strong><strong> </strong><strong>أو برامج كمبيوتر ضارة أخرى </strong></li>
</ul>
<p><strong>&nbsp;</strong></p>
<p><strong>&nbsp;</strong></p>
<ul>
<li><strong> </strong><strong>عدم فرض حمولة كبيرة تفوق المعقول على موارد موقع </strong><strong>5HIMAKA</strong><strong> بما في ذلك عرض النطاق الترددي وسعة التخزين وسعة المعالجة الي اي ضرر يكون باي طريقة ممكنة او تؤدي الي ذلك</strong></li>
</ul>
<p><strong>&nbsp;</strong></p>
<ul>
<li><strong> </strong><strong>فك تشفير أي اتصالات مرسلة من و إلى موقعنا دون موافقة خطية صريحة من </strong><strong>5HIMAKA</strong><strong> ويكون به أمضاء من مدير الشركة ويكون تحت اشراف مدير المشاريع </strong></li>
</ul>
<p><strong>&nbsp;</strong></p>
<p><strong>&nbsp;</strong></p>
<ul>
<li><strong> </strong><strong>. </strong><strong>إجراء أي أنشطة تجميع بيانات بشكل منتظم أو تلقائي بما في ذلك على سبيل المثال لا الحصر تجريف وتنقيب واستخراج وجمع البيانات على موقعنا أو فيما يتعلق بالموقع بدون موافقة خطية صريحة من </strong><strong>5HIMAKA</strong><strong> </strong><strong>ويكون به أمضاء من مدير الشركة ويكون تحت اشراف مدير المشاريع </strong></li>
</ul>
<p><strong>&nbsp;</strong></p>
<p><strong>&nbsp;</strong></p>
<ul>
<li><strong> </strong><strong>عدم الوصول إلى موقع </strong><strong>5HIMAKA</strong><strong> أو التفاعل معه عن طريق استخدام أي روبوت أو</strong><strong> spider </strong><strong>أو أي وسيلة آلية أخرى باستثناء محرك البحث</strong></li>
</ul>
<p><strong>&nbsp;</strong></p>
<p><strong>&nbsp;</strong></p>
<ul>
<li><strong> </strong><strong>تلتزم باستخدام متجر </strong><strong>5HIMAKA</strong><strong> من خلال الواجهة العامة الخاصة بنا فقط</strong></li>
</ul>
<p><strong>&nbsp;</strong></p>
<ul>
<li><strong> </strong><strong>استخدام البيانات التي تم جمعها من على </strong><strong>5HIMAKA</strong><strong> لأي نشاط تسويق مباشر بما في ذلك على سبيل المثال لا الحصر التسويق عبر البريد الإلكتروني والتسويق عبر الرسائل القصيرة والتسويق عبر الهاتف وعبر البريد المباشر اوالقيام بأي شيء يتعارض مع الاستخدام العادي لمتجر </strong><strong>5HIMAKA</strong></li>
</ul>
<p><strong>&nbsp;</strong></p>
<ul>
<li><strong> </strong><strong>انت كاعضو لك كل الحق في ان نكون صادقين معك في كل ما تقدمه منصة </strong><strong>5HIMAKA</strong><strong> </strong><strong>وليس لك حق الاعتراض في ما لم نقدمه الا بامر واحد ان تقول رايك عن طريق المراسلة بالحساب الخاص بالاراء </strong></li>
</ul>
<p><strong>&nbsp;</strong></p>
<ul>
<li><strong> </strong><strong>تلتزم بعدم التلاعب بحسابات أخري وشراء خدمات من نفسك أو من غيرك</strong><strong>. </strong></li>
</ul>
<p><strong>&nbsp;</strong></p>
<ul>
<li><strong> </strong><strong>يمنع استخدام وسائل السبام في دعوة المستخدمين مما قد يشكل إساءة مباشرة أو غير مباشرة لمتجر </strong><strong>5HIMAKA</strong></li>
</ul>
<p><strong>&nbsp;</strong></p>
<p><strong>&nbsp;</strong></p>
<ul>
<li><strong> </strong><strong>يمنع استخدام النوافذ المنبثقة أو عرض الموقع داخل وسم</strong><strong> iframe </strong><strong>أو استخدام أي أساليب أخرى تجبر الزائر على فتح الموقع دون رغبة منه</strong></li>
</ul>
<p><strong>&nbsp;</strong></p>
<ul>
<li><strong> </strong><strong>يحق لمتجر </strong><strong>5HIMAKA</strong><strong> إيقاف الحساب مع أي أرباح تم تحقيقها في حال أثبت وجود أساليب احتيال أوتسويق للموقع بأشكال مضللة أو مخالفة للشروط </strong></li>
</ul>
<p><strong>&nbsp;</strong></p>
<p><strong>&nbsp;</strong></p>
<ul>
<li><strong> </strong><strong>شروط وأحكام البيع </strong></li>
</ul>
<p><strong>&nbsp;</strong></p>
<p><strong>تقر وتوافق علي الاتي ...</strong></p>
<p><strong>&nbsp;</strong></p>
<ul>
<li><strong> </strong><strong>&nbsp;</strong><strong>بأن متجر </strong><strong>5HIMAKA</strong><strong> هو موقعًا إلكترونيًا للبائعين لبيع منتجاتهم وللمشترين لشراء هذه المنتجات</strong></li>
</ul>
<p><strong>&nbsp;</strong></p>
<ul>
<li><strong> </strong><strong>&nbsp;</strong><strong>بالرغم أن متجر </strong><strong>5HIMAKA</strong><strong> يقبل عمليات البيع الملزمة نيابة عن البائع لا يعتبر متجر </strong><strong>5HIMAKA</strong><strong> </strong><strong>&nbsp;باي حال من الاحوال طرفًا في المعاملة بين البائع والمشتري</strong></li>
</ul>
<p><strong>&nbsp;</strong></p>
<p><strong>&nbsp;</strong></p>
<ul>
<li><strong> </strong><strong>كاعضو تلتزم بالعقد المبرم بينك وبين المشتري لكل عملية شراء</strong></li>
</ul>
<p><strong>&nbsp;</strong></p>
<ul>
<li><strong> </strong><strong>ت</strong><strong>لتزم ببيع او شراء المنتج المطلوب في اي عملية شراء تتم </strong></li>
</ul>
<p><strong>&nbsp;</strong></p>
<ul>
<li><strong> </strong><strong>تلتزم ان يكون هذا المنتج كما تم عرضه علي متجر </strong><strong>5HIMAKA</strong><strong> </strong><strong>من خلال متجرك بجميع المواصافات التي تم ذكرها لوصف المنتج</strong><strong> </strong><strong>يجب أن يكون المنتج ذات جودة وينال رضا المشترى ويكون مناسب وآمن لأي غرض محدد في وصف المنتج ويجب أن تتطابق كافة المواصفات وفقا لوصف المنتج الي المشتري على متجر &nbsp;</strong><strong>5HIMAKA</strong><strong> </strong></li>
</ul>
<p><strong>&nbsp;</strong></p>
<p><strong>&nbsp;</strong></p>
<ul>
<li><strong> </strong><strong>تتعهد كابائع أنك لديك الحق في بيع المنتجات، وأنك المالك القانوني والمستفيد الوحيد للمنتجات، وأن المنتجات لا تخضع لأي حقوق أو قيود من أطراف ثالثة بما في ذلك حقوق الملكية الفكرية الخاصة بطرف ثالث و/أو وجود إجراءات جنائية أوإعسار مالى أو تحقيقات أو إجراءات ضريبية</strong></li>
</ul>
<p><strong>&nbsp;</strong></p>
<ul>
<li><strong> </strong><strong>تلتزم بالسعر الذي تم وضعه في قائمة المنتجات </strong></li>
</ul>
<p><strong>&nbsp;</strong></p>
<p><strong>&nbsp;</strong></p>
<ul>
<li><strong> </strong><strong>تقر وتوافق علي فترة النزاع الذي يمنحها المتجر للمشتري حتي يتم فحص المنتج عن طريق المشتري </strong></li>
</ul>
<p><strong>&nbsp;</strong></p>
<ul>
<li><strong> </strong><strong>في حالة فتح قضية نزاع بينك وبين المشتري علي منتج قمت ببيعه فأنت توافق علي اي قرار يتم أتخاذه من قبل متجر </strong><strong>5HIMAKA</strong><strong> </strong><strong>وأنك لن تعترض علي هذا لانك علي يقين تام بان هذا القرار صحيح 100% </strong></li>
</ul>
<p><strong>&nbsp;</strong></p>
<p><strong>&nbsp;</strong></p>
<ul>
<li><strong> </strong><strong>تلتزم أن سعر المنتج يشمل جميع انواع الضرائب و كافة القوانين السارية والمأخوذ بها في جمهورية مصر العربية من وقت لآخر </strong></li>
</ul>
<p><strong>&nbsp;</strong></p>
<ul>
<li><strong> </strong><strong>تلتزم أن يكون المحتوى الخاص بك المستخدم علي متجر </strong><strong>5HIMAKA</strong><strong> </strong><strong>&nbsp;</strong><strong>محتوى دقيق وكامل وصادق يجب أن يكون محتوى لائق ومتحضر وحسن الذوق ويتوافق مع المعايير المقبولة بشكل عام للآداب والسلوك وان لا يوضح العنف بطريقة صريحة أو تصويرية او طريقة تدعو إلى انتهاك القوانين الخاصة بالعنصرية أو الدين أو المتعلقة بالكراهية أو التمييز لايكون محتوى خادع أو احتيالي أو مهدد أو به تحرش أو معادي للمجتمع أو محتوى تحريضي او محتوى من المحتمل أن يسبب مضايقة أو إزعاجًا أو قلقًا لأي شخص أو محتوي عشوائي وغير مرغوب فيه</strong></li>
</ul>
<p><strong>&nbsp;</strong></p>
<ul>
<li><strong> </strong><strong>تلتزم أنك كاعضو تقوم باستخدام خاصية المحادثة</strong><strong> </strong><strong>التي يوفرها متجر </strong><strong>5HIMAKA</strong><strong> </strong><strong>بين المشتري والتاجر استخدام يليق بالمتجر ولا تقوم بقول اي كلمات تهين او تغضب الطرف الاخر من المحادثة وان قمت بفعل هذا الامر فهذا متروك لتقدير أدارة متجر </strong><strong>5HIMAKA</strong><strong> </strong><strong>ومن حقنا حذف حسابك نهائيا من</strong><strong> </strong><strong>غير عودة وليس</strong><strong> </strong><strong>لك اي حقوق لدينا غير اموالك المستحقة من بيع منتجاتك فقط اذا كنت بائع وهذا بمثابة عقاب شديد للتعدي علي الاخرين واستخدام خاصية التواصل للتسهيل من عملية الشراء واذا قمت بالاعلان عن معلوماتك الشخصية في هذه المحادثة متجر </strong><strong>5HIMAKA</strong><strong> </strong><strong>غير مسؤل نهائيا في حالة حدوث شي غير مرغوب فيه </strong></li>
</ul>
<p><strong>&nbsp;</strong></p>
<p><strong>&nbsp;</strong></p>
<ul>
<li><strong> </strong><strong>تلتزم ألا يكون المحتوى الخاص بك غير مشروع أو غير قانوني، أو ينتهك الحقوق القانونية لأي شخص، أو أن يتسبب في رفع أي دعوى قضائية ضد أي شخص في أي حالة في نظام قضائي وبموجب أي قانون معمول به ويجب ألا يعد المحتوى الخاص بك خرق أو إخلال أي حقوق نشر أو حقوق معنوية أو حقوق متعلقة بقاعدة البيانات أو حقوق علامة تجارية أو حقوق تصميم أو حقوق ملكية فكرية بكل الطرق وبكل المعاني القانونية أو أي حقوق ثقة أو خصوصية أو حقوق بمقتضى قوانين حماية البيانات او التزام تعاقدي مستحق لأي شخص او أي حكم صادر بموجب اي حكم قضائي . </strong></li>
</ul>
<p><strong>&nbsp;</strong></p>
<ul>
<li><strong> </strong><strong>تلتزم بعدم استخدام الموقع للربط بأي موقع الكتروني أو صفحة ويب تتكون من أو تقدم محتوى من شأنه الاخلال بالشروط والأحكام العامة إذا تم نشرها على موقع </strong><strong>5HIMAKA</strong></li>
</ul>
<p><strong>&nbsp;</strong></p>
<ul>
<li><strong> </strong><strong>تقر بأن جميع مستخدمي متجر </strong><strong>5HIMAKA</strong><strong> هم المسؤولون وحدهم عن التفاعل مع المستخدمين الآخرين ويجب عليك توخي الحذر عند التواصل مع المستخدمين وعدم إرسال معلومات شخصية بما في ذلك تفاصيل بطاقة الائتمان للمستخدمين</strong></li>
</ul>
<p><strong>&nbsp;</strong></p>
<p><strong>&nbsp;</strong></p>
<ul>
<li><strong> </strong><strong>يحق لمتجر </strong><strong>5HIMAKA</strong><strong> مراجعة المحتوى الخاص بك بشكل دوري كما يحق لنا ازالة أي محتوى وفقًا لتقديرنا لأي سبب من الأسباب</strong></li>
</ul>
<p><strong>&nbsp;</strong></p>
<ul>
<li><strong> </strong><strong>تلتزم بعدم التدخل في أى نوع من أنواع المعاملات مثل</strong><strong> </strong><strong>الاتصال بمستخدم آخر لشراء أو بيع منتج مدرج على متجر </strong><strong>5HIMAKA</strong><strong> خارج متجر</strong><strong>5HIMAKA</strong><strong> </strong><strong>التواصل مع مستخدم لديه معاملات نشطة أو مكتملة لتحذيره من مشتري أو بائع أو منتج معين</strong><strong> </strong><strong>الاتصال بمستخدم آخر بقصد تحصيل أي مدفوعات وفي حدوث مثل هذه امور فان هذا خارج مسؤلية </strong><strong>5HIMAKA</strong></li>
</ul>
<p><strong>&nbsp;</strong></p>
<ul>
<li><strong> </strong><strong>تلتزم بعدم عرض اي محتوى علي موقع </strong><strong>5HIMAKA</strong><strong> يكون أو كان محل لإى إجراءات قانونية أو أي شكوى اخرى مشابها من أي طرف ثالث</strong></li>
</ul>
<p><strong>&nbsp;</strong></p>
<ul>
<li><strong> </strong><strong>يتم استخدام خاصية التقييم على موقع </strong><strong>5HIMAKA</strong><strong> </strong><strong>لتسهيل تقييم المنتجات من قبل المشتري ولا يجوز لك استخدام خاصية التقييم أو أي شكل آخر من أشكال الاتصال لتقديم تقييمات غير دقيقة أو غير صحيحة أو وهمية </strong></li>
</ul>
<p><strong>&nbsp;</strong></p>
<p><strong>&nbsp;</strong></p>
<ul>
<li><strong> </strong><strong>تقوم بابلاغ </strong><strong>5HIMAKA</strong><strong> على الفور في حالة اكتشافك بوجود أي محتوى أو نشاط غير قانوني على موقع </strong><strong>5HIMAKA</strong><strong> أو أي محتوى أو نشاط يخالف هذه الشروط والأحكام العامة</strong></li>
</ul>
<p><strong>&nbsp;</strong></p>
<p><strong>&nbsp;</strong></p>
<ul>
<li><strong> </strong><strong>تلتزم بعدم تعديل أو تغيير أي محتوى على متجر </strong><strong>5HIMAKA</strong><strong> باستثناء ما هو مسموح به لك أو اعادة نشر المحتوى المتواجد على متجر </strong><strong>5HIMAKA</strong><strong> على موقع آخر بيع أو تأجير أو ترخيص محتوى من على متجر </strong><strong>5HIMAKA</strong><strong> و استغلال المحتوى لأغراض تجارية أو إعادة توزيع المحتوى باي طريقة ممكنة </strong></li>
</ul>
<p><strong>&nbsp;</strong></p>
<ul>
<li><strong> </strong><strong>في حالة وقف عضويتك او تقييد وصولك الى متجر </strong><strong>5HIMAKA</strong><strong> </strong><strong>بشكل كلي أو جزئي أو أثناء عمل صيانة خادم الموقع أو تحديثات لمتجر </strong><strong>5HIMAKA</strong><strong> فأنت تلتزم بعدم التحايل أو تجاوز أي إجراءات للوصول إلى </strong><strong>5HIMAKA</strong><strong> </strong><strong>باي طريقة من الممكن فعلها للوصل </strong></li>
</ul>
<p><strong>&nbsp;</strong></p>
<p><strong>&nbsp;</strong></p>
<ul>
<li><strong> </strong><strong>عدم استخدام متجر </strong><strong>5HIMAKA</strong><strong> بأي شكل من الأشكال أو اتخاذ أي إجراء من شأنه قد يتسبب في إلحاق الضرر بالموقع أو إعاقة أداء الموقع أو إتاحته أو سهولة الوصول إليه أو نزاهته، أو أمنه عدم استخدام موقع </strong><strong>5HIMAKA</strong><strong> بأي طريقة غير أخلاقية أو غير قانونية أو غير شرعية أو احتيالية أو ضارة أو فيما يتعلق بأي غرض أو نشاط غير قانوني أو غير شرعي أو احتيالي أو ضار أو اختراق أو التلاعب بمتجر </strong><strong>5HIMAKA</strong><strong> التحقيق أو الفحص أو اختبار الموقع دون إذن من </strong><strong>5HIMAKA</strong><strong> </strong><strong>&nbsp;التحايل على أي أنظمة أو إجراءات التوثيق أو الحماية على موقعنا أو المتعلقة به </strong></li>
</ul>
<p><strong>&nbsp;</strong></p>
<ul>
<li><strong> </strong><strong>تلتزم بعدم فرض اي معلومات او</strong><strong> </strong><strong>اي حمولة كبيرة</strong><strong> </strong><strong>تفوق المعقول على موارد موقع </strong><strong>5HIMAKA</strong><strong> </strong><strong>بما في ذلك عرض النطاق الترددي وسعة التخزين وسعة المعالجة واستخدام </strong><strong>متجر </strong><strong>5HIMAKA</strong><strong> من خلال الواجهة العامة الخاصة بنا &nbsp;</strong></li>
</ul>
<p><strong>&nbsp;</strong></p>
<p><strong>&nbsp;</strong></p>
<ul>
<li><strong> </strong><strong>خصوصية وسرية البيانات</strong></li>
<li><strong> </strong><strong>توافق على معالجة بياناتك الشخصية وفقًا لأحكام الخصوصية وإشعار ملفات تعريف الارتباط </strong><strong>5HIMAKA</strong><strong> بمعالجة جميع البيانات الشخصية التي يتم الحصول عليها من خلال متجر </strong><strong>5HIMAKA</strong><strong> والخدمات ذات الصلة وفقًا لأحكام الخصوصية وإشعار ملفات تعريف الارتباط وسياسة الخصوصية يتحمل البائعين مباشرةً كامل المسؤولية تجاه المشترين في حال إساءة استخدام بيانات المشترين الشخصية ولن تتحمل </strong><strong>5HIMAKA</strong><strong> أي مسؤولية تجاه المشترين في حال إساءة استخدام بيانات المشترين الشخصية</strong></li>
</ul>
<p><strong>&nbsp;</strong></p>
<ul>
<li><strong> </strong><strong>&nbsp;&nbsp;العناية الواجبة وحقوق المراجعة</strong></li>
</ul>
<p><strong>&nbsp;</strong></p>
<p><strong>&nbsp;</strong></p>
<p><strong>تقوم </strong><strong>5HIMAKA</strong><strong> بادارة برنامج لمكافحة غسيل الأموال وتحتفظ بالحق في إجراء فحوصات العناية الواجبة على جميع مستخدمي متجر </strong><strong>5HIMAKA</strong><strong>&nbsp; تلتزم بتوفير جميع المعلومات والوثائق الخاصة بنشاطك التجاري بالإضافة إلي إمكانيه دخول مقرك التجاري عند طلبنا من أجل التحقق من التزامك بشروط واحكام هذا العقد وتنفيذ التزاماتك بموجبه&nbsp; بهدف تقديم الكشوف بموجب أمر صادر عن محكمة أو هيئة حكومية أخرى كما يقتضي القانون أو اللوائح المعمول بها</strong></p>
<p><strong>&nbsp;</strong></p>
<ul>
<li><strong> </strong><strong>دور</strong><strong> </strong><strong>5HIMAKA</strong><strong> كمتجر إلكترونى </strong></li>
</ul>
<p><strong>&nbsp;</strong></p>
<p><strong>.&nbsp; عدم امكانية </strong><strong>5HIMAKA</strong><strong> بالتحقق من هوية جميع مستخدمي المتجر ولا تتحقق </strong><strong>5HIMAKA</strong><strong> </strong><strong>&nbsp;من إمكانياتهم المادية /الائتمانية أو نواياهم أو فحصهم </strong></p>
<p><strong>&nbsp;</strong></p>
<p><strong>. لا تقوم </strong><strong>5HIMAKA</strong><strong> بالتأكد من أو التدقيق في أو مراقبة جميع المعلومات المدرجة </strong></p>
<p><strong>&nbsp;</strong></p>
<p><strong>. لسنا طرفا في أي عقد لبيع أو شراء المنتجات التي يتم الإعلان عنها على متجر </strong><strong>5HIMAKA</strong></p>
<p><strong>&nbsp;</strong></p>
<p><strong>. لا نشترك في أي معاملة بين المشتري والبائع بأي شكل من الأشكال، ولا نقوم إلا بتسهيل عملية البيع بين البائع والمشترى ونقوم باتمام عملية المدفوعات نيابة عن البائعين </strong></p>
<p><strong>وان متجر </strong><strong>5HIMAKA</strong><strong> </strong><strong>&nbsp;ليس وكيلا لأي مشتري أو بائع </strong></p>
<p><strong>وبناءً على ذلك لا يعتبر متجر </strong><strong>5HIMAKA</strong><strong> مسئولآ تجاه أي شخص فيما يتعلق بعرض بيع أو شراء أي من المنتجات المعلن عنها على متجر </strong><strong>5HIMAKA</strong><strong> بالإضافة إلى ذلك لا يعتبر متجر </strong><strong>5HIMAKA</strong><strong> </strong><strong>&nbsp;مسئولآ عن تنفيذ أي التزامات تعاقدية ناشئة عن عقد بيع أو شراء أي منتجات ولن يكون لدى </strong><strong>5HIMAKA</strong><strong>&nbsp; أي التزام للوساطة بين الأطراف في أي عقد</strong></p>
<p><strong>&nbsp;</strong></p>
<p><strong>حيث ان متجر </strong><strong>5HIMAKA</strong><strong> </strong><strong>لا يضمن&nbsp; </strong><strong>اكتمال ودقه المعلومات المنشورة على متجر </strong><strong>5HIMAKA</strong><strong> </strong><strong>او</strong><strong> تحديث المحتوى الموجود على متجر </strong><strong>5HIMAKA</strong><strong> باستمرار او عدم وجود اخطاء تشغيل بموقع متجر </strong><strong>5HIMAKA</strong><strong> الالكتروني&nbsp; او بقاء الموقع متاح أو بقاء اي من الخدمات متاحة</strong><strong> </strong><strong>دأئمآ</strong><strong> </strong></p>
<p><strong>يحتفظ متجر </strong><strong>5HIMAKA</strong><strong> بالحق في إيقاف أو تغيير أي من خدمات متجر </strong><strong>5HIMAKA</strong><strong> أو جميعها &nbsp;والتوقف عن نشر المحتوى على متجر </strong><strong>5HIMAKA</strong><strong> في أي وقت وفقًا لتقدير </strong><strong>5HIMAKA</strong><strong> الخاص بدون أى إشعار أو تفسير ولن يحق لك الحصول على أي تعويض جراء إيقاف أو تغيير أي من خدمات متجر </strong><strong>5HIMAKA</strong><strong> </strong><strong>&nbsp;او &nbsp;ايقاف نشره لا نضمن أي نتائج تجارية تتعلق باستخدام الموقع لا يعتد بالإقرارات والضمانات المتعلقة بهذه الشروط والأحكام العامة ومتجر </strong><strong>5HIMAKA</strong><strong> واستخدامه إلى أقصى حد يسمح به القانون المعمول به </strong></p>
<p><strong>&nbsp;</strong></p>
<ul>
<li><strong> </strong><strong>تحديد واستبعاد المسئولية </strong></li>
</ul>
<p><strong>&nbsp;</strong></p>
<ul>
<li><strong> </strong><strong>لا يعتبر متجر </strong><strong>5HIMAKA</strong><strong> مسئولآ تجاهك عن أي خسارة أو ضرر من أي نوع ينتج عن الخدمات المقدمة مجانًا لا يتعدى إجمالي مسئولية متجر </strong><strong>5HIMAKA</strong><strong> </strong><strong>تجاهك فيما يتعلق بأي عقد تقديم خدمات لك وفقاً لهذه الشروط والأحكام العامة إجمالي المبلغ الذي تم سداده أو المستحق السداد &nbsp;</strong><strong>5HIMAKA</strong><strong> بموجب ذلك العقد وتعد كل معاملة منفصلة على متجر </strong><strong>5HIMAKA</strong><strong> عقدًا منفصلاً ليس متجر </strong><strong>5HIMAKA</strong><strong>&nbsp; مسئولآ تجاهك عن أي خسارة أو ضرر من أي نوع أي خسائر ناجمة عن أي انقطاع أو خلل في الموقع أو أي خسائر ناجمة عن أي حدث أو أحداث خارجة عن سيطرة متجر </strong><strong>5HIMAKA</strong><strong> المعقولة أي خسائر تجارية بما في ذلك على سبيل المثال لا الحصر خسارة في أو ضرر للأرباح أو الدخل أو الإيرادات أو الاستخدام أو الإنتاج أو المدخرات المتوقعة أو الأعمال التجارية أو العقود أو الفرص التجارية أو حسن النية أي فقد أو تلف في أي بيانات أو قاعدة بيانات أو برامج أي خسارة أو ضرر خاص أو غير مباشر أو استتباعي حيث انه من مصلحة متجر </strong><strong>5HIMAKA</strong><strong> </strong><strong>&nbsp;أن يقوم بالحد من المسؤولية الشخصية لمسؤوليها وموظفيها، ومع مراعاة هذه المصلحة تقر بأن </strong><strong>5HIMAKA</strong><strong> </strong><strong>&nbsp;كيان محدود المسؤولية وتوافق وتتعهد بامتناعك عن رفع أي دعوى شخصية ضد مسؤولي </strong><strong>5HIMAKA</strong><strong> </strong><strong>&nbsp;أو موظفيها فيما يتعلق بأي خسائر تتكبدها والتي تتعلق بمتجر &nbsp;</strong><strong>5HIMAKA</strong><strong> أو هذه الشروط والأحكام العامة ولن يحد هذا أو يستبعد مسؤولية الكيان ذو المسؤولية المحدودة عن أفعال وسهو مسؤولي وموظفي </strong><strong>5HIMAKA</strong></li>
</ul>
<p><strong>&nbsp;</strong></p>
<ul>
<li><strong> </strong><strong>التعويض</strong></li>
</ul>
<p><strong>&nbsp;</strong></p>
<p><strong>&nbsp;</strong></p>
<ul>
<li><strong> </strong><strong>تتعهد بموجب هذه الشروط والأحكام العامة بتعويض </strong><strong>5HIMAKA</strong><strong> عن جميع الخسائر والأضرار والتكاليف والمسؤوليات والمصروفات بما في ذلك على سبيل المثال لا الحصر النفقات القانونية وأي مبالغ تتكبدها </strong><strong>5HIMAKA</strong><strong> </strong><strong>لأي طرف ثالث لتسوية دعوى أو نزاع التي تتكبدها </strong><strong>5HIMAKA</strong><strong> </strong><strong>والتي تنشأ بشكل مباشر أو غير مباشر عن استخدامك لمتجر </strong><strong>5HIMAKA</strong><strong> </strong><strong>أو أي انتهاك من جانبك لأي نص من نصوص هذه الشروط والأحكام العامة أو أحكام أو سياسات أو إرشادات </strong><strong>5HIMAKA</strong><strong> </strong><strong>وأي مسؤولية عن ضريبة القيمة المضافة أو أي مسؤولية ضريبية أخرى قد تتحملها </strong><strong>5HIMAKA</strong><strong> </strong><strong>فيما يتعلق بأي عملية بيع أو توريد أو شراء تمت من خلال متجر </strong><strong>5HIMAKA</strong><strong> </strong><strong>تنشأ بسبب فشلك في سدادها استقطاعها أو الإعلان عنها أو التسجيل لدفع ضريبة القيمة المضافة أو أي ضريبة أخرى مستحقة في أي منطقة</strong><strong>.</strong></li>
</ul>
<p><strong>&nbsp;</strong></p>
<ul>
<li><strong> </strong><strong>الإخلال بالشروط والأحكام العامة</strong></li>
</ul>
<p><strong>&nbsp;</strong></p>
<p><strong>&nbsp;</strong></p>
<ul>
<li><strong> </strong><strong>في حالة قيام </strong><strong>5HIMAKA</strong><strong> </strong><strong>بالسماح بتسجيل حساب علي متجر </strong><strong>5HIMAKA</strong><strong> </strong><strong>فسيظل موجود إلى عام واحد فقط مع مراعاة التجديد ولاكن</strong><strong><br /></strong><strong>إذا قمت بالإخلال بأي التزام من الالتزامات الواردة في هذه الشروط والأحكام العامة&nbsp; أو إذا تم الشك من قبل </strong><strong>5HIMAKA</strong><strong> </strong><strong>بإخلالك بالشروط والأحكام العامة أو أي من أحكام أو سياسات أو إرشادات متجر </strong><strong>5HIMAKA</strong><strong> </strong><strong>بأي شكل من الأشكال يحق </strong><strong>ل </strong><strong>5HIMAKA</strong><strong> </strong><strong>حينها تعليق وصولك مؤقتًا إلى متجر </strong><strong>5HIMAKA</strong><strong> &nbsp;</strong><strong>&nbsp;</strong><strong>ومنعك بشكل دائم من الوصول إلى متجر </strong><strong>5HIMAKA</strong><strong> </strong></li>
</ul>
<p><strong>وحجب أجهزة الكمبيوتر التي تستخدم الـ</strong><strong>IP </strong><strong>&nbsp;</strong><strong>الخاص بك من الوصول إلى متجر &nbsp;</strong><strong>5HIMAKA</strong><strong> </strong><strong>التوصل مع أي أو جميع مزودي خدمة الإنترنت لك وطلب حظر وصولك إلى متجر </strong><strong>5HIMAKA</strong><strong> </strong><strong>و</strong><strong>تعليق أو حذف حسابك من على موقع </strong><strong>5HIMAKA</strong><strong> </strong><strong>واذا استدعا الامر لذلك سوف نقوم بالبدء فى اتخاذ إجراءات قانونية ضدك سواء بسبب انتهاك العقد أو غير ذلك</strong><strong> </strong></p>
<p><strong><br /></strong><strong>* &nbsp;تلتزم بعدم اتخاذ أي إجراء للتحايل على تعليق أو منع أو حجب وصولك إلى متجر </strong><strong>5HIMAKA</strong><strong>&nbsp; </strong><strong>بما في ذلك على سبيل المثال لا الحصر إنشاء أو استخدام حساب مختلف في حالة قيام متجر </strong><strong>5HIMAKA</strong><strong> </strong><strong>بتعليق أو منع أو حجب وصولك إلى متجر </strong><strong>5HIMAKA</strong><strong> </strong><strong>كليا او جزئيا</strong><strong>. </strong></p>
<p><strong>مجمل العقد</strong></p>
<ul>
<li><strong> </strong><strong>تشكل هذه الشروط والأحكام العامة وأحكام وسياسات وإرشادات </strong><strong>5HIMAKA</strong><strong> </strong><strong>وفيما يتعلق بالبائع تضاف شروط وأحكام البائع</strong><strong> </strong><strong>الاتفاق الكامل بينك وبين متجر </strong><strong>5HIMAKA</strong><strong> </strong><strong>فيما يتعلق باستخدامك لمتجر </strong><strong>5HIMAKA</strong><strong> </strong><strong>وسوف تحل محل جميع الاتفاقات السابقة بينك وبين </strong><strong>5HIMAKA</strong><strong> </strong></li>
<li><strong> </strong><strong>تسلسل الشروط والأحكام </strong></li>
</ul>
<p><strong>&nbsp;</strong></p>
<ul>
<li><strong> </strong><strong>فى حالة تضارب هذه الشروط والأحكام العامة مع شروط وأحكام البائع وأحكام وسياسات وإرشادات متجر </strong><strong>5HIMAKA</strong><strong> </strong><strong>فإن هذه الشروط والأحكام العامة وشروط وأحكام البائع وأحكام وسياسات وإرشادات </strong><strong>5HIMAKA</strong><strong> </strong><strong>سوف تعمل بالترتيب المذكور او غير الترتيب كما تريد </strong><strong>5HIMAKA</strong><strong> </strong><strong>حسب تقديرها للامر</strong></li>
</ul>
<p><strong>&nbsp;</strong></p>
<p><strong>&nbsp;</strong></p>
<ul>
<li><strong> </strong><strong>المراجعة والتعديل </strong></li>
</ul>
<p><strong>&nbsp;</strong></p>
<ul>
<li><strong> </strong><strong>يحق لمتجر </strong><strong>5HIMAKA</strong><strong> </strong><strong>ال</strong><strong>مراجعة او التغير او الاضافة او الحذف علي هذه الشروط والأحكام العامة وشروط وأحكام البائع وأحكام وسياسات وإرشادات متجر </strong><strong>5HIMAKA</strong><strong> </strong><strong>من وقت لآخر دون الرجوع اليك كاعضو وهذا متروك الي تقديرات </strong><strong>5HIMAKA</strong><strong> </strong><strong>وما تراه صالح الي هذا المتجر وللجميع </strong><strong><br />&nbsp;</strong><strong>تنطبق الشروط والأحكام العامة التى تم مراجعتها من تاريخ النشر على متجر </strong><strong>5HIMAKA</strong></li>
</ul>
<p><strong>&nbsp;</strong></p>
<p><strong>&nbsp;</strong></p>
<ul>
<li><strong> </strong><strong>إمكانية الفصل</strong></li>
<li><strong> </strong><strong>إذا قررت أي محكمة أو سلطة مختصة أخرى أن نص من نصوص هذه الشروط والأحكام العامة غير قانونية و/أو غير نافذة سوف تظل الأحكام الأخرى سارية</strong><strong><br /></strong><strong>إذا تواجد أي نص غير قانوني و/أو غير نافذ من هذه الشروط والأحكام العامة وأنه سيكون قانونيًا أو قابلًا للتطبيق إذا تم حذف جزء منه سوف يتم اعتبار هذا الجزء محذوفًا وسوف يكون باقي القسم ساري</strong><strong> </strong></li>
</ul>
<p><strong>&nbsp;</strong></p>
<ul>
<li><strong> </strong><strong>. </strong><strong>تفويض</strong></li>
</ul>
<p><strong>&nbsp;</strong></p>
<p><strong>&nbsp;</strong></p>
<ul>
<li><strong> </strong><strong>توافق بموجبة أنه يجوز ل </strong><strong>5HIMAKA</strong><strong> </strong><strong>التنازل عن أو نقل أو التعاقد الفرعي أو التصرف في حقوقها و/أو التزاماتها بموجب هذه الشروط والأحكام العامة ولا يجوز لك دون الحصول على الموافقة الكتابية من </strong><strong>5HIMAKA</strong><strong> </strong><strong>التنازل أو النقل أو التعاقد الفرعى أو التصرف بأي طريقة أخرى في أي من حقوقك و التزاماتك الواردة بهذه الشروط والأحكام العامة</strong></li>
</ul>
<p><strong>&nbsp;</strong></p>
<ul>
<li><strong> </strong><strong>حقوق الطرف الثالث</strong></li>
</ul>
<p><strong>&nbsp;</strong></p>
<p><strong>يعد العقد بموجب هذه الشروط والأحكام العامة لصالحنا ولصالحك ولا يقصد استفادة طرف ثالث منه أو أن يكون نافذاً قبل أي طرف ثالث</strong><strong>.<br /></strong><strong>لا تخضع ممارسة حقوق الأطراف النابعة من عقد تم إبرامه بموجب هذه الشروط والأحكام العامة لموافقة أي طرف ثالث</strong></p>
<ul>
<li><strong> </strong><strong>القانون والاختصاص القضائي</strong></li>
<li><strong> </strong><strong>تخضع هذه الشروط والأحكام العامة وتفسر وفقًا لقوانين جمهورية مصر العربية</strong><strong>.<br /></strong><strong>تخضع أي نزاعات تتعلق بهذه الشروط والأحكام العامة للاختصاص القضائي لمحاكم القاهرة</strong></li>
</ul>
<p><strong>&nbsp;</strong></p>
<ul>
<li><strong> </strong><strong>تلتزم وتقر وتوافق كاعضو علي جميع هذه الشروط والاحكام بجميع بنود هذه الاتفاقية حتي تكون عضو في متجر </strong><strong>5HIMAKA</strong><strong> كما انك تعلم جيدآ انك ليس لك الحق في الزام </strong><strong>5HIMAKA</strong><strong> باي خسارة </strong><strong>مدية او معنوية</strong><strong> تحدث لك لانك تقر وتوافق وتعلم جيدآ أن متجر </strong><strong>5HIMAKA</strong><strong> مجرد وسيط لتسهيل عملية البيع بين البائع والمشتري حيث أن متجر </strong><strong>5HIMAKA</strong><strong> يقوم بهذه العملية مجانا لجميع الاعضاء بدون فرض اي رسوم علي التاجر او المشتري في اي عملية تتم من خلال متجر </strong><strong>5HIMAKA</strong><strong> وانك كاعضو تقوم باي عملية كتاجر او مشتري ليس لك الحق في الزام </strong><strong>5HIMAKA</strong><strong> عن اي خسائر تحدث لك </strong><strong>مدية او معنوية</strong><strong> ومع علمك بكل هذه الامور قد التزمت بها واصبحت عضو لدي متجر </strong><strong>5HIMAKA</strong><strong> فانك توافق علي هذه الشروط والاحكام باكملها دون حذف او عدم فهم كلمة واحدة من هذه الاتفاقية بالكامل </strong></li>
</ul>
<p><strong>&nbsp;</strong></p>
<ul>
<li><strong> </strong><strong>ملحوظة مهمة جدآ خارج هذه الاتفاقية ولا تعتبر جز منها باي طريقة او وسيلة ممكنة </strong></li>
</ul>
<p><strong>&nbsp;</strong></p>
<ul>
<li><strong> </strong><strong>اذا وجدت بند من هذه البنود وتظن انه هذا البند سوف يتسبب في حرمانك من خدمة قد أعلنا مسبقا أنك سوف تحصل عليها داخل متجر </strong><strong>5HIMAKA</strong><strong> </strong><strong>فنحن نطمانك أنه من المستحيل أن نضيع اي حق من حقوقك او نخلف وعد قد قطعناه معك وليس معني اننا نعطيك هذه الخدمات مجانا فهذا يعني أن من الممكن حرمانك منها بكل سهول بالطبع لا يحدث اي امر من هذه الامور وما دمت عضو ملتزم بهذه الشروط والاحكام فلا تحرم من اي شي من خدمات </strong><strong>5HIMAKA</strong><strong> </strong><strong>ولاكن سوف تكون حقوقك التي تستحقها هي التي تكون من وجهة نظر ومن تقديرات </strong><strong>5HIMAKA</strong><strong> </strong><strong>وانت كاعضو ليس لك الحق في الاعتراض ونحن هنا لخدمة أعضانا وتقديم لهم الخدمات التي تليق بهم </strong></li>
</ul>
<p><strong>&nbsp;</strong></p>
<ul>
<li><strong> </strong><strong>نتمني لجميع أعضاء متجر </strong><strong>5HIMAKA</strong><strong> </strong><strong>تجربة مميزة من التسوق وأن يكونو راضين علي الخدمات التي تقدم لهم وسوف يكون لكل استفسار الاتصال الخاص به عن طريق الاميل فانت قادر ان تتواصل معنا في اي وقت تريده ونحن سوف نكون عند حسن ظنك في حل مشكلتك في اسرع وقت او الاجابة علي استفساراتك اسرع مما يمكن ولكننا ننصحك ان تقوم بتفعيل اميل جديد خاص </strong><strong>5HIMAKA</strong><strong> </strong><strong>حتي يكون جميع مرسالتنا واضحة امامك في اي وقت </strong></li>
</ul>
<p><strong>&nbsp;</strong></p>
""";
const eHtmlData = """  <div class="container">
            <div class="custom-page-content clearfix">
<ul>
<li><strong> The Introduction</strong></li>
</ul>
<p><strong>We are 5HIMAKA e-commerce Company and we run an e-commerce platform through a website and application for mobile phones and this with the provision of logistical services and payment services for the sale and purchase of consumer products through the 5HIMAKA store in the Arab Republic of Egypt and these conditions are applied to all members And every member must read it very well and agree to all the conditions and we are very keen that you &nbsp;understand it very well and confirm these conditions we have approved, mentioned and confirmed the terms more than once in each stage you need to confirm the information and if you find any condition that you do not want to agree to it or think that it is a clause that will cause any Harm to you, we advise and encourage you not to complete the subscription or agree to these terms and conditions</strong></p>
<ul>
<li><strong><u> Conditions of participation</u></strong></li>
</ul>
<p><strong>As a member, you acknowledge and agree to the following:-</strong></p>
<ul>
<li><strong>the Membership is for those over the age of 18 years only, and we have the right to delete the account of any member, if we discover that he didn&rsquo;t get 18 , and of course, given him all his financial rights</strong></li>
<li><strong>You acknowledge that 5Himaka store has assured you over and over to read this entire agreement before subscribing, and if you do not make its decisions and understand it well, you will be the only one responsible for that, and we do this confirmation because we are very keen that you make your decision by yourself and protect your privacy.</strong></li>
<li><strong>You commit, agree and acknowledge that the value of your subscription is just for obtaining a membership and getting around the pages of the 5HIMAKA store for a year and requesting permission to add a team for providing assistance to you to get the services and commission only, and there is nothing other than that</strong></li>
<li><strong>You acknowledge and agree that you, as a member, are fully aware and certain that the subscription value is nothing but a symbolic value to register your membership and Get around the store and allow you to add a team to help and make views only, and you do not have the right to benefit from any service inside the store before achieving the condition or testing first, which is to getting 55555 marketing points After that, you have the right to benefit and use all the free services that 5Himaka provides</strong></li>
</ul>
<p>&nbsp;</p>
<ul>
<li><strong>You acknowledge and agree as a member. You do not have any problem in the matter of these marketing points, and you do not have any problem that it is not explained how to obtain them. Each point separately means that one visit is how many points are equal and this is what is in the matter</strong></li>
</ul>
<p>&nbsp;</p>
<ul>
<li><strong>You acknowledge and agree, that it is impossible to object or question the credibility of the 5HIMAKA program that you have been deprived of the commission of a successful sale, purchase or marketing process, as you acknowledge that this program is done automatically and does not take place any manual intervention .and if you make any objection or doubt You did not have this right and it is not taken into consideration And you acknowledge that this program is provided to you for free and does not have any commissions or administrative expenses, and it is not obligatory that you subscribe to this program and you have subscribed completely freely, and we are not obligated to give you this commission and free services, and 5 Himaka has the right to suspend any of these services and transactions at any time without reference to you Or increase in subscription, commissions or services without referring to you as well</strong></li>
<li><strong>You are fully aware and knowledgeable that you will only subscribe for one year and that your subscription will not last more than one year</strong></li>
<li><strong>No member has the right to sell prohibited, suspicious or stolen products or violate laws and provisions, and if this is proven, he puts himself in front of legal accountability, and this is without any responsibility on 5 Himaka</strong></li>
<li><strong>You acknowledge and commit that while requesting membership, you will provide all the information and papers that will be requested while giving us the right to view the original if necessary, and all papers must be valid and in the event of submitting any unofficial papers or false information, legal measures will be taken against you. If necessary for that</strong></li>
<li><strong>You acknowledge and commit that you are the only one responsible for your secret information and you are the only one who bears the responsibility in case of any kind of lose happens to you, and that 5HIMAKA does not bear responsibility for any kind of loss that occurs to any member because he couldn&rsquo;t protect his secret information and we have done everything we can to secure your account and to make it impossible for Anyone other to control your account, and if this happens, it is a result of your neglect of your information</strong></li>
<li><strong>You are required to compensate 5Himaka if your account is used in any illegal activity and caused any lose to 5himaka store</strong></li>
<li><strong>The 5Himaka store has the full right to conduct any investigation at any time, directly or in another way, to ensure that your information and your identity document are totally correct you are obligated to provide the required documents if you are a seller or only a buyer</strong></li>
<li><strong>In the event of default or non-compliance with what was mentioned, the 5HIMAKA store will have the right to completely block the violating member from the store.</strong></li>
<li><strong>You agree and commit that you will pay the cost of the product with the completion of the purchase process, and 5HIMAKA store does not have a payment on receipt feature, and 5HIMAKA store is only a mediator in this process, and if the product will not obtain your satisfaction, and in the event that any defect appears in the product, you have the right to replace it through us And without imposing any fees and the process remains free of charge, or recovering your money again, but when any defect in the product is mentioned and with the examination, the defect that you mentioned will not be found, you will be the one who is required to compensate 5 Himaka Store for this mistake in our right and in the right of the merchant and all this remains to the estimates of the 5 Himaka store As no member has the right to decide what happens in such cases</strong></li>
<li><strong>You acknowledge and commit that you, as a merchant member, are fully responsible for the efficiency of your product, and that it is 100% like what you explained in the product description, and you are bound to accept the decisions of the 5HIMAKA store in the event of any dispute issue on any product that you sold</strong></li>
</ul>
<p>&nbsp;</p>
<ul>
<li><strong>You as a member acknowledge and agree to any modification made in this program or adding any government taxes and you agree to this matter without referring to you and taking your consent to any modification that takes place throughout your subscription period and you have no right to object permanently except in one way, which is to cancel your membership</strong></li>
<li><strong>You, as a member of 5 Himaka store, have to agree to all the terms of this agreement and you have no right to object to anything in this agreement</strong></li>
</ul>
<p>&nbsp;</p>
<p><strong><u>You are committed not to:</u></strong></p>
<p><strong><u>&nbsp;</u></strong></p>
<ul>
<li><strong>Use the 5HIMAKA website in any way or take any</strong></li>
</ul>
<p><strong>action that may cause damage to the site or impede the site&rsquo;s performance, availability, accessibility, integrity, or security.</strong></p>
<ul>
<li><strong>Use the 5HIMAKA store in any way that is unethical, illegal, or harmful, or in connection with any illegal purpose or activity that May damage 5HIMAKA store to 5HIMAKA store</strong></li>
<li><strong>Investigation, examination or site testing without permission from 5HIMAKA administration</strong></li>
<li><strong>Circumventing any protection regulations or measures of 5HIMAKA</strong></li>
<li><strong>Not to use the 5HIMAKA store to copy, store, host, transmit, send, use, publish, distribute, or any content consisting of any spyware, computer viruses, or other harmful computer programs</strong></li>
<li><strong>Not to impose a large load that exceeds what is reasonable on the resources of the 5HIMAKA site, including the bandwidth, storage capacity and processing capacity, to any damage in any way possible or lead to it</strong></li>
<li><strong>Decrypt any communications sent to and from our site without the express written consent of 5HIMAKA, and it shall be signed by the director of the company and be under the supervision of the project manager</strong></li>
<li><strong>. Conducting any data collection activities on a regular or automatic basis, including, but not limited to, sweeping, excavating, extracting and collecting data on our website or in relation to the site without the express written consent of 5HIMAKA, and it shall be signed by the director of the company and be under the supervision of the project manager</strong></li>
<li><strong>Not to access or interact with 5 Himaka by using any robot, spider, or any other automated means except for the search engine</strong></li>
<li><strong>You are obligated to use the 5 Himaka store only through our dashboard</strong></li>
<li><strong>Use the data collected from 5HIMAKA for any direct marketing activity, including but not limited to email marketing, SMS marketing, telemarketing and direct mail, or doing anything that conflicts with the normal use of 5HIMAKA store.</strong></li>
<li><strong>You, as a member, have the right to be honest with you in everything that the 5HIMAKA platform offers, and you have no right to object to what we have not provided except with one case. That you say your opinion by correspondence with the opinion account.</strong></li>
<li><strong>You are obligated not to tamper with other accounts and to buy services from yourself or from others.</strong></li>
<li><strong>It is prohibited to use spam to invite users, which may constitute a direct or indirect abuse of the 5HIMAKA store</strong></li>
<li><strong>It is prohibited to use pop-ups or display the site within the iframe tag, or to use any other methods that force the visitor to open the site without his desire.</strong></li>
<li><strong>5HIMAKA store has the right to block the account with any profits that have been achieved in the event that it proves the existence of fraudulent methods or marketing the site in misleading or in violation of the conditions</strong></li>
</ul>
<p>&nbsp;</p>
<p><strong>Terms and conditions of sale</strong></p>
<p><strong>You acknowledge and agree to the following ...</strong></p>
<p>&nbsp;</p>
<ul>
<li><strong>That 5HIMAKA store is a website for sellers to sell their products and for buyers to purchase these products</strong></li>
</ul>
<p>&nbsp;</p>
<ul>
<li><strong>Although 5HIMAKA store accepts binding sales on behalf of the seller, 5HIMAKA store is not in any way considered a party to the transaction between the seller and the buyer</strong></li>
<li><strong>As a member, you are bound by the contract between you and the buyer for every purchase</strong></li>
</ul>
<p>&nbsp;</p>
<ul>
<li><strong>You are obligated to sell or buy the required product in any purchase that takes place</strong></li>
<li><strong>You are obligated to have this product as it was shown on the 5HIMAKA store through your store with all the specifications that have been mentioned to describe the product. The product must be of quality and satisfy the buyer and be suitable and safe for any purpose specified in the product description. All specifications must match according to the product description to the buyer On the 5HIMAKA store</strong></li>
<li><strong>You undertake as a seller that you have the right to sell the products, that you are the legal owner and the sole beneficiary of the products, and that the products are not subject to any rights or restrictions from third parties including the intellectual property rights of a third party and / or the existence of criminal proceedings, insolvency, investigations or tax procedures</strong></li>
<li><strong>You, as a member, are bound by the price that was included in the product category</strong></li>
<li><strong>You acknowledge and agree to the dispute period that the store gives to the buyer until the product is examined by the buyer</strong></li>
<li><strong>In the event that a dispute case is opened between you and the buyer over a product that you sold, then you agree to any decision that is made by the 5 Himaka store and that you will not object to this because you are absolutely certain that this decision is 100% correct</strong></li>
<li><strong>It is committed that the price of the product includes all types of taxes and all laws in force and taken in the Arab Republic of Egypt from time to time</strong></li>
<li><strong>You commit that your content used on the 5HIMAKA store is accurate, complete and honest content. It must be decent, civilized and tasteful content that conforms to generally accepted standards of morality and behavior and that it does not illustrate violence in an explicit or graphic way or a method calling for violations of the laws on racism, religion or Related to hate or discrimination is not deceptive, fraudulent, threatening, harassing or anti-social content, inflammatory content, or content that is likely to cause harassment, inconvenience or concern to any person or random and unwanted content.</strong></li>
</ul>
<p>&nbsp;</p>
<ul>
<li><strong>You are obligated that you, as a member, use the conversation feature provided by the 5 Himaka store between the buyer and the merchant, a use befitting the store and do not say any words that insult or anger the other party from the conversation. You have any rights other than your money due from selling your products only if you are a seller, and this is a severe punishment for infringing on others and using the communication feature to facilitate the purchase process and if you announce your personal information in this conversation.</strong></li>
<li><strong>You undertake that your content will not be unlawful or illegal, or violate the legal rights of any person, or cause any lawsuit to be filed against any person in any case in a judicial system and under any applicable law, and your content must not be considered a breach of or Violation of any copyright, moral, database-related rights, trademark rights, design rights, or intellectual property rights in all ways and with all legal meanings, or any rights of trust, privacy, or rights under data protection laws or a contractual obligation owed to any person or any judgment issued Under any court ruling</strong></li>
</ul>
<p>&nbsp;</p>
<ul>
<li><strong>You shall not use the site to link to any website or web page consisting of or providing content that would violate the general terms and conditions if it is published on the 5HIMAKA website.</strong></li>
<li><strong>You acknowledge that all 5 Himaka store users are solely responsible for interacting with other users and you must exercise caution when communicating with users and not send personal information, including credit card details to users.</strong></li>
<li><strong>5HIMAKA store has the right to review your content periodically and we have the right to remove any content at our discretion for any reason.</strong></li>
<li><strong>You are obligated not to interfere in any type of transaction such as contacting another user to buy or sell a product listed on the 5HIMAKA store outside the 5HIMAKA store. Communicate with a user who has active or completed transactions to warn him of a specific buyer, seller or product. These matters, it is outside the responsibility of 5HIMAKA</strong></li>
</ul>
<p>&nbsp;</p>
<ul>
<li><strong>You are obligated not to display any content on the 5HIMAKA website that might cause any legal procedures or any other similar complaint from any third party</strong></li>
<li><strong>The rating feature on the 5HIMAKA website is used to rate the products by the buyer. You may not use the rating feature or any other form of communication to provide inaccurate, incorrect or fake reviews.</strong></li>
</ul>
<p>&nbsp;</p>
<ul>
<li><strong>You will immediately notify 5HIMAKA if you discover any illegal content or activity on the 5HIMAKA website or any content or activity that violates these general terms and conditions.</strong></li>
</ul>
<p>&nbsp;</p>
<ul>
<li><strong>You are obligated not to modify or change any content on the 5HIMAKA store except for what is permitted for you, or to re-publish the content on the 5HIMAKA store on the site of the last sale, rent or license content from the 5HIMAKA store and to exploit the content for commercial purposes or redistribute the content in any way possible</strong></li>
</ul>
<p>&nbsp;</p>
<ul>
<li><strong>In the event that your membership is suspended or your access to the 5HIMAKA store is completely or partially restricted, or during the maintenance of the website server or updates to the 5HIMAKA store, you are obligated not to circumvent or bypass any procedures to reach 5 Himaka in any way that can be done to access</strong></li>
</ul>
<p>&nbsp;</p>
<ul>
<li><strong>Not to use the 5HIMAKA store in any way or to take any action that may cause damage to the site, impede the site&rsquo;s performance, availability, ease of access, integrity, or security. Do not use the 5Himaka site in any way that is unethical, illegal Or fraudulent or malicious or in connection with any illegal, , fraudulent or malicious purpose or activity or hacking or tampering with 5HIMAKA store Investigation, examination or testing of the site without permission from 5HIMAKA circumvent any systems or procedures of documentation or protection on or related to our site</strong></li>
</ul>
<p><strong>&nbsp;</strong></p>
<ul>
<li><strong>You shall not impose any information or any large load that exceeds reasonably on the resources of the 5HIMAKA website, including the bandwidth, storage capacity, processing capacity, and the use of the 5HIMAKA store through our public interface</strong></li>
</ul>
<p>&nbsp;</p>
<p>&nbsp;</p>
<ul>
<li><strong><u> Data privacy and confidentiality</u></strong></li>
</ul>
<p><strong><u>&nbsp;</u></strong></p>
<p><strong><u>&nbsp;</u></strong></p>
<ul>
<li><strong>You agree to process your personal data in accordance with the provisions of privacy and cookie notice 5HIMAKA by processing all personal data obtained through the 5HIMAKA store and related services in accordance with the provisions of privacy, cookie notice and privacy policy Sellers are directly responsible for buyers in case of misuse of data Personal Buyers 5HIMAKA shall not bear any liability to buyers in the event of misuse of buyers' personal data</strong></li>
</ul>
<p>&nbsp;</p>
<ul>
<li><strong><u> Due protection and review rights</u></strong></li>
</ul>
<p><strong><u>&nbsp;</u></strong></p>
<p><strong>5HIMAKA manages an anti-money laundering program and reserves the right to conduct due diligence checks on all users of the 5HIMAKA store committed to providing all information and documents related to your business in addition to the possibility to enter your commercial headquarters upon our request in order to verify your commitment to the terms and conditions of this contract and to implement your obligations under it with the aim of submitting statements By an order issued by a court or other government agency</strong></p>
<p><strong>as required by applicable law or regulations</strong></p>
<p>&nbsp;</p>
<ul>
<li><strong><u> 5HIMAKA's role as an E-store</u></strong></li>
</ul>
<p><strong><u>&nbsp;</u></strong></p>
<ul>
<li><strong>5HIMAKA is not able to verify the identity of all store users and 5HIMAKA does not verify their financial / credit potential, intentions, or examination</strong></li>
<li><strong>5HIMAKA does not verify, audit or monitor all information listed</strong></li>
<li><strong>We are not a party to any contract to buy or sell products that are advertised on the 5HIMAKA store</strong></li>
<li><strong>We do not participate in any transaction between the buyer and the seller in any way, and we only facilitate the sale process between the seller and the buyer and we complete the payments process on behalf of the sellers 5HIMAKA store is not an agent for any buyer or seller</strong></li>
<li><strong>Accordingly, 5HIMAKA store is not responsible towards any person regarding the offer to sell or buy any of the products advertised on the 5HIMAKA store, in addition to that, 5HIMAKA store is not responsible for the implementation of any contractual obligations arising from a contract to sell or buy any products, and 5 Himaka will not have No obligation to mediate between the parties in any contract</strong></li>
</ul>
<p>&nbsp;</p>
<p><strong>5HIMAKA store does not guarantee the completeness and accuracy of the information published on the 5HIMAKA store, or the continuous updating of the content on the 5HIMAKA store, or the absence of operating errors in the 5HIMAKA online store site, or the survival of the site available or any of the services always available</strong></p>
<p>&nbsp;</p>
<p><strong>5HIMAKA store reserves the right to stop or change any or all of 5HIMAKA store services and stop posting content on 5HIMAKA store at any time according to 5HIMAKA's own discretion without any notice or explanation and you will not be entitled to any compensation for stopping or changing any of 5HIMAKA store services We do not guarantee any commercial results related to the use of the site. The representations and warranties related to these general terms and conditions are not taken into account, and the 5HIMAKA store and its use to the maximum extent permitted by applicable law</strong></p>
<ul>
<li><strong><u> Determine the responsibility of the store</u></strong></li>
</ul>
<p>&nbsp;</p>
<p><strong>5HIMAKA store is not responsible towards you for any loss or damage of any kind resulting from the services provided for free. The total responsibility of 5HIMAKA store towards you in relation to any contract to provide services to you in accordance with these general terms and conditions does not exceed the total amount paid or due for payment Contract and each separate transaction on the 5Himaka store is a separate contract. 5Himaka Shop is not responsible towards you for any loss or damage of any kind, any losses resulting from any interruption or defect in the site or any losses resulting from any event or events outside the reasonable control of 5Himaka Store, any losses Commercial Including but not limited to loss or damage to profits, income, revenue, use, production, anticipated savings, business, contracts, business opportunities, goodwill, any loss or damage to any data, database or programs, any loss or Special, indirect or consequential damage as it is in the interest of 5HIMAKA store to limit the personal liability of its officials and employees, and taking into account this interest you acknowledge that 5HIMAKA is a limited liability entity and agree and pledge that you will not file any personal lawsuit against 5Himaka officials or its employees in relation to any losses you incur Which relates to 5HIMAKA store or these general terms and conditions and this will not limit or exclude the liability of the limited liability entity for the acts and omissions of 5HIMAKA officials and employees</strong></p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p><strong><u>The compensation</u></strong></p>
<p><strong><u>&nbsp;</u></strong></p>
<ul>
<li><strong>Under these general terms and conditions, you undertake to indemnify 5HIMAKA for all losses, damages, costs, responsibilities and expenses including but not limited to legal expenses and any sums that 5HIMAKA incurs to any third party to settle a claim or dispute incurred by 5HIMAKA that arises directly or indirectly from your use of the store 5HIMAKA or any violation on your part of any of the provisions of these general terms and conditions or 5HIMAKA provisions, policies or guidelines and any liability for VAT or any other tax liability that 5HIMAKA may bear in connection with any sale, supply or purchase made through the 5HIMAKA store that arises Because of your failure to pay it, withhold it, declare it, or register to pay VAT or any other tax due in any region.</strong></li>
</ul>
<p>&nbsp;</p>
<p><strong><u>For breaching the general terms and conditions</u></strong></p>
<ul>
<li><strong>In the event that 5HIMAKA allows registering an account on the 5HIMAKA store, it will remain in existence for only one year, subject to renewal, but</strong></li>
</ul>
<p><strong>&nbsp; If you breach any of the obligations contained in these general terms and conditions, or if 5Himaka is suspected of your breaching the general terms and conditions or any of the terms, policies or guidelines of 5Himaka store in any way, 5Himaka has the right to temporarily suspend your access to the 5Himaka store and prevent you in a way. Always have access to the 5HIMAKA store&nbsp;&nbsp; . &nbsp;And blocking the computers that use your IP from accessing the 5HIMAKA store. Reach out with any or all of your Internet service providers and request that you block your access to the 5HIMAKA store and suspend or delete your account from the 5HIMAKA website. If the matter calls for that, we will start taking legal action against you, whether because Violation of contract or otherwise</strong></p>
<p><strong>* You commit not to take any action to circumvent the suspension, or blocking of your access to the 5HIMAKA store, including but not limited to creating or using a different account in the event that 5HIMAKA store suspends, blocks or blocks your access to the 5HIMAKA store in whole or in part.</strong></p>
<p>&nbsp;</p>
<p><strong><u>The entire contract</u></strong></p>
<p>&nbsp;</p>
<p><strong>These general terms and conditions, provisions, policies and guidelines of 5Himaka and with regard to the seller are added to the terms and conditions of the seller the complete agreement between you and 5Himaka Shop regarding your use of 5Himaka store and will replace all previous agreements between you and 5Himaka</strong></p>
<ul>
<li><strong> The sequence of terms and conditions</strong></li>
</ul>
<p>&nbsp;</p>
<ul>
<li><strong>In the event that these general terms and conditions are inconsistent with the seller&rsquo;s terms and conditions, the terms and policies and guidelines of the 5HIMAKA store, these general terms and conditions, the seller&rsquo;s terms and conditions, the provisions, policies and guidelines of 5HIMAKA will work in the aforementioned order or change the arrangement as desired by 5HIMAKA at its discretion.</strong></li>
</ul>
<p><strong>&nbsp;Reviews and modification</strong></p>
<p>&nbsp;</p>
<ul>
<li><strong>5HIMAKA store has the right to review, change, add or delete these general terms and conditions, terms and conditions of the seller and the terms and policies and guidelines of the 5HIMAKA store from time to time without referring to you as a member and this is up to the estimates of 5Himaka and what you deem is valid for this store and for everyone</strong></li>
</ul>
<p><strong>&nbsp; The general terms and conditions revised from the date of publication apply to 5HIMAKA store</strong></p>
<p><strong><u>&nbsp;</u></strong></p>
<p><strong><u>Possibility of dismissal</u></strong></p>
<ul>
<li><strong>If any court or other competent authority decides that a provision of these general terms and conditions is illegal and / or unenforceable, the other provisions will remain in effect.</strong></li>
</ul>
<p><strong>If any illegal and / or non-enforceable text of these general terms and conditions exists and it will be legal or applicable if part of it is deleted, this part will be considered deleted and the rest of the section will be valid</strong></p>
<ul>
<li><strong>. Authorization</strong></li>
</ul>
<p><strong>You hereby agree that 5HIMAKA may assign, transfer, sub-contract or dispose of its rights and / or obligations under these general terms and conditions, and you may not, without obtaining the written consent of 5HIMAKA, assign, transfer, sub-contract or act in any other way in any way. Of your rights and obligations stated in these general terms and conditions</strong></p>
<p>&nbsp;</p>
<ul>
<li><strong>Rights of the third party</strong></li>
</ul>
<p><strong>The contract under these general terms and conditions is in our interest and in your favor and is not intended for a third party to benefit from it or to be enforceable by any third party.</strong></p>
<p><strong>The exercise of the rights of the parties stemming from a contract concluded under these General Terms and Conditions is not subject to the consent of any third party</strong></p>
<ul>
<li><strong>Law and jurisdiction</strong></li>
<li><strong>These general terms and conditions are governed by and construed in accordance with the laws of the Arab Republic of Egypt.</strong></li>
</ul>
<p><strong>Any disputes related to these General Terms and Conditions shall be subject to the jurisdiction of the Cairo courts</strong></p>
<ul>
<li><strong>You abide, acknowledge and agree as a member to all these terms and conditions in all the terms of this agreement in order to be a member of the 5Himaka store, as you know well that you do not have the right to bind 5Himaka for any material or moral loss that occurs to you because you acknowledge, agree and know well that 5Himaka is just a mediator to facilitate the process The sale between the seller and the buyer as the 5HIMAKA store performs this process free of charge for all members without imposing any fees on the merchant or the buyer in any process that takes place through the 5HIMAKA store, and you as a member perform any process as a merchant or buyer. Or moral, and with your knowledge of all these matters, you have committed to them and become a member of the 5HIMAKA store, so you agree to these terms and conditions in their entirety without deleting or not understanding one word of this agreement completely</strong></li>
</ul>
<p>&nbsp;</p>
<p>&nbsp;</p>
<ul>
<li><strong><u> A very important note outside this agreement and it is not considered part of it in any way or means possible</u></strong></li>
</ul>
<p><strong><u>&nbsp;</u></strong></p>
<ul>
<li><strong>If you find an item from these terms and you think that this item will cause you to be deprived of a service that we previously announced that you will get it inside the 5HIMAKA store, we assure you that it is impossible to lose any of your rights or to break a promise that we made with you and it does not mean that we give you these services For free, this means that it is possible to deprive you of it easily. Of course, none of these things happen. As long as you are a member committed to these terms and conditions, you are not deprived of anything from the services of 5Himaka, but your rights that you deserve will be those from the point of view and estimates of 5Himaka and you as a member You have no right to object and we are here to serve our members and provide them with the services that suit them</strong></li>
</ul>
<p><strong><u>&nbsp;</u></strong></p>
<ul>
<li><strong>We wish all 5Himaka store members a distinctive shopping experience and to be satisfied with the services provided to them. Each inquiry will have its own contact via email, so you are able to contact us at any time you want and we will be at your good thought in solving your problem as soon as possible or The answer to your inquiries is faster than possible, but we recommend that you activate a new private email 5Himaka so that all our messages are clear in front of you at any time</strong></li>
</ul>
<p><strong>&nbsp;</strong></p>
<p><strong>&nbsp;</strong></p>
<p><strong>&nbsp;</strong></p>
<p>&nbsp;</p>
            </div>
        </div>""";

class _TermsAndConditionsScreenState extends State<TermsAndConditionsScreen> {


  @override
    Widget build(BuildContext context) {
      return LayoutBuilder(
          builder: (BuildContext context, BoxConstraints viewportConstraints) {
            return Stack(
              children: [
                Image.asset(
                  "images/blur_bg.jpg",
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                ),
                new Scaffold(
                  backgroundColor: Colors.transparent,
                  appBar: _buildBar(context),
                  body: SafeArea(
                    child: SingleChildScrollView(
                      child: ConstrainedBox(
                        constraints: BoxConstraints(
                          minHeight: viewportConstraints.maxHeight,
                        ),
                        child: Html(
                          data: locator<AppLanguage>().appLocal.languageCode == 'en'
                              ? eHtmlData
                              : htmlData,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            );
          });
    }

  Widget _buildBar(BuildContext context) {
    return new AppBar(
      title: new Text( AppLocalizations.of(context)
          .translate('terms_and_conditions')),
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0.0,
    );
  }
}
