# Mp3ToSlWav

### Status:
Working. Revisited on 2024/01/28, wait for the update.  

## Description
Mp3ToWav Converter is a Python script that converts MP3 files to WAV format. This is particularly useful for, low resource use or scripts or Second Life. The script not only converts the files but also normalizes the volume, converts them to mono, and sets the sample rate to 44.1 kHz and bit depth to 16-bit, this makes the resulting files HIGHLY compatible. There are no menus, upon being activated it processes all files from, Input into Output, simples.

### Features
- **Convert to WAV:** Converts MP3 files to WAV format.
- **Volume Normalization:** Normalizes the volume of the audio files.
- **Mono Conversion:** Converts stereo audio to mono.
- **Sample Rate and Bit Depth:** Sets the sample rate to 44.1 kHz and bit depth to 16-bit.

## Usage.
1. Ensure to have "CMake" installed, its included in the first workflow option in [Ms Build Tools](https://download.visualstudio.microsoft.com/download/pr/94f523ce-4fb4-4d35-83ec-e749572654de/0aae346343e0f03dfe88496cbf3c6fdc2a212f617fd2960daa72727acb97c861/vs_BuildTools.exe), you do not need to select the other options, and yes that 1 option alone is a ~1.7GB download, but its likely other programs will require cMake at some point.
2. Run 'Setup-Install.bat" as Admin to, setup and install, libraries (heres where cMake gets used), and also create program folders. 
3. Place your MP3 files in the `./Input` directory.
4. Run 'Mp3ToWav.bat', converted files will be saved in the `./Output` directory.

### Requirements
- FFmpeg (installed by Setup-Install)
- Python 3.x
- Libraries in 'requirements.txt' (installed by Setup-Install)
- cMake

## DISCLAIMER
This software is subject to the terms in License.Txt, covering usage, distribution, and modifications. For full details on your rights and obligations, refer to License.Txt.
