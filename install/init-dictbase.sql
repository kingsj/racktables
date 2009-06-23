-- This file is intentionally kept in extended INSERT syntax
-- (1 query = N rows) to generate less diff noise on column
-- name change.

INSERT INTO `Attribute` (`id`, `type`, `name`) VALUES
(1,'string','OEM S/N 1'),
(2,'dict','HW type'),
(3,'string','FQDN'),
(4,'dict','SW type'),
(5,'string','SW version'),
(6,'uint','number of ports'),
(7,'float','max. current, Ampers'),
(8,'float','power load, percents'),
(14,'string','contact person'),
(13,'float','max power, Watts'),
(16,'uint','flash memory, MB'),
(17,'uint','DRAM, MB'),
(18,'uint','CPU, MHz'),
(20,'string','OEM S/N 2'),
(21,'string','support contract expiration'),
(22,'string','HW warranty expiration'),
(24,'string','SW warranty expiration'),
(25,'string','UUID');

INSERT INTO `AttributeMap` (`objtype_id`, `attr_id`, `chapter_id`) VALUES
(4,1,0),
(4,2,11),
(4,3,0),
(4,4,13),
(4,14,0),
(4,21,0),
(4,22,0),
(4,25,0),
(4,24,0),
(5,1,0),
(5,2,18),
(6,1,0),
(6,2,19),
(6,20,0),
(7,1,0),
(7,2,17),
(7,3,0),
(7,4,16),
(7,5,0),
(7,14,0),
(7,16,0),
(7,17,0),
(7,18,0),
(7,21,0),
(7,22,0),
(7,24,0),
(8,1,0),
(8,2,12),
(8,3,0),
(8,4,14),
(8,5,0),
(8,14,0),
(8,16,0),
(8,17,0),
(8,18,0),
(8,20,0),
(8,21,0),
(8,22,0),
(8,24,0),
(9,6,0),
(12,1,0),
(12,3,0),
(12,7,0),
(12,8,0),
(12,13,0),
(12,20,0),
(445,1,0),
(445,2,21),
(445,3,0),
(445,5,0),
(445,14,0),
(445,22,0),
(447,1,0),
(447,2,22),
(447,3,0),
(447,5,0),
(447,14,0),
(447,22,0),
(15,2,23),
(798,1,0),
(798,2,24),
(798,3,0),
(798,5,0),
(798,14,0),
(798,16,0),
(798,17,0),
(798,18,0),
(798,20,0),
(798,21,0),
(798,22,0),
(798,24,0),
(965,1,0),
(965,3,0),
(965,2,25),
(1055,2,26);

INSERT INTO `Chapter` (`id`, `sticky`, `name`) VALUES
(1,'yes','RackObjectType'),
(2,'yes','PortType'),
(11,'no','server models'),
(12,'no','network switch models'),
(13,'no','server OS type'),
(14,'no','switch OS type'),
(16,'no','router OS type'),
(17,'no','router models'),
(18,'no','disk array models'),
(19,'no','tape library models'),
(21,'no','KVM switch models'),
(22,'no','multiplexer models'),
(23,'no','console models'),
(24,'no','network security models'),
(25,'no','wireless models'),
(26,'no','fibre channel switch models');

INSERT INTO `PortCompat` (`type1`, `type2`) VALUES
(17,17),
(18,18),
(19,19),
(20,20),
(21,21),
(22,22),
(23,23),
(24,24),
(25,25),
(26,26),
(27,27),
(28,28),
(18,19),
(19,18),
(18,24),
(24,18),
(19,24),
(24,19),
(29,29),
(20,21),
(21,20),
(22,23),
(23,22),
(25,26),
(26,25),
(27,28),
(28,27),
(30,30),
(16,16),
(29,681),
(29,682),
(32,32),
(33,446),
(34,34),
(35,35),
(36,36),
(37,37),
(38,38),
(39,39),
(40,40),
(41,41),
(439,439),
(446,33),
(681,29),
(681,681),
(681,682),
(682,29),
(682,681),
(682,682);

INSERT INTO `Config` (varname, varvalue, vartype, emptyok, is_hidden, description) VALUES
('color_F','8fbfbf','string','no','yes','HSV: 180-25-75. Free atoms, they are available for allocation to objects.'),
('color_A','bfbfbf','string','no','yes','HSV: 0-0-75. Absent atoms.'),
('color_U','bf8f8f','string','no','yes','HSV: 0-25-75. Unusable atoms. Some problems keep them from being free.'),
('color_T','408080','string','no','yes','HSV: 180-50-50. Taken atoms, object_id should be set for such.'),
('color_Th','80ffff','string','no','yes','HSV: 180-50-100. Taken atoms with highlight. They are not stored in the database and are only used for highlighting.'),
('color_Tw','804040','string','no','yes','HSV: 0-50-50. Taken atoms with object problem. This is detected at runtime.'),
('color_Thw','ff8080','string','no','yes','HSV: 0-50-100. An object can be both current and problematic. We run highlightObject() first and markupObjectProblems() second.'),
('default_port_type','24','uint','no','no','Default port type'),
('MASSCOUNT','15','uint','no','no','&quot;Fast&quot; form is this many records tall'),
('MAXSELSIZE','30','uint','no','no','&lt;SELECT&gt; lists height'),
('enterprise','MyCompanyName','string','no','no','Organization name'),
('ROW_SCALE','2','uint','no','no','Picture scale for rack row display'),
('PORTS_PER_ROW','12','uint','no','no','Ports per row in VLANs tab'),
('IPV4_ADDRS_PER_PAGE','256','uint','no','no','IPv4 addresses per page'),
('DEFAULT_RACK_HEIGHT','42','uint','yes','no','Default rack height'),
('DEFAULT_SLB_VS_PORT','','uint','yes','no','Default port of SLB virtual service'),
('DEFAULT_SLB_RS_PORT','','uint','yes','no','Default port of SLB real server'),
('DETECT_URLS','no','string','yes','no','Detect URLs in text fields'),
('RACK_PRESELECT_THRESHOLD','1','uint','no','no','Rack pre-selection threshold'),
('DEFAULT_IPV4_RS_INSERVICE','no','string','no','no','Inservice status for new SLB real servers'),
('AUTOPORTS_CONFIG','4 = 1*33*kvm + 2*24*eth%u;15 = 1*446*kvm','string','yes','no','AutoPorts configuration'),
('DEFAULT_OBJECT_TYPE','4','uint','yes','no','Default object type for new objects'),
('SHOW_EXPLICIT_TAGS','yes','string','no','no','Show explicit tags'),
('SHOW_IMPLICIT_TAGS','yes','string','no','no','Show implicit tags'),
('SHOW_AUTOMATIC_TAGS','no','string','no','no','Show automatic tags'),
('IPV4_AUTO_RELEASE','1','uint','no','no','Auto-release IPv4 addresses on allocation'),
('SHOW_LAST_TAB','no','string','yes','no','Remember last tab shown for each page'),
('EXT_IPV4_VIEW','yes','string','no','no','Extended IPv4 view'),
('TREE_THRESHOLD','25','uint','yes','no','Tree view auto-collapse threshold'),
('IPV4_JAYWALK','no','string','no','no','Enable IPv4 address allocations w/o covering network'),
('ADDNEW_AT_TOP','yes','string','no','no','Render "add new" line at top of the list'),
('IPV4_TREE_SHOW_USAGE','yes','string','no','no','Show address usage in IPv4 tree'),
('PREVIEW_TEXT_MAXCHARS','10240','uint','yes','no','Max chars for text file preview'),
('PREVIEW_TEXT_ROWS','25','uint','yes','no','Rows for text file preview'),
('PREVIEW_TEXT_COLS','80','uint','yes','no','Columns for text file preview'),
('PREVIEW_IMAGE_MAXPXS','320','uint','yes','no','Max pixels per axis for image file preview'),
('VENDOR_SIEVE','','string','yes','no','Vendor sieve configuration'),
('IPV4LB_LISTSRC','{$typeid_4}','string','yes','no','List source: IPv4 load balancers'),
('IPV4OBJ_LISTSRC','{$typeid_4} or {$typeid_7} or {$typeid_8} or {$typeid_12} or {$typeid_445} or {$typeid_447}','string','yes','no','List source: IPv4-enabled objects'),
('IPV4NAT_LISTSRC','{$typeid_4} or {$typeid_7} or {$typeid_8}','string','yes','no','List source: IPv4 NAT performers'),
('ASSETWARN_LISTSRC','{$typeid_4} or {$typeid_7} or {$typeid_8}','string','yes','no','List source: object, for which asset tag should be set'),
('NAMEWARN_LISTSRC','{$typeid_4} or {$typeid_7} or {$typeid_8}','string','yes','no','List source: object, for which common name should be set'),
('RACKS_PER_ROW','12','unit','yes','no','Racks per row'),
('FILTER_PREDICATE_SIEVE','','string','yes','no','Predicate sieve regex(7)'),
('FILTER_DEFAULT_ANDOR','or','string','no','no','Default list filter boolean operation (or/and)'),
('FILTER_SUGGEST_ANDOR','yes','string','no','no','Suggest and/or selector in list filter'),
('FILTER_SUGGEST_TAGS','yes','string','no','no','Suggest tags in list filter'),
('FILTER_SUGGEST_PREDICATES','yes','string','no','no','Suggest predicates in list filter'),
('FILTER_SUGGEST_EXTRA','no','string','no','no','Suggest extra expression in list filter'),
('DEFAULT_SNMP_COMMUNITY','public','string','no','no','Default SNMP Community string'),
('DB_VERSION','0.17.1','string','no','yes','Database version.');

INSERT INTO `Script` VALUES ('RackCode','allow {$userid_1}');
