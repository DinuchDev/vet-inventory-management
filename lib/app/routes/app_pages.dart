import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../modules/authentication/bindings/authentication_binding.dart';
import '../modules/authentication/views/authentication_view.dart';
import '../modules/clients_page/bindings/clients_page_binding.dart';
import '../modules/clients_page/views/clients_page_view.dart';
import '../modules/documents/bindings/documents_binding.dart';
import '../modules/documents/views/documents_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/integrations/bindings/integrations_binding.dart';
import '../modules/integrations/views/integrations_view.dart';
import '../modules/inventory/inventory_adjustments/bindings/inventory_adjustments_binding.dart';
import '../modules/inventory/inventory_adjustments/views/inventory_adjustments_view.dart';
import '../modules/inventory/item_groups/bindings/item_groups_binding.dart';
import '../modules/inventory/item_groups/views/item_groups_view.dart';
import '../modules/inventory/items/bindings/items_binding.dart';
import '../modules/inventory/items/views/items_view.dart';
import '../modules/notifications/bindings/notifications_binding.dart';
import '../modules/notifications/views/notifications_view.dart';
import '../modules/purchases/purchase_orders/bindings/purchase_orders_binding.dart';
import '../modules/purchases/purchase_orders/views/purchase_orders_view.dart';
import '../modules/purchases/vendors/bindings/vendors_binding.dart';
import '../modules/purchases/vendors/views/vendors_view.dart';
import '../modules/reports/bindings/reports_binding.dart';
import '../modules/reports/views/reports_view.dart';
import '../modules/sales/customers/bindings/customers_binding.dart';
import '../modules/sales/customers/views/customers_view.dart';
import '../modules/sales/sales_orders/bindings/sales_orders_binding.dart';
import '../modules/sales/sales_orders/views/sales_orders_view.dart';
import '../modules/users/bindings/users_binding.dart';
import '../modules/users/views/users_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.AUTHENTICATION,
      page: () => const AuthenticationView(),
      binding: AuthenticationBinding(),
    ),
    GetPage(
      name: _Paths.CLIENTS_PAGE,
      page: () => const ClientsPageView(),
      binding: ClientsPageBinding(),
    ),
    GetPage(
      name: _Paths.NOTIFICATIONS,
      page: () => const NotificationsView(),
      binding: NotificationsBinding(),
    ),
    GetPage(
      name: _Paths.USERS,
      page: () => const UsersView(),
      binding: UsersBinding(),
    ),
    GetPage(
      name: _Paths.ITEMS,
      page: () => const ItemsView(),
      binding: ItemsBinding(),
    ),
    GetPage(
      name: _Paths.ITEM_GROUPS,
      page: () => const ItemGroupsView(),
      binding: ItemGroupsBinding(),
    ),
    GetPage(
      name: _Paths.INVENTORY_ADJUSTMENTS,
      page: () => InventoryAdjustmentsView(),
      binding: InventoryAdjustmentsBinding(),
    ),
    GetPage(
      name: _Paths.CUSTOMERS,
      page: () => const CustomersView(),
      binding: CustomersBinding(),
    ),
    GetPage(
      name: _Paths.SALES_ORDERS,
      page: () => const SalesOrdersView(),
      binding: SalesOrdersBinding(),
    ),
    GetPage(
      name: _Paths.VENDORS,
      page: () => const VendorsView(),
      binding: VendorsBinding(),
    ),
    GetPage(
      name: _Paths.PURCHASE_ORDERS,
      page: () => const PurchaseOrdersView(),
      binding: PurchaseOrdersBinding(),
    ),
    GetPage(
      name: _Paths.INTEGRATIONS,
      page: () => const IntegrationsView(),
      binding: IntegrationsBinding(),
    ),
    GetPage(
      name: _Paths.REPORTS,
      page: () => const ReportsView(),
      binding: ReportsBinding(),
    ),
    GetPage(
      name: _Paths.DOCUMENTS,
      page: () => const DocumentsView(),
      binding: DocumentsBinding(),
    ),
  ];
}

/*
GetPageRoute generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case Routes.OVER_VIEW_PAGE:
      return GetPageRoute(
        page: () => const OverViewPageView(),
        binding: OverViewPageBinding(),
      );
    case Routes.DRIVERS_PAGE:
      return GetPageRoute(
        page: () => const DriversPageView(),
        binding: DriversPageBinding(),
      );
    case Routes.CLIENTS_PAGE:
      return GetPageRoute(
        page: () => const ClientsPageView(),
        binding: ClientsPageBinding(),
      );
    default:
      return GetPageRoute(
        page: () => const OverViewPageView(),
        binding: OverViewPageBinding(),
      );
  }
}                                              */

///check this always for the correct generateRoute...
Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case homePageRoute:
      return _getPageRoute(HomeView());
    case itemsPageRoute:
      return _getPageRoute(ItemsView());
    case itemGroupsPageRoute:
      return _getPageRoute(ItemGroupsView());
    case inventoryAdjustmentsPageRoute:
      return _getPageRoute(InventoryAdjustmentsView());
    case customersPageRoute:
      return _getPageRoute(CustomersView());
    case salesOrdersPageRoute:
      return _getPageRoute(SalesOrdersView());
    case vendorsPageRoute:
      return _getPageRoute(VendorsView());
    case purchaseOrdersPageRoute:
      return _getPageRoute(PurchaseOrdersView());
    case integrationsPageRoutes:
      return _getPageRoute(IntegrationsView());
    case reportsPageRoutes:
      return _getPageRoute(ReportsView());
    case documentsPageRoutes:
      return _getPageRoute(DocumentsView());
    case clientsPageRoute:
      return _getPageRoute(const ClientsPageView());
    default:
      return _getPageRoute(HomeView());
  }
}

PageRoute _getPageRoute(Widget child) {
  return MaterialPageRoute(builder: (context) => child);
}
