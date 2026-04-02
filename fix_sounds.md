# Fix sounds
1. Download [the fix](https://www.mediafire.com/file/ybc6jx5pxar4xa4/BO3_Weapons%2C_Perks%2C_Shield%2C_And_Other_Sound_Fix.rar/file)
2. Copy `sound_assets` and `share` into root Black Ops III directory
3. In your maps folder in usermaps, open the `.szc` in `/sound/zoneconfig`
4. Add the following at the bottom, right before `]}`:
	```json
	{
	 "Type" : "ALIAS",
	 "Name" : "graffitis_aliases",
	 "Filename" : "graffitis_aliases.csv",
	 "Specs" : [ ] 
	},
	```