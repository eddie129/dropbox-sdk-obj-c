///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DbxStoneSerializers.h"

@class DbxSharingCreateSharedLinkWithSettingsArg;
@class DbxSharingSharedLinkSettings;

/// 
/// The DbxSharingCreateSharedLinkWithSettingsArg struct.
/// 
@interface DbxSharingCreateSharedLinkWithSettingsArg : NSObject <DbxSerializable> 

/// The path to be shared by the shared link
@property (nonatomic, copy) NSString * _Nonnull path;
/// The requested settings for the newly created shared link
@property (nonatomic) DbxSharingSharedLinkSettings * _Nullable settings;

- (nonnull instancetype)initWithPath:(NSString * _Nonnull)path settings:(DbxSharingSharedLinkSettings * _Nullable)settings;

- (nonnull instancetype)initWithPath:(NSString * _Nonnull)path;

- (NSString * _Nonnull)description;

@end


@interface DbxSharingCreateSharedLinkWithSettingsArgSerializer : NSObject 

+ (NSDictionary * _Nonnull)serialize:(DbxSharingCreateSharedLinkWithSettingsArg * _Nonnull)obj;

+ (DbxSharingCreateSharedLinkWithSettingsArg * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
