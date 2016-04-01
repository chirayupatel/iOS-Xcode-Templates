//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

import FlybitsSDK

public class ___FILEBASENAMEASIDENTIFIER___: ___VARIABLE_cocoaTouchSubclass___, ContextDataProvider {

    // MARK: - Constants

	struct Constants {
		static let <#Data Key#> = "<#Data Key#>"
	}

    // MARK: - Properties

	/// The category of context in which the data provided is stored, i.e. flybits.ctx.location
	public let contextCategory: String = "flybits.ctx.<#Context Type#>"

	/**
        The frequency at which this context plugin is polled for data.
     
        *NOTE: nil implies this Context Plugin will push data to the `ContextManager`*
     */
    public var pollFrequency: Int32? = 60
    
    /**
        The frequency at which this context plugin will upload data.
     
        *NOTE: The minimum value across all context plugins will determine the upload rate*
     */
    public var uploadFrequency: Int32 = 5 * 60 // 5 minutes
    
    /// Whether or not this plugin will broadcast on any network or WiFi only.
    public var priority: ContextDataPriority = .Any

    // MARK: - ContextDataProvider Functions

    /**
        Retrieves battery information including percentage and whether or not the device is charging.

        - parameter completion: A completion called by the `ContextManager` to update the latest data.
     */
    public func dataWithCompletion(completion: ([String : AnyObject], error: NSError?) -> Void) {
		let data: [String : AnyObject] = [
			Constants.<#Data Key#> : <#Data Value#>
		]

		// If an error is encountered retrieving data, pass it along; otherwise use nil.
		completion(data, error: <#Error#>)
	}
}
