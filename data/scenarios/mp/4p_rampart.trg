 -- tool:C:\Program Files (x86)\Steam\steamapps\common\Impossible Creatures\Data\scenarios\mp\4p_rampart.trg --

-- list of all trigger folders
folders = {
   "default",
   "resource_control",
}
default = {
	{
	id=2,
	name="Music",
	pset=512,
	active=1,
	looping=0,
	conditions={
		{
		type="Always",
		args={
		}
		},
	},
	actions={
		{
		type="Set battle track",
		args={
			{type=9,val=3001},
		}
		},
		{
		type="Play Music",
		args={
			{type=9,val=3002},
		}
		},
	},
	},
}
resource_control = {
	{
	id=0,
	name="resources_on",
	pset=16,
	active=1,
	looping=0,
	conditions={
		{
		type="Player is not restricted to",
		args={
			{type=13,val=267},
		}
		},
	},
	actions={
		{
		type="GroupVisible in FOW",
		args={
			{type=12,val=0},
			{type=3,val=4},
			{type=10,val=1},
		}
		},
	},
	},
	{
	id=1,
	name="resources_off",
	pset=16,
	active=1,
	looping=0,
	conditions={
		{
		type="GameTime",
		args={
			{type=0,val=1},
		}
		},
		{
		type="Player is not restricted to",
		args={
			{type=13,val=267},
		}
		},
	},
	actions={
		{
		type="GroupVisible in FOW",
		args={
			{type=12,val=0},
			{type=3,val=4},
			{type=10,val=0},
		}
		},
	},
	},
}