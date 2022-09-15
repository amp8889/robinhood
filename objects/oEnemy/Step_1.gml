if (hp <= 0) {
	with(instance_create_layer(x,y,layer,oEnemyDead)) {
		hsp = 3 * other.hitFrom;
		image_xscale = other.hitFrom;
	}
	instance_destroy();
}
