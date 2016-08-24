///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DbxStoneSerializers.h"

@class DbxSharingGetFileMetadataIndividualResult;
@class DbxSharingSharedFileMetadata;
@class DbxSharingSharingFileAccessError;

/// 
/// The DbxSharingGetFileMetadataIndividualResult union.
/// 
@interface DbxSharingGetFileMetadataIndividualResult : NSObject <DbxSerializable> 

typedef NS_ENUM(NSInteger, SharingGetFileMetadataIndividualResultTag) {
    /// The result for this file if it was successful.
    SharingGetFileMetadataIndividualResultMetadata,
    /// The result for this file if it was an error.
    SharingGetFileMetadataIndividualResultAccessError,
    /// (no description)
    SharingGetFileMetadataIndividualResultOther,
};

- (nonnull instancetype)initWithMetadata:(DbxSharingSharedFileMetadata * _Nonnull)metadata;

- (nonnull instancetype)initWithAccessError:(DbxSharingSharingFileAccessError * _Nonnull)accessError;

- (nonnull instancetype)initWithOther;

- (BOOL)isMetadata;

- (BOOL)isAccessError;

- (BOOL)isOther;

- (NSString * _Nonnull)getTagName;

- (NSString * _Nonnull)description;

/// Current state of the DbxSharingGetFileMetadataIndividualResult union type.
@property (nonatomic) SharingGetFileMetadataIndividualResultTag tag;
@property (nonatomic) DbxSharingSharedFileMetadata * _Nonnull metadata;
@property (nonatomic) DbxSharingSharingFileAccessError * _Nonnull accessError;

@end


@interface DbxSharingGetFileMetadataIndividualResultSerializer : NSObject 

+ (NSDictionary * _Nonnull)serialize:(DbxSharingGetFileMetadataIndividualResult * _Nonnull)obj;

+ (DbxSharingGetFileMetadataIndividualResult * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
