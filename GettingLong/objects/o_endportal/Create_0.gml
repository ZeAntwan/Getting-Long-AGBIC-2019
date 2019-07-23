event_inherited();

if (instance_exists(o_crumb)) {
	targetcrumb = instance_number(o_crumb)
} else {
	instance_destroy(self);
}
