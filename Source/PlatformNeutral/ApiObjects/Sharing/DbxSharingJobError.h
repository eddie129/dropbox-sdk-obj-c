///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DbxStoneSerializers.h"

@class DbxSharingJobError;
@class DbxSharingRelinquishFolderMembershipError;
@class DbxSharingRemoveFolderMemberError;
@class DbxSharingUnshareFolderError;

/// 
/// The DbxSharingJobError union.
/// 
/// Error occurred while performing an asynchronous job from unshareFolder or
/// removeFolderMember.
/// 
@interface DbxSharingJobError : NSObject <DbxSerializable> 

typedef NS_ENUM(NSInteger, SharingJobErrorTag) {
    /// Error occurred while performing unshareFolder action.
    SharingJobErrorUnshareFolderError,
    /// Error occurred while performing removeFolderMember action.
    SharingJobErrorRemoveFolderMemberError,
    /// Error occurred while performing relinquishFolderMembership action.
    SharingJobErrorRelinquishFolderMembershipError,
    /// (no description)
    SharingJobErrorOther,
};

- (nonnull instancetype)initWithUnshareFolderError:(DbxSharingUnshareFolderError * _Nonnull)unshareFolderError;

- (nonnull instancetype)initWithRemoveFolderMemberError:(DbxSharingRemoveFolderMemberError * _Nonnull)removeFolderMemberError;

- (nonnull instancetype)initWithRelinquishFolderMembershipError:(DbxSharingRelinquishFolderMembershipError * _Nonnull)relinquishFolderMembershipError;

- (nonnull instancetype)initWithOther;

- (BOOL)isUnshareFolderError;

- (BOOL)isRemoveFolderMemberError;

- (BOOL)isRelinquishFolderMembershipError;

- (BOOL)isOther;

- (NSString * _Nonnull)getTagName;

- (NSString * _Nonnull)description;

/// Current state of the DbxSharingJobError union type.
@property (nonatomic) SharingJobErrorTag tag;
@property (nonatomic) DbxSharingUnshareFolderError * _Nonnull unshareFolderError;
@property (nonatomic) DbxSharingRemoveFolderMemberError * _Nonnull removeFolderMemberError;
@property (nonatomic) DbxSharingRelinquishFolderMembershipError * _Nonnull relinquishFolderMembershipError;

@end


@interface DbxSharingJobErrorSerializer : NSObject 

+ (NSDictionary * _Nonnull)serialize:(DbxSharingJobError * _Nonnull)obj;

+ (DbxSharingJobError * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
