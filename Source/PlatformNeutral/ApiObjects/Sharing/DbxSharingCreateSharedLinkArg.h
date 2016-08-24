///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DbxStoneSerializers.h"

@class DbxSharingCreateSharedLinkArg;
@class DbxSharingPendingUploadMode;

/// 
/// The DbxSharingCreateSharedLinkArg struct.
/// 
@interface DbxSharingCreateSharedLinkArg : NSObject <DbxSerializable> 

/// The path to share.
@property (nonatomic, copy) NSString * _Nonnull path;
/// Whether to return a shortened URL.
@property (nonatomic, copy) NSNumber * _Nonnull shortUrl;
/// If it's okay to share a path that does not yet exist, set this to either
/// file in PendingUploadMode or folder in PendingUploadMode to indicate whether
/// to assume it's a file or folder.
@property (nonatomic) DbxSharingPendingUploadMode * _Nullable pendingUpload;

- (nonnull instancetype)initWithPath:(NSString * _Nonnull)path shortUrl:(NSNumber * _Nullable)shortUrl pendingUpload:(DbxSharingPendingUploadMode * _Nullable)pendingUpload;

- (nonnull instancetype)initWithPath:(NSString * _Nonnull)path;

- (NSString * _Nonnull)description;

@end


@interface DbxSharingCreateSharedLinkArgSerializer : NSObject 

+ (NSDictionary * _Nonnull)serialize:(DbxSharingCreateSharedLinkArg * _Nonnull)obj;

+ (DbxSharingCreateSharedLinkArg * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
