create table bron.bag_vot_num (
	landelijke_bag_vot_id bigint,
	landelijke_bag_num_id bigint,
	vot_id bigint,
	num_id bigint,
	ind_hoofdadres character(1),
	geldig_op timestamp without time zone,
	kennisgegeven_op bigint
);
