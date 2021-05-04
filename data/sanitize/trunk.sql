Truncate Magento 2 database
truncate-mage-2.sql
SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE TABLE `gift_message`;
TRUNCATE TABLE `quote`;
TRUNCATE TABLE `quote_address`;
TRUNCATE TABLE `quote_address_item`;
TRUNCATE TABLE `quote_id_mask`;
TRUNCATE TABLE `quote_item`;
TRUNCATE TABLE `quote_item_option`;
TRUNCATE TABLE `quote_payment`;
TRUNCATE TABLE `quote_shipping_rate`;
TRUNCATE TABLE `reporting_orders`;
TRUNCATE TABLE `sales_bestsellers_aggregated_daily`;
TRUNCATE TABLE `sales_bestsellers_aggregated_monthly`;
TRUNCATE TABLE `sales_bestsellers_aggregated_yearly`;
TRUNCATE TABLE `sales_creditmemo`;
TRUNCATE TABLE `sales_creditmemo_comment`;
TRUNCATE TABLE `sales_creditmemo_grid`;
TRUNCATE TABLE `sales_creditmemo_item`;
TRUNCATE TABLE `sales_invoice`;
TRUNCATE TABLE `sales_invoiced_aggregated`;
TRUNCATE TABLE `sales_invoiced_aggregated_order`;
TRUNCATE TABLE `sales_invoice_comment`;
TRUNCATE TABLE `sales_invoice_grid`;
TRUNCATE TABLE `sales_invoice_item`;
TRUNCATE TABLE `sales_order`;
TRUNCATE TABLE `sales_order_address`;
TRUNCATE TABLE `sales_order_aggregated_created`;
TRUNCATE TABLE `sales_order_aggregated_updated`;
TRUNCATE TABLE `sales_order_grid`;
TRUNCATE TABLE `sales_order_item`;
TRUNCATE TABLE `sales_order_payment`;
TRUNCATE TABLE `sales_order_status_history`;
TRUNCATE TABLE `sales_order_tax`;
TRUNCATE TABLE `sales_order_tax_item`;
TRUNCATE TABLE `sales_payment_transaction`;
TRUNCATE TABLE `sales_refunded_aggregated`;
TRUNCATE TABLE `sales_refunded_aggregated_order`;
TRUNCATE TABLE `sales_shipment`;
TRUNCATE TABLE `sales_shipment_comment`;
TRUNCATE TABLE `sales_shipment_grid`;
TRUNCATE TABLE `sales_shipment_item`;
TRUNCATE TABLE `sales_shipment_track`;
TRUNCATE TABLE `sales_shipping_aggregated`;
TRUNCATE TABLE `sales_shipping_aggregated_order`;
TRUNCATE TABLE `tax_order_aggregated_created`;
TRUNCATE TABLE `tax_order_aggregated_updated`;
TRUNCATE TABLE `customer_address_entity`;
TRUNCATE TABLE `customer_address_entity_datetime`;
TRUNCATE TABLE `customer_address_entity_decimal`;
TRUNCATE TABLE `customer_address_entity_int`;
TRUNCATE TABLE `customer_address_entity_text`;
TRUNCATE TABLE `customer_address_entity_varchar`;
TRUNCATE TABLE `customer_entity`;
TRUNCATE TABLE `customer_entity_datetime`;
TRUNCATE TABLE `customer_entity_decimal`;
TRUNCATE TABLE `customer_entity_int`;
TRUNCATE TABLE `customer_entity_text`;
TRUNCATE TABLE `customer_entity_varchar`;
TRUNCATE TABLE `customer_grid_flat`;
TRUNCATE TABLE `customer_log`;
TRUNCATE TABLE `customer_log`;
TRUNCATE TABLE `customer_visitor`;
TRUNCATE TABLE `persistent_session`;
TRUNCATE TABLE `wishlist`;
TRUNCATE TABLE `wishlist_item`;
TRUNCATE TABLE `wishlist_item_option`;
TRUNCATE TABLE `review`;
TRUNCATE TABLE `review_detail`;
TRUNCATE TABLE `review_entity_summary`;
TRUNCATE TABLE `review_store`;
TRUNCATE TABLE `cataloginventory_stock_item`;
TRUNCATE TABLE `cataloginventory_stock_status`;
TRUNCATE TABLE `cataloginventory_stock_status_idx`;
TRUNCATE TABLE `cataloginventory_stock_status_tmp`;
TRUNCATE TABLE `catalog_category_product`;
TRUNCATE TABLE `catalog_category_product_index`;
TRUNCATE TABLE `catalog_category_product_index_tmp`;
TRUNCATE TABLE `catalog_compare_item`;
TRUNCATE TABLE `catalog_product_bundle_option`;
TRUNCATE TABLE `catalog_product_bundle_option_value`;
TRUNCATE TABLE `catalog_product_bundle_price_index`;
TRUNCATE TABLE `catalog_product_bundle_selection`;
TRUNCATE TABLE `catalog_product_bundle_selection_price`;
TRUNCATE TABLE `catalog_product_bundle_stock_index`;
TRUNCATE TABLE `catalog_product_entity`;
TRUNCATE TABLE `catalog_product_entity_datetime`;
TRUNCATE TABLE `catalog_product_entity_decimal`;
TRUNCATE TABLE `catalog_product_entity_gallery`;
TRUNCATE TABLE `catalog_product_entity_int`;
TRUNCATE TABLE `catalog_product_entity_media_gallery`;
TRUNCATE TABLE `catalog_product_entity_media_gallery_value`;
TRUNCATE TABLE `catalog_product_entity_media_gallery_value_to_entity`;
TRUNCATE TABLE `catalog_product_entity_media_gallery_value_video`;
TRUNCATE TABLE `catalog_product_entity_text`;
TRUNCATE TABLE `catalog_product_entity_tier_price`;
TRUNCATE TABLE `catalog_product_entity_varchar`;
TRUNCATE TABLE `catalog_product_index_eav`;
TRUNCATE TABLE `catalog_product_index_eav_decimal`;
TRUNCATE TABLE `catalog_product_index_eav_decimal_idx`;
TRUNCATE TABLE `catalog_product_index_eav_decimal_tmp`;
TRUNCATE TABLE `catalog_product_index_eav_idx`;
TRUNCATE TABLE `catalog_product_index_eav_tmp`;
TRUNCATE TABLE `catalog_product_index_price`;
TRUNCATE TABLE `catalog_product_index_price_bundle_idx`;
TRUNCATE TABLE `catalog_product_index_price_bundle_opt_idx`;
TRUNCATE TABLE `catalog_product_index_price_bundle_opt_tmp`;
TRUNCATE TABLE `catalog_product_index_price_bundle_sel_idx`;
TRUNCATE TABLE `catalog_product_index_price_bundle_sel_tmp`;
TRUNCATE TABLE `catalog_product_index_price_bundle_tmp`;
TRUNCATE TABLE `catalog_product_index_price_cfg_opt_agr_idx`;
TRUNCATE TABLE `catalog_product_index_price_cfg_opt_agr_tmp`;
TRUNCATE TABLE `catalog_product_index_price_cfg_opt_idx`;
TRUNCATE TABLE `catalog_product_index_price_cfg_opt_tmp`;
TRUNCATE TABLE `catalog_product_index_price_downlod_idx`;
TRUNCATE TABLE `catalog_product_index_price_downlod_tmp`;
TRUNCATE TABLE `catalog_product_index_price_final_idx`;
TRUNCATE TABLE `catalog_product_index_price_final_tmp`;
TRUNCATE TABLE `catalog_product_index_price_idx`;
TRUNCATE TABLE `catalog_product_index_price_opt_agr_idx`;
TRUNCATE TABLE `catalog_product_index_price_opt_agr_tmp`;
TRUNCATE TABLE `catalog_product_index_price_opt_idx`;
TRUNCATE TABLE `catalog_product_index_price_opt_tmp`;
TRUNCATE TABLE `catalog_product_index_price_tmp`;
TRUNCATE TABLE `catalog_product_index_tier_price`;
TRUNCATE TABLE `catalog_product_index_website`;
TRUNCATE TABLE `catalog_product_link`;
TRUNCATE TABLE `catalog_product_link_attribute`;
TRUNCATE TABLE `catalog_product_link_attribute_decimal`;
TRUNCATE TABLE `catalog_product_link_attribute_int`;
TRUNCATE TABLE `catalog_product_link_attribute_varchar`;
TRUNCATE TABLE `catalog_product_option`;
TRUNCATE TABLE `catalog_product_option_price`;
TRUNCATE TABLE `catalog_product_option_title`;
TRUNCATE TABLE `catalog_product_option_type_price`;
TRUNCATE TABLE `catalog_product_option_type_title`;
TRUNCATE TABLE `catalog_product_option_type_value`;
TRUNCATE TABLE `catalog_product_relation`;
TRUNCATE TABLE `catalog_product_super_attribute`;
TRUNCATE TABLE `catalog_product_super_attribute_label`;
TRUNCATE TABLE `catalog_product_super_link`;
TRUNCATE TABLE `catalog_product_website`;
TRUNCATE TABLE `catalog_url_rewrite_product_category`;
TRUNCATE TABLE `downloadable_link`;
TRUNCATE TABLE `downloadable_link_price`;
TRUNCATE TABLE `downloadable_link_purchased`;
TRUNCATE TABLE `downloadable_link_purchased_item`;
TRUNCATE TABLE `downloadable_link_title`;
TRUNCATE TABLE `downloadable_sample`;
TRUNCATE TABLE `downloadable_sample_title`;
TRUNCATE TABLE `product_alert_price`;
TRUNCATE TABLE `product_alert_stock`;
TRUNCATE TABLE `report_compared_product_index`;
TRUNCATE TABLE `report_viewed_product_aggregated_daily`;
TRUNCATE TABLE `report_viewed_product_aggregated_monthly`;
TRUNCATE TABLE `report_viewed_product_aggregated_yearly`;
TRUNCATE TABLE `report_viewed_product_index`;
TRUNCATE TABLE `catalog_category_entity`;
TRUNCATE TABLE `catalog_category_entity_datetime`;
TRUNCATE TABLE `catalog_category_entity_decimal`;
TRUNCATE TABLE `catalog_category_entity_int`;
TRUNCATE TABLE `catalog_category_entity_text`;
TRUNCATE TABLE `catalog_category_entity_varchar`;
TRUNCATE TABLE `catalog_category_product`;
TRUNCATE TABLE `catalog_category_product_index`;
INSERT INTO `catalog_category_entity` (`entity_id`, `attribute_set_id`, `parent_id`, `created_at`, `updated_at`, `path`, `position`, `level`, `children_count`) VALUES ('1', '0', '0', '2016-06-23 00:00:00', '2016-06-23 00:00:00', '1', '0', '0', '1'), ('2', '3', '1', '2016-06-23 00:00:00', '2016-06-23 00:00:00', '1/2', '1', '1', '0');
INSERT INTO `catalog_category_entity_datetime` (`value_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES ('1', '58', '0', '1', NULL), (2, 58, 0, 2, NULL);
INSERT INTO `catalog_category_entity_decimal` (`value_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES
(1, 69, 0, 2, NULL);
INSERT INTO `catalog_category_entity_int` (`value_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES ('1', '66', '0', '1', '1'), (2, 43, 0, 2, 1), (3, 50, 0, 2, NULL), (4, 51, 0, 2, 1), (5, 66, 0, 2, 1), (6, 68, 0, 2, 0);
INSERT INTO `catalog_category_entity_text` (`value_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES ('1', '64', '0', '1', NULL), (2, 64, 0, 2, NULL), (3, 44, 0, 2, NULL), (4, 47, 0, 2, NULL), (5, 48, 0, 2, NULL), (6, 61, 0, 2, NULL);
INSERT INTO `catalog_category_entity_varchar` (`value_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES ('1', '42', '0', '1', 'Root Catalog');
INSERT INTO `catalog_category_entity_varchar` (`value_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES (2, 42, 0, 2, 'Default Category'), (3, 46, 0, 2, NULL), (4, 49, 0, 2, 'PRODUCTS'), (5, 57, 0, 2, NULL), (6, 60, 0, 2, NULL), (7, 65, 0, 2, NULL), (8, 113, 0, 2, 'default-category'), (9, 114, 0, 2, NULL), (10, 143, 0, 2, NULL), (11, 145, 0, 2, NULL), (12, 147, 0, 2, NULL);
SET FOREIGN_KEY_CHECKS = 1;