import Foundation

public protocol MainApplicationContext {

	func injectDependency<RegisterType, ResolveType: Dependency>(registerType: RegisterType.Type,
																 resolveType: ResolveType.Type)
	func findDependency<RegisterType>(registerType: RegisterType.Type) -> Dependency?
	
}