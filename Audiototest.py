import speech_recognition as sr
print(sr.__version__)
r=sr.Recognizer()
harvard = sr.AudioFile('02 - Dilbar Dilbar - Neha Kakkar Full Mp3 Songs(Zgana.in).wav')   #wav not mp3
with harvard as source:
    audio = r.record(source)
    print(type(audio))
    print(r.recognize_google(audio,language='hi-HI'))
    print(r.recognize_google(audio))
