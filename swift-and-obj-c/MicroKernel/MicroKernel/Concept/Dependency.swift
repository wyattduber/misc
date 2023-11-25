import Foundation

// Summary: The generic protocol represent Dependency Concept

public protocol Dependency: Initable {

	/// Check Dependency is a singleton
	///
	/// - Returns: singleton flag
	static func isSingleton() -> Bool

	/// Dependency Singleton instance
	///
	/// - Returns: singleton instance
	static func singleton() -> Self

}