import speech_recognition as sr
import pyaudio    #errorpyaudio

r=sr.Recognizer()
mic=sr.Microphone()
harvard=sr.Microphone.list_microphone_names()
for source in harvard:
    print(source)
