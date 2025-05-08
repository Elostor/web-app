import '/resources/pages/landing_page.dart';
import '/resources/pages/help_page.dart';
import '/resources/pages/failed_transaction_page.dart';
import '/resources/pages/successful_transaction_page.dart';
import '/resources/pages/checkout_page.dart';
import '/resources/pages/production_page.dart';
import '/resources/pages/my_cart_page.dart';
import '/resources/pages/my_models_page.dart';
import '/resources/pages/upload_page.dart';
import '/resources/pages/about_us_page.dart';
import '/resources/pages/materials_page.dart';
import '/resources/pages/not_found_page.dart';
import '/resources/pages/home_page.dart';
import 'package:nylo_framework/nylo_framework.dart';

import 'guards/auth_route_guard.dart';

/* App Router
|--------------------------------------------------------------------------
| * [Tip] Create pages faster 🚀
| Run the below in the terminal to create new a page.
| "dart run nylo_framework:main make:page profile_page"
|
| * [Tip] Add authentication 🔑
| Run the below in the terminal to add authentication to your project.
| "dart run scaffold_ui:main auth"
|
| * [Tip] Add In-app Purchases 💳
| Run the below in the terminal to add In-app Purchases to your project.
| "dart run scaffold_ui:main iap"
|
| Learn more https://nylo.dev/docs/6.x/router
|-------------------------------------------------------------------------- */

appRouter() => nyRoutes((router) {
  router.add(LandingPage.path).initialRoute();
  router.add(HomePage.path);
      // Add your routes here ...

      // router.add(NewPage.path, transition: PageTransitionType.fade);

      // Example using grouped routes
  router.group(() => {
    "route_guards": [
      AuthRouteGuard()],
    "prefix": "/auth"
  }, (router) {
    router.add(MyModelsPage.path);
  });
  router.add(NotFoundPage.path).unknownRoute();
  router.add(MaterialsPage.path);
  router.add(AboutUsPage.path);
  router.add(UploadPage.path);
  router.add(MyCartPage.path);
  router.add(ProductionPage.path);
  router.add(CheckoutPage.path);
  router.add(SuccessfulTransactionPage.path);
  router.add(FailedTransactionPage.path);
  router.add(HelpPage.path);
});
