# Script: main.py

# imports
from colorama import init, Fore, Back, Style
from pydub import AudioSegment
import os, time, sys

# Directories for input and output
script_dir = os.path.dirname(os.path.abspath(__file__))
input_directory = os.path.join(script_dir, "Input")
output_directory = os.path.join(script_dir, "Output")

# Initialization
init(autoreset=False)
print(Fore.WHITE + Back.LIGHTBLACK_EX + Style.BRIGHT, end="")
os.system('cls')
print("\nMp3ToSlWav Started...\n\n")

def process_files():
    print("Beginning Conversion...")
    time.sleep(2)  # Wait for 2 seconds

    for filename in os.listdir(input_directory):
        if filename.lower().endswith(".mp3"):
            file_path = os.path.join(input_directory, filename)
            wav_path = os.path.join(output_directory, filename.replace(".mp3", ".wav"))

            audio = AudioSegment.from_file(file_path, format="mp3")
            audio = audio.normalize()
            audio = audio.set_channels(1)
            audio = audio.set_frame_rate(44100)
            audio = audio.set_sample_width(2)
            audio.export(wav_path, format="wav")

            # Print conversion message and flush immediately
            print(f"{filename} > norm, mono, 44.1kHz, 16-bit, .wav", flush=True)
            time.sleep(1)  # Delay for 1 second between processing files

    print("Conversion complete.")


def user_choice():
    while True:
        sys.stdout.write("\n\nSelect:- Run Again = R, Exit Program = X: ")  # Explicitly write to stdout
        sys.stdout.flush()  # Ensure the prompt is displayed immediately
        choice = input().lower()  # Capture the input
        if choice == 'x':
            print("\n\n...Exiting Mp3ToSlWav.\n")
            sys.exit(0)  # Exit the program
        elif choice == 'r':
            break  # Break the loop to rerun the process
        else:
            print("Invalid choice. Please select 'R' to run again or 'X' to exit.")

while True:  # Start of loop
    process_files()
    user_choice()
