//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

import FlybitsSDK

enum ___FILEBASENAMEASIDENTIFIER___: Requestable {

	case <#APIEndpoint1#>

	/// All requests are Custom requests.
	var requestType: FlybitsRequestType {
		return .Custom
	}

	/// Return the API's base URI. (i.e. http://api.flybits.com)
	var baseURI: String {
		return <#BaseURI#>
	}

	/// [OPTIONAL] Only required if the API requires custom headers.
	var headers: [String : String] {
		return [:]
	}

	/// [OPTIONAL] Only required if the API does not use POST for all endpoints.
	var method: HTTPMethod {
		return .GET
	}

	/// [OPTIONAL] Only required if the API does not use JSON for encoding.
	var encoding: HTTPEncoding {
		return .URL
	}

	/// Paths for the endpoints defined above.
	var path: String {
		switch self {
		case <#APIEndpoint1#>:
			return "/<#APIEndpoint1#>"
		}
	}

	/// [OPTIONAL] Only required if the API requires custom parameters.
	var parameters: [String : AnyObject]? {
		return [:]
	}

	/// [OPTIONAL] Only required if the API requires custom parameters in an array format.
	var parametersArray: [[String : AnyObject]]? {
		return [[:]]
	}

	/// [ADVANCED] An NSURLRequest is constructed automatically using the default implementation, only override in special cases.
	// var urlRequest: NSURLRequest
}