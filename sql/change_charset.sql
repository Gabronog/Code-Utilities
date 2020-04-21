Primero: ALTER DATABASE NOMBREBASEDEDATOS CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci

-Ejecutar cada línea de:

mysql> SELECT CONCAT( 'ALTER TABLE ',  table_name, ' CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;  ',  'ALTER TABLE ',  table_name, ' CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;  ') FROM information_schema.TABLES AS T, information_schema.`COLLATION_CHARACTER_SET_APPLICABILITY` AS C WHERE C.collation_name = T.table_collation AND T.table_schema = 'NOMBREBASEDEDATOS' AND (C.CHARACTER_SET_NAME != 'utf8mb4'     OR  C.COLLATION_NAME not like 'utf8mb4%');

Ejemplo:

+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| CONCAT( 'ALTER TABLE ',  table_name, ' CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;  ',  'ALTER TABLE ',  table_name, ' CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;  ')     |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| ALTER TABLE ticketing_group CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;  ALTER TABLE ticketing_group CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;                           |
| ALTER TABLE misc_ip CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;  ALTER TABLE misc_ip CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;                                           |
| ALTER TABLE auth_user_user_permissions CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;  ALTER TABLE auth_user_user_permissions CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;     |
| ALTER TABLE ticketing_ticketrestoration CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;  ALTER TABLE ticketing_ticketrestoration CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;   |
| ALTER TABLE ticketing_ticketsla CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;  ALTER TABLE ticketing_ticketsla CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;                   |
| ALTER TABLE django_admin_log CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;  ALTER TABLE django_admin_log CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;                         |
| ALTER TABLE internal_employee CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;  ALTER TABLE internal_employee CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;                       |
| ALTER TABLE django_session CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;  ALTER TABLE django_session CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;                             |
| ALTER TABLE ticketing_slo_operation CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;  ALTER TABLE ticketing_slo_operation CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;           |
| ALTER TABLE clients_client CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;  ALTER TABLE clients_client CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;                             |
| ALTER TABLE auth_group_permissions CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;  ALTER TABLE auth_group_permissions CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;             |
| ALTER TABLE ticketing_ticketgroup CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;  ALTER TABLE ticketing_ticketgroup CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;               |
| ALTER TABLE ticketing_closetype CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;  ALTER TABLE ticketing_closetype CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;                   |
| ALTER TABLE clients_clientalias CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;  ALTER TABLE clients_clientalias CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;                   |
| ALTER TABLE auth_user_groups CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;  ALTER TABLE auth_user_groups CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;                         |
| ALTER TABLE auth_permission CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;  ALTER TABLE auth_permission CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;                           |
| ALTER TABLE auth_group CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;  ALTER TABLE auth_group CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;                                     |
| ALTER TABLE ticketing_slos CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;  ALTER TABLE ticketing_slos CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;                             |
| ALTER TABLE ticketing_complaints CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;  ALTER TABLE ticketing_complaints CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;                 |
| ALTER TABLE auth_user CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;  ALTER TABLE auth_user CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;                                       |
| ALTER TABLE metrics_peakflowalert CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;  ALTER TABLE metrics_peakflowalert CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;               |
| ALTER TABLE django_content_type CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;  ALTER TABLE django_content_type CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;                   |
| ALTER TABLE django_migrations CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;  ALTER TABLE django_migrations CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;                       |
| ALTER TABLE ticketing_ticketcost CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;  ALTER TABLE ticketing_ticketcost CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;                 |
| ALTER TABLE metrics_peakflowalertips CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;  ALTER TABLE metrics_peakflowalertips CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;         |
| ALTER TABLE ticketing_ticket CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;  ALTER TABLE ticketing_ticket CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;                         |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
26 rows in set (0.00 sec)
