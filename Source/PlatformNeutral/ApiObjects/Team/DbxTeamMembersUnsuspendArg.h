///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DbxStoneSerializers.h"

@class DbxTeamMembersUnsuspendArg;
@class DbxTeamUserSelectorArg;

/// 
/// The DbxTeamMembersUnsuspendArg struct.
/// 
/// Exactly one of team_member_id, email, or external_id must be provided to
/// identify the user account.
/// 
@interface DbxTeamMembersUnsuspendArg : NSObject <DbxSerializable> 

/// Identity of user to unsuspend.
@property (nonatomic) DbxTeamUserSelectorArg * _Nonnull user;

- (nonnull instancetype)initWithUser:(DbxTeamUserSelectorArg * _Nonnull)user;

- (NSString * _Nonnull)description;

@end


@interface DbxTeamMembersUnsuspendArgSerializer : NSObject 

+ (NSDictionary * _Nonnull)serialize:(DbxTeamMembersUnsuspendArg * _Nonnull)obj;

+ (DbxTeamMembersUnsuspendArg * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
