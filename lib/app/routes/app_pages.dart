import 'package:get/get.dart';

import '../modules/add_time_slots/bindings/add_time_slots_binding.dart';
import '../modules/add_time_slots/views/add_time_slots_view.dart';
import '../modules/add_tournament/bindings/add_tournament_binding.dart';
import '../modules/add_tournament/views/add_tournament_view.dart';
import '../modules/billing_information/bindings/billing_information_binding.dart';
import '../modules/billing_information/views/billing_information_view.dart';
import '../modules/change_password/bindings/change_password_binding.dart';
import '../modules/change_password/views/change_password_view.dart';
import '../modules/contact/bindings/contact_binding.dart';
import '../modules/contact/views/contact_view.dart';
import '../modules/edit_profile/bindings/edit_profile_binding.dart';
import '../modules/edit_profile/views/edit_profile_view.dart';
import '../modules/history/bindings/history_binding.dart';
import '../modules/history/views/history_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/messages/bindings/messages_binding.dart';
import '../modules/messages/views/messages_view.dart';
import '../modules/monthly_subscription/bindings/monthly_subscription_binding.dart';
import '../modules/monthly_subscription/views/monthly_subscription_view.dart';
import '../modules/splash_screen/bindings/splash_screen_binding.dart';
import '../modules/splash_screen/views/splash_screen_view.dart';
import '../modules/tournaments/bindings/tournaments_binding.dart';
import '../modules/tournaments/views/tournaments_view.dart';
import '../modules/user_feedback/bindings/user_feedback_binding.dart';
import '../modules/user_feedback/views/user_feedback_view.dart';
import '../modules/view_schedule/bindings/view_schedule_binding.dart';
import '../modules/view_schedule/views/view_schedule_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.LOGIN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH_SCREEN,
      page: () => const SplashScreenView(),
      binding: SplashScreenBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.MESSAGES,
      page: () => const MessagesView(),
      binding: MessagesBinding(),
    ),
    GetPage(
      name: _Paths.HISTORY,
      page: () => const HistoryView(),
      binding: HistoryBinding(),
    ),
    GetPage(
      name: _Paths.TOURNAMENTS,
      page: () => const TournamentsView(),
      binding: TournamentsBinding(),
    ),
    GetPage(
      name: _Paths.CONTACT,
      page: () => const ContactView(),
      binding: ContactBinding(),
    ),
    GetPage(
      name: _Paths.VIEW_SCHEDULE,
      page: () => const ViewScheduleView(),
      binding: ViewScheduleBinding(),
    ),
    GetPage(
      name: _Paths.MONTHLY_SUBSCRIPTION,
      page: () => const MonthlySubscriptionView(),
      binding: MonthlySubscriptionBinding(),
    ),
    GetPage(
      name: _Paths.EDIT_PROFILE,
      page: () => const EditProfileView(),
      binding: EditProfileBinding(),
    ),
    GetPage(
      name: _Paths.CHANGE_PASSWORD,
      page: () => const ChangePasswordView(),
      binding: ChangePasswordBinding(),
    ),
    GetPage(
      name: _Paths.BILLING_INFORMATION,
      page: () => const BillingInformationView(),
      binding: BillingInformationBinding(),
    ),
    GetPage(
      name: _Paths.USER_FEEDBACK,
      page: () => const UserFeedbackView(),
      binding: UserFeedbackBinding(),
    ),
    GetPage(
      name: _Paths.ADD_TOURNAMENT,
      page: () => const AddTournamentView(),
      binding: AddTournamentBinding(),
    ),
    GetPage(
      name: _Paths.ADD_TIME_SLOTS,
      page: () => const AddTimeSlotsView(),
      binding: AddTimeSlotsBinding(),
    ),
  ];
}
