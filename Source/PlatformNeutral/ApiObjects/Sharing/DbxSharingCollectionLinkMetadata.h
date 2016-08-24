///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DbxStoneSerializers.h"
#import "DbxSharingLinkMetadata.h"

@class DbxSharingCollectionLinkMetadata;
@class DbxSharingVisibility;

/// 
/// The DbxSharingCollectionLinkMetadata struct.
/// 
/// Metadata for a collection-based shared link.
/// 
@interface DbxSharingCollectionLinkMetadata : DbxSharingLinkMetadata <DbxSerializable> 

- (nonnull instancetype)initWithUrl:(NSString * _Nonnull)url visibility:(DbxSharingVisibility * _Nonnull)visibility expires:(NSDate * _Nullable)expires;

- (nonnull instancetype)initWithUrl:(NSString * _Nonnull)url visibility:(DbxSharingVisibility * _Nonnull)visibility;

- (NSString * _Nonnull)description;

@end


@interface DbxSharingCollectionLinkMetadataSerializer : NSObject 

+ (NSDictionary * _Nonnull)serialize:(DbxSharingCollectionLinkMetadata * _Nonnull)obj;

+ (DbxSharingCollectionLinkMetadata * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
