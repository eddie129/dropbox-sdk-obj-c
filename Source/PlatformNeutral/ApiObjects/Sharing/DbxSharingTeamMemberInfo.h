///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DbxStoneSerializers.h"

@class DbxSharingTeamMemberInfo;
@class DbxUsersTeam;

/// 
/// The DbxSharingTeamMemberInfo struct.
/// 
/// Information about a team member.
/// 
@interface DbxSharingTeamMemberInfo : NSObject <DbxSerializable> 

/// Information about the member's team
@property (nonatomic) DbxUsersTeam * _Nonnull teamInfo;
/// The display name of the user.
@property (nonatomic, copy) NSString * _Nonnull displayName;
/// ID of user as a member of a team. This field will only be present if the
/// member is in the same team as current user.
@property (nonatomic, copy) NSString * _Nullable memberId;

- (nonnull instancetype)initWithTeamInfo:(DbxUsersTeam * _Nonnull)teamInfo displayName:(NSString * _Nonnull)displayName memberId:(NSString * _Nullable)memberId;

- (nonnull instancetype)initWithTeamInfo:(DbxUsersTeam * _Nonnull)teamInfo displayName:(NSString * _Nonnull)displayName;

- (NSString * _Nonnull)description;

@end


@interface DbxSharingTeamMemberInfoSerializer : NSObject 

+ (NSDictionary * _Nonnull)serialize:(DbxSharingTeamMemberInfo * _Nonnull)obj;

+ (DbxSharingTeamMemberInfo * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
