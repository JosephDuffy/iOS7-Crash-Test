# iOS7-Crash-Test

A simple application used to demonstate a crash when the applcation is run on iOS 7. The problem does not occur on the latest (as of writing) Swift 2.2 developer stapshot toolchain. This repo was created in response to [my question on StackOverflow](https://stackoverflow.com/questions/35260337/debugging-exc-bad-access-on-creation-of-empty-dictionary-using-swift-on-ios-7).

## How To Recreate

To recreat the crash, simply run the project. To prevent crash, comment out line 18 in `AppDelegate` or line 13 in `InAppPurchaseManager`.

The app seems to crash on the first piece of code that allocates something. For example, if another line of code is added to the AppDelegate, it crashes on that line:

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        let _: [String : AnyObject] = [:] // Crash here

        // Commenting out this line will prevent the crash
        InAppPurchaseManager().userHasPurchasedAllInAppPurchases()

        return true
    }

However, when using this code, commenting out either or both of the lines does not prevent the crash.
