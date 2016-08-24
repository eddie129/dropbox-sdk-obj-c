///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DbxStoneSerializers.h"

@class DbxSharingInsufficientQuotaAmounts;
@class DbxSharingMountFolderError;
@class DbxSharingSharedFolderAccessError;

/// 
/// The DbxSharingMountFolderError union.
/// 
@interface DbxSharingMountFolderError : NSObject <DbxSerializable> 

typedef NS_ENUM(NSInteger, SharingMountFolderErrorTag) {
    /// (no description)
    SharingMountFolderErrorAccessError,
    /// Mounting would cause a shared folder to be inside another, which is
    /// disallowed.
    SharingMountFolderErrorInsideSharedFolder,
    /// The current user does not have enough space to mount the shared folder.
    SharingMountFolderErrorInsufficientQuota,
    /// The shared folder is already mounted.
    SharingMountFolderErrorAlreadyMounted,
    /// The current user does not have permission to perform this action.
    SharingMountFolderErrorNoPermission,
    /// The shared folder is not mountable. One example where this can occur is
    /// when the shared folder belongs within a team folder in the user's
    /// Dropbox.
    SharingMountFolderErrorNotMountable,
    /// (no description)
    SharingMountFolderErrorOther,
};

- (nonnull instancetype)initWithAccessError:(DbxSharingSharedFolderAccessError * _Nonnull)accessError;

- (nonnull instancetype)initWithInsideSharedFolder;

- (nonnull instancetype)initWithInsufficientQuota:(DbxSharingInsufficientQuotaAmounts * _Nonnull)insufficientQuota;

- (nonnull instancetype)initWithAlreadyMounted;

- (nonnull instancetype)initWithNoPermission;

- (nonnull instancetype)initWithNotMountable;

- (nonnull instancetype)initWithOther;

- (BOOL)isAccessError;

- (BOOL)isInsideSharedFolder;

- (BOOL)isInsufficientQuota;

- (BOOL)isAlreadyMounted;

- (BOOL)isNoPermission;

- (BOOL)isNotMountable;

- (BOOL)isOther;

- (NSString * _Nonnull)getTagName;

- (NSString * _Nonnull)description;

/// Current state of the DbxSharingMountFolderError union type.
@property (nonatomic) SharingMountFolderErrorTag tag;
@property (nonatomic) DbxSharingSharedFolderAccessError * _Nonnull accessError;
@property (nonatomic) DbxSharingInsufficientQuotaAmounts * _Nonnull insufficientQuota;

@end


@interface DbxSharingMountFolderErrorSerializer : NSObject 

+ (NSDictionary * _Nonnull)serialize:(DbxSharingMountFolderError * _Nonnull)obj;

+ (DbxSharingMountFolderError * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
