import speech_recognition as sr
print(sr.__version__)
r=sr.Recognizer()
harvard = sr.AudioFile('audio.wav')
with harvard as source:
    audio = r.record(source)
    print(type(audio))
    print(r.recognize_google(audio,language='hi-HI'))
    print(r.recognize_google(audio))
