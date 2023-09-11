from pydub import AudioSegment
import os

# Directory containing the .mp3 files
input_directory = "./INPUT"

# Directory to save the .wav files
output_directory = "./OUTPUT"

# Create output directory if it doesn't exist
if not os.path.exists(output_directory):
    os.makedirs(output_directory)

# Loop through each .mp3 file in the directory
for filename in os.listdir(input_directory):
    if filename.endswith(".mp3"):
        mp3_path = os.path.join(input_directory, filename)
        wav_path = os.path.join(output_directory, filename.replace(".mp3", ".wav"))

        # Read the .mp3 file
        audio = AudioSegment.from_mp3(mp3_path)

        # Normalize volume
        audio = audio.normalize()

        # Convert to mono
        audio = audio.set_channels(1)

        # Convert sample rate to 44100 Hz
        audio = audio.set_frame_rate(44100)

        # Convert bit depth to 16
        audio = audio.set_sample_width(2)

        # Export as .wav
        audio.export(wav_path, format="wav")

        print(f"Converted {filename} to normalized, mono, 44.1 kHz, 16-bit .wav without metadata")

print("Conversion complete.")
