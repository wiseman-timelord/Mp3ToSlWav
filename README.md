# Mp3ToWav Converter
Status: Working.

## Description
Mp3ToWav Converter is a Python script that converts MP3 files to WAV format. This is particularly useful for script compatibility or for use in platforms like Second Life. The script not only converts the files but also normalizes the volume, converts them to mono, and sets the sample rate to 44.1 kHz and bit depth to 16-bit.

## Features
1. **Convert to WAV:** Converts MP3 files to WAV format.
2. **Volume Normalization:** Normalizes the volume of the audio files.
3. **Mono Conversion:** Converts stereo audio to mono.
4. **Sample Rate and Bit Depth:** Sets the sample rate to 44.1 kHz and bit depth to 16-bit.

## Usage
1. Place your MP3 files in the `./INPUT` directory.
2. Run the script.
3. Converted WAV files will be saved in the `./OUTPUT` directory.

**Notes:** Make sure you have the required Python packages installed. You can install them using pip: `pip install pydub`.

## Requirements
- Python 3.x
- `pydub` Python package
- FFmpeg executable in your system's PATH

## Disclaimer
Use at your own risk. This script modifies audio files. Always keep a backup of your original files. If you do not fully understand what the script does, do some research or do not use the script.
