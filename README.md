# Mp3ToSlWav

### STATUS
Working. Revisited on 2024/01/28.

## DESCRIPTION
Mp3ToSLWav converts MP3 files to WAV format. This is particularly useful for, low resource use or scripts or Second Life. The script not only converts the files but also normalizes the volume; the specific format is mono, 44.1kHz, 16-bit.

### FEATURES
- **Convert to WAV:** Converts MP3 files to the specific WAV format, that are correct for upload to SL.
- **Volume Normalization:** Normalizes the volume of the audio files in the process.
- **Loop Logic:** Replace processed mp3s with new ones and move the wavs to desired location, then hit `r` to run again.
   
### PREVIEW
- Doing its thing...
```
Mp3ToSlWav Started...


Beginning Conversion...
but-it-isnt-as-if-were-complete-strangers.mp3 > norm, mono, 44.1kHz, 16-bit, .wav
default bump.mp3 > norm, mono, 44.1kHz, 16-bit, .wav
enemy_2.mp3 > norm, mono, 44.1kHz, 16-bit, .wav
enemy_3.mp3 > norm, mono, 44.1kHz, 16-bit, .wav
family_1.mp3 > norm, mono, 44.1kHz, 16-bit, .wav
family_2.mp3 > norm, mono, 44.1kHz, 16-bit, .wav
family_3.mp3 > norm, mono, 44.1kHz, 16-bit, .wav
friend_1.mp3 > norm, mono, 44.1kHz, 16-bit, .wav
friend_2.mp3 > norm, mono, 44.1kHz, 16-bit, .wav
friend_3.mp3 > norm, mono, 44.1kHz, 16-bit, .wav
stranger.mp3 > norm, mono, 44.1kHz, 16-bit, .wav
stranger2.mp3 > norm, mono, 44.1kHz, 16-bit, .wav
stranger3.mp3 > norm, mono, 44.1kHz, 16-bit, .wav
swish.mp3 > norm, mono, 44.1kHz, 16-bit, .wav
Conversion complete.


Select :- Run Again = R, Exit Program = X:
```

## USAGE
1. Ensure to have "CMake" installed, its included in the first workflow option in [Ms Build Tools](https://download.visualstudio.microsoft.com/download/pr/94f523ce-4fb4-4d35-83ec-e749572654de/0aae346343e0f03dfe88496cbf3c6fdc2a212f617fd2960daa72727acb97c861/vs_BuildTools.exe), you do not need to select the other options, and yes that 1 option alone is a ~1.7GB download, but its likely other programs will require cMake at some point.
2. Run 'Setup-Install.bat" as Admin to, setup and install, libraries (heres where cMake gets used), and also create program folders. 
3. Place your MP3 files in the `./Input` directory.
4. Run 'Mp3ToSlWav.Bat', select 1 to load `main.py`. Converted files will be saved in the `./Output` directory.
5.  Run again as required by pressing `r`, or otherwise press `x` to exit. 

### REQUIREMENTS
- FFmpeg (installed by Setup-Install)
- Python 3.x
- Libraries in 'requirements.txt' (installed by Setup-Install)
- cMake

## DISCLAIMER
This software is subject to the terms in License.Txt, covering usage, distribution, and modifications. For full details on your rights and obligations, refer to License.Txt.
