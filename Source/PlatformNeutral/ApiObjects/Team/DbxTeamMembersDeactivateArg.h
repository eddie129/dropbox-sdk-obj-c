///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DbxStoneSerializers.h"

@class DbxTeamMembersDeactivateArg;
@class DbxTeamUserSelectorArg;

/// 
/// The DbxTeamMembersDeactivateArg struct.
/// 
/// Exactly one of team_member_id, email, or external_id must be provided to
/// identify the user account.
/// 
@interface DbxTeamMembersDeactivateArg : NSObject <DbxSerializable> 

/// Identity of user to remove/suspend.
@property (nonatomic) DbxTeamUserSelectorArg * _Nonnull user;
/// If provided, controls if the user's data will be deleted on their linked
/// devices.
@property (nonatomic, copy) NSNumber * _Nonnull wipeData;

- (nonnull instancetype)initWithUser:(DbxTeamUserSelectorArg * _Nonnull)user wipeData:(NSNumber * _Nullable)wipeData;

- (nonnull instancetype)initWithUser:(DbxTeamUserSelectorArg * _Nonnull)user;

- (NSString * _Nonnull)description;

@end


@interface DbxTeamMembersDeactivateArgSerializer : NSObject 

+ (NSDictionary * _Nonnull)serialize:(DbxTeamMembersDeactivateArg * _Nonnull)obj;

+ (DbxTeamMembersDeactivateArg * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
