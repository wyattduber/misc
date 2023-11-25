import Foundation

public protocol MainApplication {

	func boot()

	func applicationInjectDependency(_mainContext: MainApplicationContext) -> MainApplicationContext

}