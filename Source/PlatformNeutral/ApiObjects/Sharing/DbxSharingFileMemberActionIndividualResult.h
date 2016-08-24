///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DbxStoneSerializers.h"

@class DbxSharingAccessLevel;
@class DbxSharingFileMemberActionError;
@class DbxSharingFileMemberActionIndividualResult;

/// 
/// The DbxSharingFileMemberActionIndividualResult union.
/// 
@interface DbxSharingFileMemberActionIndividualResult : NSObject <DbxSerializable> 

typedef NS_ENUM(NSInteger, SharingFileMemberActionIndividualResultTag) {
    /// Member was successfully removed from this file. If AccessLevel is given,
    /// the member still has access via a parent shared folder.
    SharingFileMemberActionIndividualResultSuccess,
    /// User was not able to perform this action.
    SharingFileMemberActionIndividualResultMemberError,
};

- (nonnull instancetype)initWithSuccess:(DbxSharingAccessLevel * _Nullable)success;

- (nonnull instancetype)initWithMemberError:(DbxSharingFileMemberActionError * _Nonnull)memberError;

- (BOOL)isSuccess;

- (BOOL)isMemberError;

- (NSString * _Nonnull)getTagName;

- (NSString * _Nonnull)description;

/// Current state of the DbxSharingFileMemberActionIndividualResult union type.
@property (nonatomic) SharingFileMemberActionIndividualResultTag tag;
@property (nonatomic) DbxSharingAccessLevel * _Nullable success;
@property (nonatomic) DbxSharingFileMemberActionError * _Nonnull memberError;

@end


@interface DbxSharingFileMemberActionIndividualResultSerializer : NSObject 

+ (NSDictionary * _Nonnull)serialize:(DbxSharingFileMemberActionIndividualResult * _Nonnull)obj;

+ (DbxSharingFileMemberActionIndividualResult * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
