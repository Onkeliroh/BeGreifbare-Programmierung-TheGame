class timer
{
	double start_time = 0;	
	double end_time = Double.MAX_VALUE;
	double durration_time = Double.MAX_VALUE;

	private boolean run = false;
	
	timer(double durration)
	{
		this.durration_time = durration;
		this.start_time = millis();
		this.end_time = this.start_time + durration;
		this.run = false;
	}

	void start()
	{
		this.restart();
	}
	
	void restart()
	{
		this.start_time = millis();
		this.end_time = this.start_time + this.durration_time;
		this.run = true;
	}

	void stop()
	{
		this.run = false;
	}	
	
	double get_time_msec()
	{
		if ( this.run )
			return ( millis() - this.start_time );
		else
			return 0;
	}

	double get_time_sec()
	{
		return ( this.get_time_msec() / 1000 );
	}

	double get_time_left_sec()
	{
		return ( this.durration_time / 1000 ) - ( this.get_time_msec() / 1000 );
	}

	boolean finished()
	{
		if ( this.run )
		{
			if ( millis() >= this.end_time )
				return true;
			else
				return false;
		}
		return false;
	}
	
	boolean running()
	{
		return this.run;
	}
}
