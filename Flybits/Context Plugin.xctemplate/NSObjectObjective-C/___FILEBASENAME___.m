//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

#import "___FILEBASENAME___.h"

@implementation ___FILEBASENAMEASIDENTIFIER___

// MARK: - Constants

NSString * const <#Data Key#> = @"<#Data Key#>";

// MARK: - Properties

/// The category of context in which the data provided is stored, i.e. flybits.ctx.location
- (NSString *)contextCategory {
	return @"flybits.ctx.<#Context Type#>";
}

// MARK: - Lifecycle Functions

- (instancetype)init {
	self = [super init];
	if (self != nil) {
		self.pollFrequency = 60;
		self.uploadFrequency = 5 * 60; // 5 minutes
		self.priority = ContextDataPriorityAny;
	}
	return self;
}

// MARK: - ContextDataProvider Functions

/**
	Retrieves information required for this context plugin.

	- parameter completion: A completion called by the `ContextManager` to poll for the latest context data.
 */
- (void)dataWithCompletion:(void (^)(NSDictionary * _Nonnull data, NSError * _Nullable error))completion {
	NSDictionary *data = @{ <#Data Key#> : <#Data Value#> };

	// If an error is encountered retrieving data, pass it along; otherwise use nil.
	completion(data, <#Error#>);
}

@end
