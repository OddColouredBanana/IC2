 -- tool:E:\SteamLibrary\steamapps\common\Impossible Creatures\Data\scenarios\mp\4p_rampart_spec.trg --

-- list of all trigger folders
folders = {
   "default",
   "resource_control",
   "spectators",
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
spectators = {
	{
	id=5,
	name="delete_labs",
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
		type="DeleteEntity",
		args={
			{type=2,val=335},
		}
		},
		{
		type="DeleteEntity",
		args={
			{type=2,val=336},
		}
		},
	},
	},
	{
	id=6,
	name="rename_spectators",
	pset=3072,
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
		type="SetPlayerName",
		args={
			{type=11,val=3003},
		}
		},
	},
	},
}