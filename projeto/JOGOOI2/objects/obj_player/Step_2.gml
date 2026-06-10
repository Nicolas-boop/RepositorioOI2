	#region mov and collide
	
		_xspeed   = (_right - _left ) * _modspeed ;
		_yspeed   = (_down  - _up  )   * _modspeed ;

		//colisão  terminal
				//colisao parede / movimento
		move_and_collide(_xspeed, _yspeed, obj_colision, 12);
		
	#endregion