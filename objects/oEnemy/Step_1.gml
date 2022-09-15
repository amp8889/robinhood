if (hp <= 0) {
	with(instance_create_layer(x,y,layer,oEnemyDead)) {
		direction = other.hitFrom;
		hsp = 3 * direction;
		image_xscale = direction;
	}
	instance_destroy();
}
