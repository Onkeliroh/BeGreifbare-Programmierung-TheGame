class timer
{
	double start_time = 0;	
	double end_time = Double.MAX_VALUE;
	double durration_time = Double.MAX_VALUE;
	
	timer(double durration)
	{
		this.durration_time = durration;
		this.start_time = millis();
		this.end_time = this.start_time + durration;
	}

	void restart()
	{
		this.start_time = millis();
		this.end_time = this.start_time + this.durration_time;
	}
	
	double get_time_msec()
	{
		return ( millis() - this.start_time );
	}

	double get_time_sec()
	{
		return ( this.get_time_msec() / 1000 );
	}

	boolean finished()
	{
		if ( millis() >= this.end_time )
			return true;
		else
			return false;
	}
}
