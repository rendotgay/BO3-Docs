# Custom Sounds
How to add custom sounds to your map
1. Export your audio as 48000 Hz WAV. If you don't know how to do that, I recommend [Audacity](https://www.audacityteam.org/download/). Drag your audio in, crop it if you'd like, select `File > Export Audio` and set `Format: WAV (Microsoft)`, `Encoding: Signed 16-bit PCM` and `Sample Rate: 48000 Hz`
2. Save it in your `Call of Duty Black Ops III\sound_assets`, into a new folder if you'd like
3. Open `Call of Duty Black Ops III\share\raw\sound\aliases\user_aliases.csv`
	*you can put this in any `.csv` if you know how to edit your maps `.szc`*
4. Add a new line an enter:
	```csv
	sound_alias,,,tst\test_sound.wav,,,UIN_MOD,,,,,,,,,,,100,100,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,
	```
	and replace `sound_alias` with whatever alias you'd like to use for the sound, and replace `tst\test_sound.wav` with the path to your audio file, relative to `Call of Duty Black Ops III\sound_assets`
*if your sound is loud, change 100 to a lower number like 80*