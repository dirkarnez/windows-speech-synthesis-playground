C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -command "Add-Type -AssemblyName System.Speech;$speak = New-Object System.Speech.Synthesis.SpeechSynthesizer;$voiceoptions = $speak.GetInstalledVoices(\"en-US\");$voice = $voiceoptions[$voicenum % $voiceoptions.count];$speak.SelectVoice($voice.VoiceInfo.Name);$speak.Rate=\"0\";$speak.Speak(\"dfgdfgdfgd\");"


#include <cstdlib>
#include <fstream>
#include <iostream>
 
int main()
{
    std::system("ls -l >test.txt"); // executes the UNIX command "ls -l >test.txt"
    std::cout << std::ifstream("test.txt").rdbuf();
}
