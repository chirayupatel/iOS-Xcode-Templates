//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

@import FlybitsSDK;

@interface ___FILEBASENAMEASIDENTIFIER___: ___VARIABLE_cocoaTouchSubclass___ <ContextDataProvider>

@property (nonatomic, copy, readonly) NSString * _Nonnull contextCategory;
@property (nonatomic, copy) NSNumber * _Nullable pollFrequency;
@property (nonatomic, assign) NSInteger uploadFrequency;
@property (nonatomic, assign) ContextDataPriority priority;

- (void)dataWithCompletion:(void (^ _Nonnull)(NSDictionary * _Nonnull data, NSError * _Nullable error))completion;

@end
