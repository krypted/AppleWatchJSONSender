# AppleWatchJSONSender
Sends json from a text input field to an AppleWatch. Actually, also sends other arbitrary strings to the watch from a text input. Might add an option to show old comms. 

# Notes on using the watch in simulation environments
Don't forget to pair the watch simulator with the device being run. I usually start the iPhone simulator first and then in Xcode go to Windows -> Devices and Sumulators. From there, if I click on the iPhone I just started I can use the plus sign to pair a watch interface with it. I'll call it something with the name of the app I'm testing. Then I'll quit Xcode and the simulator. Seems better that way, even though it's not absolutely necessary. Then fire up the project, run the iPhone then under build targets select the watch extension and when it opens the app and watch apps should be able to communicate. 
