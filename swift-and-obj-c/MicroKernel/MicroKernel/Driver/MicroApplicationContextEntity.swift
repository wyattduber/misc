import Foundation

internal class MainApplicationContextEntity: MainApplicationContext, DependencyContainer {
	
	internal var container: [DependencyKey: DependencyEntryProtocol1] = [:]

	internal func injectDependency<RegisterType, ResolveType: Dependency>(registerType: RegisterType.Type
																		  resolveType: ResolveType.Type) {
		insert(registerType: registerType, resolveType: resolveType)																  
	}

	internal func findDependency<RegisterType>(registerType: RegisterType.Type) -> Dependency? {

		return findInstance(registerType: registerType)

	}																	  

	internal func findDependencyType<RegisterType>(registerType: RegisterType.Type) -> Dependency.Type? {

		return findType(registerType: registerType)

	}

}