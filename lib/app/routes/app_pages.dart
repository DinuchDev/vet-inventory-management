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
import '../modules/purchases/bills/bindings/bills_binding.dart';
import '../modules/purchases/bills/views/bills_view.dart';
import '../modules/purchases/payments_made/bindings/payments_made_binding.dart';
import '../modules/purchases/payments_made/views/payments_made_view.dart';
import '../modules/purchases/purchase_orders/bindings/purchase_orders_binding.dart';
import '../modules/purchases/purchase_orders/views/purchase_orders_view.dart';
import '../modules/purchases/purchases_receives/bindings/purchases_receives_binding.dart';
import '../modules/purchases/purchases_receives/views/purchases_receives_view.dart';
import '../modules/purchases/vendor_credits/bindings/vendor_credits_binding.dart';
import '../modules/purchases/vendor_credits/views/vendor_credits_view.dart';
import '../modules/purchases/vendors/bindings/vendors_binding.dart';
import '../modules/purchases/vendors/views/vendors_view.dart';
import '../modules/reports/bindings/reports_binding.dart';
import '../modules/reports/views/reports_view.dart';
import '../modules/sales/credit_notes/bindings/credit_notes_binding.dart';
import '../modules/sales/credit_notes/views/credit_notes_view.dart';
import '../modules/sales/customers/bindings/customers_binding.dart';
import '../modules/sales/customers/views/customers_view.dart';
import '../modules/sales/invoices/bindings/invoices_binding.dart';
import '../modules/sales/invoices/views/invoices_view.dart';
import '../modules/sales/packages/bindings/packages_binding.dart';
import '../modules/sales/packages/views/packages_view.dart';
import '../modules/sales/payments_received/bindings/payments_received_binding.dart';
import '../modules/sales/payments_received/views/payments_received_view.dart';
import '../modules/sales/sales_orders/bindings/sales_orders_binding.dart';
import '../modules/sales/sales_orders/views/sales_orders_view.dart';
import '../modules/sales/sales_receipts/bindings/sales_receipts_binding.dart';
import '../modules/sales/sales_receipts/views/sales_receipts_view.dart';
import '../modules/sales/sales_returns/bindings/sales_returns_binding.dart';
import '../modules/sales/sales_returns/views/sales_returns_view.dart';
import '../modules/sales/shipments/bindings/shipments_binding.dart';
import '../modules/sales/shipments/views/shipments_view.dart';
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
    GetPage(
      name: _Paths.PACKAGES,
      page: () => PackagesView(),
      binding: PackagesBinding(),
    ),
    GetPage(
      name: _Paths.SHIPMENTS,
      page: () => const ShipmentsView(),
      binding: ShipmentsBinding(),
    ),
    GetPage(
      name: _Paths.INVOICES,
      page: () => const InvoicesView(),
      binding: InvoicesBinding(),
    ),
    GetPage(
      name: _Paths.SALES_RECEIPTS,
      page: () => const SalesReceiptsView(),
      binding: SalesReceiptsBinding(),
    ),
    GetPage(
      name: _Paths.PAYMENTS_RECEIVED,
      page: () => const PaymentsReceivedView(),
      binding: PaymentsReceivedBinding(),
    ),
    GetPage(
      name: _Paths.SALES_RETURNS,
      page: () => const SalesReturnsView(),
      binding: SalesReturnsBinding(),
    ),
    GetPage(
      name: _Paths.CREDIT_NOTES,
      page: () => const CreditNotesView(),
      binding: CreditNotesBinding(),
    ),
    GetPage(
      name: _Paths.PURCHASES_RECEIVES,
      page: () => const PurchasesReceivesView(),
      binding: PurchasesReceivesBinding(),
    ),
    GetPage(
      name: _Paths.BILLS,
      page: () => const BillsView(),
      binding: BillsBinding(),
    ),
    GetPage(
      name: _Paths.PAYMENTS_MADE,
      page: () => const PaymentsMadeView(),
      binding: PaymentsMadeBinding(),
    ),
    GetPage(
      name: _Paths.VENDOR_CREDITS,
      page: () => const VendorCreditsView(),
      binding: VendorCreditsBinding(),
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
    case packagesPageRoute:
      return _getPageRoute(PackagesView());
    case shipmentsPageRoute:
      return _getPageRoute(ShipmentsView());
    case invoicesPageRoute:
      return _getPageRoute(InvoicesView());
    case salesReceiptsPageRoute:
      return _getPageRoute(SalesReceiptsView());
    case paymentsReceivedPageRoute:
      return _getPageRoute(PaymentsReceivedView());
    case salesReturnsPageRoute:
      return _getPageRoute(SalesReturnsView());
    case creditNotesPageRoute:
      return _getPageRoute(CreditNotesView());
    case vendorsPageRoute:
      return _getPageRoute(VendorsView());
    case purchaseOrdersPageRoute:
      return _getPageRoute(PurchaseOrdersView());
    case purchasesReceivesPageRoute:
      return _getPageRoute(PurchasesReceivesView());
    case billsPageRoute:
      return _getPageRoute(BillsView());
    case paymentsMadePageRoute:
      return _getPageRoute(PaymentsMadeView());
    case vendorCreditsPageRoute:
      return _getPageRoute(VendorCreditsView());
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
