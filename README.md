# AppleWatchJSONSender
Sends json from a text input field to an AppleWatch. Actually, also sends other arbitrary strings to the watch from a text input. Might add an option to show old comms. 

<p><a href="url"><img src="https://github.com/krypted/AppleWatchJSONSender/blob/main/Images/Communication-Demo.gif" height="600" width="420" ></a></p>




## Notes on using the watch in testing and simulation environments
Don't forget to pair the watch simulator with the device being run. If you don't see the app...

<a href="url"><img src="https://github.com/krypted/AppleWatchJSONSender/blob/main/Images/Nowatch.png" align="left" height="600" width="480" ></a>

I usually start the iPhone simulator first and then in Xcode go to Windows -> Devices and Sumulators. From there, if I click on the iPhone I just started I can use the plus sign to pair a watch interface with it. I'll call it something with the name of the app I'm testing. Then I'll quit Xcode and the simulator. Seems better that way, even though it's not absolutely necessary. Then fire up the project, run the iPhone then under build targets select the watch extension and when it opens the app and watch apps should be able to communicate. 

If using an iPhone or iPad as the build target then just make sure the Watch app opens and shows the device. The extension should do the rest. If using a Mac, it's probably not gonna' work. Note that there's no Watch app in the /Applications directory on a Mac. At that point, APNs comms are gonna' be the way to go, which this project doesn't cover (yet at least).

## What's next?
Working on a branch to do persistent storage of the json documents on the watch that were sent from the app. No promises.

There's also no concept of type safety. So by design the app can send a string of "Hello World" or some yaml instead. Might add that.

<p><a href="url"><img src="https://github.com/krypted/AppleWatchJSONSender/blob/main/Images/DemoScreen.png" align="left" height="600" width="480" ></a></p>
