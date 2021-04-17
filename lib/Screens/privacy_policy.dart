import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:himaka/services/locator.dart';
import 'package:himaka/utils/AppLanguage.dart';
import 'package:himaka/utils/app_localizations.dart';
import 'package:html/dom.dart' as dom;

class PrivacyPolicyScreen extends StatefulWidget {
  @override
  _PrivacyPolicyScreenState createState() => _PrivacyPolicyScreenState();
}

const htmlData = """
        <div class="container">
            <div class="custom-page-content clearfix">
<p><strong>توضح سياسة الخصوصية هذه الأساس الذي سنقوم بموجبه بالتعامل مع أي بيانات شخصية، بما في ذلك على سبيل المثال لا الحصر، بيانات الدفع، وغيرها من البيانات الأخرى التي نجمعها منك أو من مصادر آخرى أو تلك التي تقدمها إلينا</strong></p>
<p><strong>إننا ندرك أهمية هذه البيانات، ونحن نلتزم بحماية خصوصيتك واحترامها. يُرجى قراءة ما يلي بعناية لفهم ممارساتنا فيما يتعلق بالبيانات. باستخدامك لخدماتنا فإنك توافق على التعامل مع البيانات بما يتفق مع سياسة الخصوصية هذه</strong></p>
<p><strong>&nbsp;</strong></p>
<ul>
<li><strong> </strong><strong> &nbsp;&nbsp;البيانات التى يتم تجميعها </strong></li>
</ul>
<p><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; نقوم بجمع بياناتك الشخصية من أجل توفير </strong><strong> </strong><strong>الخدمات وتحسينها باستمرار</strong><strong><br /></strong><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ويجوز لنا جمع واستخدام وتخزين ونقل البيانات الشخصية عنك</strong></p>
<ul>
<li><strong>&nbsp;&nbsp; المعلومات التي قمت بتقديمها لنا نتلقى ونخزن المعلومات التي تقدمها لنا بما في ذلك بيانات هويتك وبيانات الاتصال وعنوان توصيل الطلبات والبيانات المالية </strong></li>
<li><strong>&nbsp;&nbsp; معلومات حول استخدامك لموقعنا و تطبيقاتنا</strong><strong>&nbsp;</strong><strong>نقوم تلقائيًا بجمع وتخزين أنواع معينة من المعلومات المتعلقة باستخدامك </strong><strong>متجر</strong><strong>&nbsp; </strong><strong>5HIMAKA</strong><strong> </strong><strong>&nbsp;بما في ذلك معلومات حول عمليات البحث ومشاهدات والتحميلات والمشتريات </strong></li>
<li><strong>&nbsp;&nbsp; معلومات من أطراف آخرى ومصادر متاحة بشكل عام قد نتلقى معلومات عنك من طرف آخر بما في ذلك شركات النقل لدينا، شركات خدمات الدفع، التجار/ العلامات التجارية، وشركات الخدمات الإعلانية</strong><strong>.</strong></li>
<li><strong>&nbsp;&nbsp; كجزء من التسجيل على الموقع أو استخدامه سوف يطلب منك تزويدنا بمعلومات شخصية محددة مثل اسمك وعنوان الشحن وبريدك الالكتروني و/أو رقم هاتفك ومعلومات اخرى مشابهة وبعض المعلومات الاضافية عنك مثل تاريخ ميلادك أو اي معلومات محددة لهويتك. إضافة إلى ذلك وبهدف توثيقنا لهويتك قد نحتاج منك أن تقدم لنا اثبات ساري المفعول يثبت هويتك مثل نسخة عن جواز سفرك او تصريح الاقامة او الهوية الشخصية &nbsp;أو رخصة القيادة</strong></li>
<li><strong>&nbsp;&nbsp; قد نحتاج ايضا الى جمع معلومات مالية محددة منك، مثل بطاقتك الائتمانية أو تفاصيل حسابك المصرفي او محفظة الكترونية</strong></li>
<li><strong>&nbsp;&nbsp; يجب عليك ادخال هذه المعلومات المالية في قسم "حسابي" على الموقع. وسوف نستخدم هذه المعلومات لغايات اصدار الفواتير واستكمال طلباتك. عند تسجيلك في الموقع، ينبغى عليك عدم نشر اي معلومات شخصية بما في ذلك اي معلومات مالية على اي جزء من الموقع باستثناء جزء" إدارة الحساب" وهذا من شأنه حمايتك من امكانية تعرضك للاحتيال او سرقة معلومات هويتك. كما ان نشرك لأي من معلوماتك الشخصية على اي جزء من الموقع باستثناء"حسابي" قد يؤدي الى ايقاف استخدامك للموقع .</strong></li>
<li><strong>&nbsp;&nbsp; سوف يتم جمع معلومات عن عملياتك وأنشطتك على الموقع سواء كانت عملية شراء أو بيع سلع.</strong></li>
<li><strong>&nbsp;&nbsp; الرجاء ملاحظة اننا قد نستخدم عنوان برتوكول الانترنت خاصتك او (</strong><strong>IP</strong><strong>) وهو(رقم فريد يتم تعيينه لخادم الكمبيوتر أو مزود خدمة الإنترنت الخاص بك أو</strong><strong>ISP</strong><strong> لتحليل انشطتك وتحسين إدارة الموقع.</strong></li>
<li><strong>&nbsp;&nbsp; قد نجمع معلومات اضافية حول جهاز الكمبيوتر الخاص بك على سبيل المثال نوع المتصفح ومعلومات التصفح على سبيل المثال الصفحات التي تزورها على الموقع بالإضافة إلى عدد المرات التي تستخدم بها الموقع</strong></li>
</ul>
<p><strong>&nbsp;</strong></p>
<ul>
<li><strong> </strong><strong>&nbsp;&nbsp; كيف نستخدم ملفات تعريف الارتباط </strong></li>
</ul>
<p><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ملف تعريف الارتباط هو ملف صغير من الحروف والأرقام التي نضعها على </strong></p>
<p><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; جهاز الكمبيوتر الخاص بك </strong></p>
<p><strong>مثل العديد من مواقع الانترنت فان موقعنا يستخدم ملفات تعريف الإرتباط وهي ملفات حاسوب صغيرة يتم تثبيتها على الجزء الصلب من حاسوبك، فحين تذهب لزيارة صفحات انترنت معينة على الموقع, يتعرف السجل على المتصفح الخاص بك من خلال رقم فريد وعشوائي</strong><strong>.</strong></p>
<p><strong>كما ان ملفات تعريف الإرتباط التي نستخدمها لا تكشف اي من معلوماتك الشخصية.ان ملفات تعريف الإرتباط هذه تساعدنا في تحسين ادائك على الموقع وتعيننا على تفهم اي اجزاء من الموقع هي الاكثر استخداما,</strong></p>
<p><strong>انت لك مطلق الحرية في الغاء ملفات تعريف الإرتباط اذا أتيح لك ذلك من المتصفح ولا يؤثر ذلك على استخدامك للموقع</strong></p>
<p><strong><br /></strong><strong>تسمح لنا ملفات تعريف الارتباط أن تكون مستخدم متميز عن المستخدمين الآخرين لموقعنا الإلكتروني وتطبيقاتنا، مما يساعدنا على تزويدك بتجربة تصفح محسنة</strong><strong>. </strong><strong>على سبيل المثال، نستخدم ملفات تعريف الارتباط للأغراض التالية</strong><strong>:</strong></p>
<ul>
<li><strong>&nbsp;&nbsp; التعرف على عدد الزوار وحساب عددهم ومعرفة كيفية تنقل الزوار فى الموقع عند الاستخدام مما يساعدنا على تحسين الموقع، فعلى سبيل المثال، التأكد من أن المستخدمين يمكنهم العثور على المنتجات التى يبحثون عنها</strong></li>
<li><strong>&nbsp;&nbsp; تحديد تفضيلاتك واشتراكاتك مثل إعدادات اللغة والمنتجات المحفوظة والمنتجات التى تم وضعها فى عربة الشراء وعضوية </strong><strong>متجر</strong><strong>&nbsp; </strong><strong>5HIMAKA</strong></li>
<li><strong>&nbsp;&nbsp; إرسال رسائل تجارية وإعلانية تناسب اهتماماتك</strong><strong>.</strong></li>
</ul>
<p><strong><br /></strong><strong>يجوز للطرف الآخر تعيين ملفات تعريف الارتباط عند استخدام </strong><strong>متجر</strong><strong>&nbsp; </strong><strong>5HIMAKA</strong><strong> </strong><strong>&nbsp;وتشمل محركات البحث ومقدمي خدمات القياس والتحليل وشبكات التواصل الاجتماعي وشركات الإعلانات</strong></p>
<ul>
<li><strong> </strong><strong>&nbsp;&nbsp; كيف يتم استخدام بياناتك</strong></li>
</ul>
<p><strong>نستخدم بياناتك الشخصية لتشغيل وتوفير وتطوير وتحسين المنتجات والخدمات التي نقدمها، بما في ذلك ما يلي</strong><strong>: </strong></p>
<ul>
<li><strong>&nbsp;&nbsp; تسجيلك كعميل جديد</strong><strong>.</strong></li>
<li><strong>&nbsp;&nbsp; تجهيز وتسليم طلباتك</strong><strong>.</strong></li>
<li><strong>&nbsp;&nbsp; إدارة تعاملك مع </strong><strong>متجر</strong><strong>&nbsp; </strong><strong>5HIMAKA</strong><strong> </strong><strong>&nbsp;</strong></li>
<li><strong>&nbsp;&nbsp; تمكينك من المشاركة في العروض والمسابقات والاستطلاعات</strong><strong>.</strong></li>
<li><strong>&nbsp;&nbsp; تحسين موقعنا الإلكتروني وتطبيقاتنا ومنتجاتنا وخدماتنا</strong><strong>.</strong></li>
<li><strong>&nbsp;&nbsp; القيام بتوصيات/إعلانات عن المنتجات أو الخدمات التي قد تهمك</strong><strong>.</strong></li>
<li><strong>&nbsp;&nbsp; الامتثال لالتزاماتنا القانونية، بما في ذلك التحقق من هويتك عند الضرورة</strong><strong>.</strong></li>
<li><strong>&nbsp;&nbsp; كشف عن أى عملية احتيال</strong></li>
<li><strong>&nbsp;&nbsp; تجهيزك كاعضو في ماهو اتي من الاضافات المتجددة </strong></li>
<li><strong>&nbsp;&nbsp; حتي نتمكن من الحفاظ علي اموالك ومستحقاتك والعمليات التي تتم عن طريق عملائك </strong></li>
</ul>
<ul>
<li><strong> </strong><strong>&nbsp;&nbsp; روابط مواقع الطرف الثالث</strong></li>
</ul>
<p><strong>قد يحتوي الموقع على روابط من مواقع الكترونية اخرى، الرجاء العلم باننا غير مسؤولين عن مستوى الخصوصية المتبعة في هذه المواقع الاخرى.نحن نشجعك حين تنتقل من موقعنا الى أي موقع أخر بان تقوم بقراءة بيانات (سياسة الخصوصية) الخاصة بهم إذا كان في نيتك اعطائهم معلوماتك الشخصية&nbsp; ان سياسة الخصوصية عندنا تطبق فقط على معلوماتك الشخصية التي جمعناها على موقعنا</strong><strong>.</strong></p>
<p><strong>&nbsp;</strong></p>
<ul>
<li><strong> </strong><strong></strong><strong>&nbsp;&nbsp; الرسائل الالكترونية المضللة او الخادعة</strong></li>
</ul>
<p><strong>نحن لا نتساهل مع الرسائل الإلكترونية غير المرغوب بها، بحال رغبت بالتبليغ عن مثل هذه الرسائل غير المرغوب بها أو رسائل الإحتيال الإلكتروني، يرجى ارسال رسالة الكترونية الى</strong><strong> </strong><strong>hack@5himaka.com </strong></p>
<p><strong>لا يجوز لك استخدام أدوات الاتصال الخاصة بنا لإرسال رسائل غير مرغوب فيها أو إرسال محتوى ينتهك اتفاقية المستخدم الخاصة بنا. فنحن نفحص الرسائل اوتوماتيكيا وقد نلجأ الى الفلترة اليدوية لها لمعرفة ما اذا هناك رسائل غير مرغوب بها او فيروسات او هجمات ضارة أو اي نشاطات مشبوهة اخرى او غير قانونية</strong></p>
<ul>
<li><strong> </strong><strong>&nbsp;&nbsp; كيف يتم مشاركة بياناتك</strong></li>
</ul>
<p><strong>قد نحتاج إلى مشاركة بياناتك الشخصية مع طرف آخر للأغراض التالية</strong><strong>:</strong></p>
<ul>
<li><strong>&nbsp;&nbsp; بيع المنتجات والخدمات من أجل معرفة منتجاتك وخدماتك التى قمت بشرائها من </strong><strong>متجر</strong><strong>&nbsp; </strong><strong>5HIMAKA</strong><strong> قد يُطلب منا تقديم بياناتك الشخصية إلى هذه أطراف آخرى</strong><strong>. </strong></li>
<li><strong>&nbsp;&nbsp; العمل مع مقدمى الخدمات من أطراف آخرى نتشارك مع أطراف آخرى لأداء وظائف معينة نيابة عنا. مثل إتمام الطلبات للمنتجات أو الخدمات، وتسليم الطلبات، وتحليل البيانات، وتقديم المساعدات التسويقية، إدارة المدفوعات، ونقل المحتوى، وتقييم وإدارة مخاطر بطاقات الائتمان، وتوفير خدمة العملاء</strong><strong>.</strong></li>
<li><strong>&nbsp;&nbsp; تحويل الأعمال التجارية بينما نواصل تطوير تجارتنا، قد نبيع أو نشتري تجارات أو خدمات أخرى، لذلك، قد يتم نقل معلومات العميل مع الأصول التجارية الأخرى في مثل هذه المعاملات</strong><strong>. </strong></li>
<li><strong>&nbsp;&nbsp; الكشف عن الاحتيال وإساءة الاستخدام: نقوم بالكشف عن معلومات الحساب والبيانات الشخصية الأخرى لشركات ومؤسسات أخرى للحماية من الاحتيال والحد من مخاطر بطاقات الائتمان، والامتثال إلى القانون</strong><strong>. </strong></li>
</ul>
<p><strong><br /></strong><strong>عندما يتم مشاركة بياناتك الشخصية مع أطراف أخرى، تتم الخطوات التالية</strong><strong>: </strong></p>
<ul>
<li><strong>&nbsp;&nbsp; يطلب من الطرف الثالث الموافقة على استخدام بياناتك وفقًا لشروط الخصوصية وإشعار ملفات تعريف الارتباط وسياسة الخصوصية الخاصة بنا ووفقًا للقانون</strong></li>
<li><strong>السماح لهم فقط بمعالجة بياناتك الشخصية لأغراض محددة ووفقًا لتعليماتنا</strong><strong>. </strong><strong>&nbsp;&nbsp; ولا يسمح لمقدمى الخدمات باستخدام بياناتك الشخصية لأغراضهم الخاصة</strong><strong>. </strong></li>
<li><strong>&nbsp;&nbsp; إلى من يمكننا الإفصاح عن البيانات؟</strong></li>
<li><strong>تُعد البيانات الخاصة بعملائنا جزءاً مهماً جداً من عملنا. وبالتالي فإننا لا نشارك البيانات إلا حسبما هو مذكور أدناه فقط ومع الشركات التي تتبع الممارسات التي لها مزايا حماية، وبحد ادنى، مماثلة لمزايا تلك الممارسات الواردة في سياسة الخصوصية: </strong></li>
<li><strong>اطراف آخرين. لتوفير خدماتنا، قد نتعاون مع شركات اخرى تابعة لنا او مزودي خدمة غير تابعين لنا على سبيل المثال الشركات اللوجستية المُستخدمة لتوصيل المنتجات إليك، شركات التسويق، معالجة الدفعات لإجراء معاملات عبر الإنترنت وغير ذلك من الممكن ان تقوم هذه الشركات الأخرى في سبيل تنفيذ معاملاتك ، بتخزين البيانات في محفظة رقمية حتى يكون استخدامك لخدماتنا اكثر فعالية. </strong></li>
<li><strong>أنت تدرك مدى أهمية وصول هذه الشركات إلى البيانات ذات الصلة لأداء مهامها. ونحرص على ألا تستخدم هذه الشركات البيانات في أغراض أخرى. وقد نتلقى أيضاً بيانات من هذه الشركات على سبيل المثال بيانات التسليم والعناوين المحدثة بغرض استخدامها على سبيل المثال لتصحيح سجلاتنا وتوصيل بضائع تخص اية عملية شراء تقوم بها من خلال استخدامك للموقع، فإنك توافق على نقل، تخزين، استخدام، والافصاح عن البيانات بين الشركات التابعة لنا ومزودي خدمة غير تابعين لنا اينما كان موقعها الجغرافي. على ان تلتزم هذه الشركات تعاقديا بإحترام خصوصية البيانات. </strong></li>
<li><strong>&nbsp;&nbsp; التسويق والعروض الترويجية. قد نستخدم أيضاً البيانات لتزويدك بمعلومات عن السلع والخدمات التي قد تكون مهتماً بها فضلاً عن تعزيز تجربتك في تصفح واستعمال الموقع، ورسائل الخدمة، والمزايا الجديدة والتحسينات والعروض الخاصة والفعاليات ذات الأهمية. يُمكننا التواصل معك عبر قنوات مختلفة، بما في ذلك على سبيل المثال لا الحصر رسائل البريد الإلكتروني وإشعارات الويب والمنشورات والهاتف ورسائل التطبيق وبطاقات نقل مقالات الأخبار. </strong></li>
<li><strong>&nbsp;&nbsp; قد نسمح لطرف ثالث باستخدام البيانات، على سبيل المثال: ربما نقدم البيانات إلى المعلنين لمساعدتهم في الوصول إلى الجمهور المستهدف لتمكيننا من الامتثال لالتزاماتنا أمام المعلنين أي عن طريق عرض إعلاناتهم على الجمهور المستهدف </strong></li>
<li><strong>&nbsp;&nbsp; وبالإضافة إلى ذلك، للمشاركة في بعض المنافسات والعروض الترويجية الخاصة بنا، قد يُطلب منك تقديم بيانات إضافية. على سبيل المثال: إذا فزت في إحدى المنافسات فقد يُطلب منك تقديم المزيد من البيانات الشخصية لتأكيد أهليتك وتقديم الجائزة إليك. وتُجرى عملية جمع هذه البيانات بواسطتنا أو بواسطة الرعاة المشاركين أو البائعين للعروض الترويجية. يُرجى ملاحظة أنه ينبغي لك مراجعة سياسات الخصوصية المتعلقة بهذا الطرف الثالث لمعرفة كيفية استخدامه لأي بيانات يعمل على جمعها. </strong></li>
<li><strong>&nbsp;&nbsp; تحويلات الأعمال: في حالة الاستحواذ على شركتنا أو جميع أصولنا فعلياً، ستكون بيانات العميل أحد الأصول التي يتم تحويلها للمالك الجديد. </strong></li>
<li><strong>&nbsp;&nbsp; حماية موقعنا والمواقع الأخرى: نفصح عن حساب العميل وبياناته الشخصية الأخرى عندما نرى أن هذا الإفصاح مناسب للامتثال للقوانين والتحقيقات التي تتم لإنفاذ القوانين ولحماية الحقوق أو الممتلكات أو سلامة مستخدمينا أو الآخرين. ويتضمن هذا تبادل البيانات مع الشركات والمؤسسات الأخرى لعدة أسباب، منها الحماية من جرائم الاحتيال والحد من مخاطر الائتمان. </strong></li>
<li><strong>&nbsp;&nbsp; ويُرجى ملاحظة أن موقعنا قد يحتوي -من حين لآخر- على روابط من وإلى مواقع خاصة بشبكات الشركات التي نتعامل معها والمعلنين والشركات التابعة لنا، وفي حالة الدخول في رابطاً من أحد هذه الروابط يُرجى العلم بأن هذه المواقع تمتلك سياسات خصوصية الخاصة بها، وأننا لن نتحمل أي مسؤولية أو مطالبة عن هذه السياسات. كما يُرجى التحقق من سياسات تلك المواقع قبل تقديم أي بيانات شخصية أو أي معلومات أخرى إليها</strong></li>
</ul>
<ul>
<li><strong> </strong><strong>&nbsp;&nbsp; التحويل الدولى </strong></li>
<li><strong> </strong><strong>&nbsp;&nbsp; عند تزودنا بمعلوماتك الشخصية تكون قد وافقت على نقل هذه المعلومات خارج دولة مصر </strong></li>
</ul>
<p><strong>يجوز لنا نقل بياناتك الشخصية إلى مواقع في بلد آخرى، وفي حالة النقل الدولي لبياناتك الشخصية، سوف نستمر في احترام حقوقك القانونية وفقًا لشروط إشعار الخصوصية وملفات تعريف الارتباط والقوانين المعمول بها في بلدك</strong><strong>. </strong></p>
<ul>
<li><strong> </strong><strong>&nbsp;&nbsp; أمان البيانات </strong></li>
</ul>
<p><strong>&nbsp;&nbsp; نحن نتخذ كافة الاحتياطات للمحافظة على معلوماتك وذلك بعدم الوصول اليها او استخدامها او الافصاح عنها</strong><strong> لقد </strong><strong>قمنا بوضع تدابير وإجراءات أمنية مناسبة لمنع فقد بياناتك الشخصية أو استخدامها أو الوصول إليها بطريقة غير مسموح بها عن طريق الخطأ أو تغييرها أو الكشف عنها</strong><strong>.</strong></p>
<ul>
<li><strong>&nbsp;&nbsp; كافة المعلومات الشخصية مشفرة، وعلى اي حال فان الانترنت وسيلة غير امنة ونحن لا نضمن سرية معلوماتك الشخصية 100%</strong></li>
<li><strong>&nbsp;&nbsp; يجب ان يتم ادخال اسم المستخدام وكلمة السر في كل مرة عند الدخول الى حسابك أو القيام باية معاملات في الموقع</strong><strong>.</strong></li>
<li><strong>&nbsp;&nbsp; يجب ان يتم اختيار كلمة السر بحذر باستخدام ارقام وحروف واشكال مميزة</strong><strong>.</strong></li>
<li><strong>&nbsp;&nbsp; لا تشارك اسم المستخدم وكلمة السر مع اي احد</strong><strong>.</strong></li>
</ul>
<p><strong>&nbsp;&nbsp; في حال كان لديك شك حول اختراق اسم المستخدم وكلمة السر، يرجى على الفور الاتصال بفريق خدمة العملاء والعمل على تغيير كلمة السر وذلك بالدخول الى قسم حسابي على الموقع</strong><strong><br /></strong><strong>بالإضافة إلى ذلك، نقوم بتحديد إمكانية الوصول إلى بياناتك الشخصية عن طريق الموظفين والوكلاء والمقاولين والأطراف الأخرى قبل معرفة أغراضهم التجارية، وسوف يقومون بمعالجة بياناتك الشخصية فقط بناءً على تعليماتنا وبسرية تامة</strong><strong>.<br /></strong><strong>لدى </strong><strong>متجر</strong><strong>&nbsp; </strong><strong>5HIMAKA</strong><strong> إجراءات للتعامل مع أي انتهاك مشتبه به للبيانات الشخصية وسوف تقوم بإخطار الأفراد المتضررين والجهات العاملة، حيث أننا ملزمين قانونيًا بذلك</strong><strong>. </strong></p>
<p><strong>&nbsp;</strong></p>
<ul>
<li><strong> </strong><strong>إنك كاعضو تقبل بسياسة الخصوصية هذه عندما تقوم بالاشتراك أو الدخول أو الاستخدام لمنتجاتنا أو خدماتنا أو محتوانا أو سماتنا أو تقنياتنا أو وظائفنا المطروحة على </strong><strong>متجر</strong><strong> </strong><strong>5HIMAKA</strong></li>
</ul>
<p><strong>&nbsp;</strong></p>
<ul>
<li><strong> </strong><strong>&nbsp;&nbsp; يجب أن تكون البيانات الشخصية التي نحتفظ بها عنك دقيقة وحديثة، لذلك برجاء إعلامنا فى حالة تغير بياناتك الشخصية</strong><strong>. <br /></strong><strong>في ظل وجود ظروف محددة، لديك حقوق بموجب قوانين حماية البيانات فيما يتعلق ببياناتك الشخصية، بما في ذلك الحق في الوصول إلى بياناتك الشخصية أو تصحيحها أو مسحها، والحق في الاعتراض أو تقييد معالجة بياناتك الشخصية</strong><strong>. </strong></li>
</ul>
<p><strong>&nbsp;</strong></p>
<p><strong>&nbsp;</strong></p>
            </div>
        </div>
""";
const eHtmlData = """        <div class="container">
            <div class="custom-page-content clearfix">
<h3><strong>This privacy policy explains the basis on which we will deal with any personal data, including but not limited to, payment data, and other data that we collect from you or from other sources or that you provide to us.</strong></h3>
<h3><strong>We understand the importance of this data, and we are committed to protecting and respecting your privacy. Please read the following carefully to understand our data practices. By using our services, you agree to handle the data in accordance with this privacy policy</strong></h3>
<h3>&nbsp;</h3>
<ul>
<li>
<h3><strong>The data that is collected</strong></h3>
</li>
</ul>
<h3><strong>We collect your personal data in order to continuously provide and improve services</strong></h3>
<h3><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; We may collect, use, store and transfer personal data about you</strong></h3>
<h3><strong>Information that you provide to us We receive and store the information you provide to us, including your identity data, contact information, order delivery address and financial data.</strong></h3>
<ul>
<li>
<h3><strong>Information about your use of our website and applications. We automatically collect and store certain types of information related to your use of the 5HIMAKA store, including information about searches, views, downloads and purchases.</strong></h3>
</li>
</ul>
<h3><strong>Information from third parties and publicly available sources We may receive information about you from another party including our carriers, payment service companies, merchants / brands, and advertising service companies.</strong></h3>
<ul>
<li>
<h3><strong>As part of registering on the site or using it, you will be asked to provide us with specific personal information such as your name, shipping address, e-mail and / or phone number, and other similar information and some additional information about you, such as your date of birth or any information specific to your identity. In addition to that, and in order to confirm your identity, we may need you to provide us with valid proof of your identity, such as a copy of your passport, residence permit, personal identity or driver's license.</strong></h3>
</li>
<li>
<h3><strong>We may also need to collect specific financial information from you, such as your credit card, bank account details, or an electronic wallet</strong></h3>
</li>
<li>
<h3><strong>You must enter this financial information in the "My Account" section on the site. We will use this information for the purposes of billing and completing your orders. When you register on the site, you should not publish any personal information, including any financial information, on any part of the site except for the "account management" part, and this will protect you from the possibility of your exposure to fraud or theft of your identity information. Also, if you share any of your personal information on any part of the site except for "my account", it may lead to the suspension of your use of the site.</strong></h3>
</li>
<li>
<h3><strong>Information about your processes and activities will be collected on the site, whether it is the process of buying or selling goods.</strong></h3>
</li>
<li>
<h3><strong>Please note that we may use your Internet Protocol (IP) address (which is a unique number assigned to your computer server, your Internet service provider or ISP) to analyze your activities and improve site management.</strong></h3>
</li>
</ul>
<h3><strong>We may collect additional information about your computer, for example the type of browser and browsing information, for example the pages you visit on the site in addition to the number of times you use the site.</strong></h3>
<h3>&nbsp;</h3>
<h3>&nbsp;</h3>
<h3><strong><u>How we use cookies</u></strong></h3>
<h3>&nbsp;</h3>
<h3><strong>&nbsp;&nbsp;&nbsp; A cookie is a small file of letters and numbers that we put on your computer.</strong></h3>
<h3><strong>&nbsp; Like many websites, our site uses cookies, which are small computer files that are installed on the hard part of your computer. When you go to visit certain web pages on the site, the record identifies your browser through a unique and random number.</strong></h3>
<h3><strong>Also, the cookies that we use do not reveal any of your personal information. These cookies help us improve your performance on the site and help us understand which parts of the site are most used.</strong></h3>
<h3><strong>You are free to disable cookies if the browser allows you to do so and this does not affect your use of the website</strong></h3>
<h3><strong>Cookies allow us to be a unique user from other users of our website and applications, which helps us provide you with an enhanced browsing experience. For example, we use cookies for the following purposes:</strong></h3>
<ul>
<li>
<h3><strong>Knowing the number of visitors and calculating their number and knowing how visitors move on the site upon use, which helps us improve the site, for example, making sure that users can find the products they are looking for.</strong></h3>
</li>
<li>
<h3><strong>Define your preferences and subscriptions such as language settings, saved products, products in the cart, and 5Himaka Store membership</strong></h3>
</li>
<li>
<h3><strong>Send commercial and advertising messages that suit your interests.</strong></h3>
</li>
</ul>
<h3>&nbsp;</h3>
<h3><strong>The other party may set cookies when using the 5HIMAKA store and include search engines, measurement and analysis service providers, social networks and advertising companies.</strong></h3>
<h3><strong>How your data is used</strong></h3>
<h3><strong>We use your personal data to operate, provide, develop and improve the products and services that we offer, including the following:</strong></h3>
<ul>
<li>
<h3><strong>Register as a new customer.</strong></h3>
</li>
<li>
<h3><strong>Processing and delivery of your requests.</strong></h3>
</li>
<li>
<h3><strong>Manage your dealings with the 5HIMAKA store</strong></h3>
</li>
</ul>
<h3><strong>Enabling you to participate in offers, contests and surveys.</strong></h3>
<h3><strong>Improving our website, applications, products and services.</strong></h3>
<ul>
<li>
<h3><strong>Make recommendations / advertisements for products or services that may interest you.</strong></h3>
</li>
<li>
<h3><strong>Comply with our legal obligations, including verifying your identity when necessary.</strong></h3>
</li>
<li>
<h3><strong>Detect any fraud</strong></h3>
</li>
<li>
<h3><strong>Equip you as a member of the following renewable additions</strong></h3>
</li>
<li>
<h3><strong><u> Third-party website links</u></strong></h3>
</li>
</ul>
<h3><strong>The website may contain links from other websites, please be aware that we are not responsible for the level of privacy followed in these other websites. Personal Our privacy policy applies only to your personal information that we collect on our website.</strong></h3>
<h3><strong>Deceptive electronic messages</strong></h3>
<h3><strong>We do not tolerate unwanted emails, if you wish to report such spam or fraudulent e-mails, please send an email to hack@5himaka.com</strong></h3>
<h3><strong>You may not use our communication tools to send spam or content that violates our User Agreement. We scan messages automatically and we may resort to manual filtering to find out if there are unwanted messages, viruses, malicious attacks, or any other suspicious or illegal activities.</strong></h3>
<h3><strong>How is your data shared?</strong></h3>
<h3><strong>We may need to share your personal data with another party for the following purposes:</strong></h3>
<ul>
<li>
<h3><strong>Selling products and services in order to know your products and services that you purchased from the 5Himaka store. We may be asked to provide your personal data to these other parties.</strong></h3>
</li>
<li>
<h3><strong>Working with third-party service providers We partner with other parties to perform certain functions on our behalf. Such as completing orders for products or services, delivering orders, analyzing data, providing marketing assistance, managing payments, transmitting content, evaluating and managing credit card risks, and providing customer service.</strong></h3>
</li>
<li>
<h3><strong>Business transformation as we continue to develop our business, we may sell or buy other businesses or services. Therefore, customer information may be transferred with other business assets in such transactions.</strong></h3>
</li>
</ul>
<h3><strong>When your personal data is shared with other parties, the following steps are taken:</strong></h3>
<h3><strong>The third party is required to consent to the use of your data in accordance with the terms of privacy, cookie notice, our privacy policy, and in accordance with the law</strong></h3>
<ul>
<li>
<h3><strong>Only allow them to process your personal data for specific purposes and in accordance with our instructions. The service providers are not permitted to use your personal data for their own purposes.</strong></h3>
</li>
</ul>
<h3><strong><u>To whom can we disclose the data?</u></strong></h3>
<ul>
<li>
<h3><strong>Our customer data is a very important part of our business. Therefore, we do not share data except as mentioned below only and with companies that follow practices that have protection advantages, and at a minimum, similar to the advantages of those practices mentioned in the privacy policy:</strong></h3>
</li>
<li>
<h3><strong>Other parties. To provide our services, we may cooperate with other companies affiliated with us or service providers that are not affiliated with us, for example the logistic companies used to deliver products to you, marketing companies, processing payments to conduct transactions over the Internet, and so on. These other companies may, in order to carry out your transactions, store the data is in a digital wallet so that your use of our services is more effective.</strong></h3>
</li>
</ul>
<h3><strong>You understand how important it is for these companies to have access to relevant data to perform their duties. We are keen that these companies do not use the data for other purposes. We may also receive data from these companies, for example, delivery data and updated addresses for the purpose of using them, for example, to correct our records and deliver goods related to any purchase that you make through your use of the site. You agree to transfer, store, use, and disclose data between our affiliates. And service providers that are not affiliated with us, wherever it is located. Provided that these companies are contractually bound to respect data privacy.</strong></h3>
<ul>
<li>
<h3><strong>Marketing and promotions. We may also use the data to provide you with information about the goods and services that you may be interested in, as well as enhance your experience in browsing and using the site, service messages, new features, improvements, special offers and events of interest. We may communicate with you via various channels, including but not limited to emails, web notifications, posts, phone, application messages, and news article transmission cards.</strong></h3>
</li>
</ul>
<h3><strong>We may allow a third party to use the data, for example: We may provide data to advertisers to help them reach the target audience to enable us to comply with our obligations in front of advertisers, that is, by showing their ads to the target audience</strong></h3>
<ul>
<li>
<h3><strong>In addition, to participate in some of our competitions and promotions, you may be required to provide additional data. For example: If you win a competition, you may be asked to provide more personal data to confirm your eligibility and award you. This data is collected by us or by participating sponsors or sellers of promotional offers. Please note that you should review the privacy policies of this third party to see how it uses any data it collects.</strong></h3>
</li>
<li>
<h3><strong>Business Transfers: In the event that our company or all of our assets are actually acquired, customer data will be one of the assets transferred to the new owner.</strong></h3>
</li>
<li>
<h3><strong>Protecting our site and other sites: We disclose the customer&rsquo;s account and other personal data when we believe that this disclosure is appropriate to comply with laws and law enforcement investigations and to protect the rights, property, or safety of our users or others. This includes exchanging data with other companies and institutions for several reasons, including fraud protection and credit risk reduction.</strong></h3>
</li>
<li>
<h3><strong>Please note that our site may contain - from time to time - links to and from the websites of the networks of companies that we deal with, advertisers and our affiliates, and if you enter a link from one of these links please be aware that these sites have their own privacy policies, and that we will not We assume no responsibility or claim for these policies. Also, please check the policies of those websites before submitting any personal data or other information to them</strong></h3>
</li>
<li>
<h3><strong>International transfer</strong></h3>
</li>
<li>
<h3><strong>When you provide us with your personal information, you agree to transfer this information outside the state of Egypt</strong></h3>
</li>
</ul>
<h3><strong>We may transfer your personal data to sites in another country, and in the case of the international transfer of your personal data, we will continue to respect your legal rights in accordance with the terms of the privacy and cookies notice and the laws in force in your country.</strong></h3>
<ul>
<li>
<h3><strong>Data security</strong></h3>
</li>
</ul>
<h3><strong>We take all precautions to protect your information by not accessing it, using it or disclosing it. We have put appropriate security measures and procedures to prevent your personal data from being lost, used or accessed in an unauthorized manner by mistake, alteration or disclosure.</strong></h3>
<h3><strong>All personal information is encrypted, and in any case, the Internet is an insecure method, and we do not guarantee the confidentiality of your personal information 100%.</strong></h3>
<ul>
<li>
<h3><strong>The user name and password must be entered every time when entering your account or performing any transactions on the site.</strong></h3>
</li>
<li>
<h3><strong>The password should be chosen with caution, using distinct numbers, letters and shapes.</strong></h3>
</li>
</ul>
<h3><strong>Do not share your username and password with anyone.</strong></h3>
<h3><strong>If you have any doubts about hacking the username and password, please immediately contact the customer service team and work to change the password by entering the My Account section on the site</strong></h3>
<h3><strong>In addition, we limit access to your personal data by employees, agents, contractors and other parties before knowing their commercial purposes, and they will only process your personal data based on our instructions and with complete confidentiality.</strong></h3>
<h3><strong>5HIMAKA store has procedures to deal with any suspected violation of personal data and will notify affected individuals and operators, as we are legally obligated to do so.</strong></h3>
<ul>
<li>
<h3><strong>You, as a member, accept this privacy policy when you subscribe, enter or use our products, services, content, features, technologies, or functions offered on the 5HIMAKA store.</strong></h3>
</li>
</ul>
<h3>&nbsp;</h3>
<ul>
<li>
<h3><strong>The personal data that we keep about you must be accurate and up-to-date, so please inform us in case your personal data changes.</strong></h3>
</li>
</ul>
<h3><strong>Under specific circumstances, you have rights under data protection laws in relation to your personal data, including the right to access, correct or delete your personal data, and the right to object or restrict the processing of your personal data.</strong></h3>
<h3>&nbsp;</h3>
<h3>&nbsp;</h3>
            </div>
        </div>
 """;

class _PrivacyPolicyScreenState extends State<PrivacyPolicyScreen> {
  final _scaffoldKey = new GlobalKey<ScaffoldState>();

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
            key: _scaffoldKey,
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
                    // customRender: {
                    //   "li": (RenderContext context, Widget child, attributes,
                    //       dom.Element element) {
                    //     return this.customListItem(element);
                    //   },
                    // },
                    // style: {
                    //   'html': Style(
                    //       direction: TextDirection.rtl,
                    //       textAlign: TextAlign.right),
                    // },
                  ),
                ),
              ),
            ),
          ),
        ],
      );
    });
  }

  Wrap customListItem(dom.Element node) {
    return Wrap(
      spacing: 4,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              child: Text(node.text,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.right),
            ),
            Padding(
              padding: EdgeInsets.only(right: 10, left: 10, top: 4),
              child: CircleAvatar(
                radius: 4,
                backgroundColor: Colors.black54,
              ),
            ),
          ],
        )
      ],
    );
  }

  Widget _buildBar(BuildContext context) {
    return new AppBar(
      title: new Text( AppLocalizations.of(context)
          .translate('privacy_policy')),
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0.0,
    );
  }
}
