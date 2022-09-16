draw_self();

if (flash > 0) {
	shader_set(hit);
	draw_self();
	shader_reset();
	flash--;
}
