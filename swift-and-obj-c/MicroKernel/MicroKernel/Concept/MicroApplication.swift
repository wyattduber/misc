import Foundation

public protocol MicroApplication: Initable {

	static func appId() -> String

	func applicationInjectDependency(context: MicroApplicationContext) -> MicroApplicationContext

	func applicationWillStartLaunching(_ application: MicroApplication,
									   launchOptions: [MicroApplicationLaunchOptionsKey: Any]?)
	func applicationDidFinishLaunching(_ application: MicroApplication)

	func applicationWillResignActive(_ application: MicroApplication)

	func applicationDidResignActive(_ application: MicroApplication)

	func applicationWillBecomeActive(_ application: MicroApplication)

	func applicationDidBecomeActive(_ application: MicroApplication)

	func applicationWillTerminate(_ application: MicroApplication)

	func applicationDidTerminate(_ application: MicroApplication)

}

public extension MicroApplication {
	
	public func register(subscriber: AnyObject,
						 eventName: String,
						 handler: @escaping (() -> Void)) {
		
		
	}


}