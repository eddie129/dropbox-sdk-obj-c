///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DbxStoneSerializers.h"
#import "DbxTeamCommonGroupSummary.h"

@class DbxSharingGroupInfo;
@class DbxTeamCommonGroupManagementType;
@class DbxTeamCommonGroupType;

/// 
/// The DbxSharingGroupInfo struct.
/// 
/// The information about a group. Groups is a way to manage a list of users
/// who need same access permission to the shared folder.
/// 
@interface DbxSharingGroupInfo : DbxTeamCommonGroupSummary <DbxSerializable> 

/// The type of group.
@property (nonatomic) DbxTeamCommonGroupType * _Nonnull groupType;
/// If the current user is an owner of the group.
@property (nonatomic, copy) NSNumber * _Nonnull isOwner;
/// If the group is owned by the current user's team.
@property (nonatomic, copy) NSNumber * _Nonnull sameTeam;

- (nonnull instancetype)initWithGroupName:(NSString * _Nonnull)groupName groupId:(NSString * _Nonnull)groupId groupManagementType:(DbxTeamCommonGroupManagementType * _Nonnull)groupManagementType groupType:(DbxTeamCommonGroupType * _Nonnull)groupType isOwner:(NSNumber * _Nonnull)isOwner sameTeam:(NSNumber * _Nonnull)sameTeam groupExternalId:(NSString * _Nullable)groupExternalId memberCount:(NSNumber * _Nullable)memberCount;

- (nonnull instancetype)initWithGroupName:(NSString * _Nonnull)groupName groupId:(NSString * _Nonnull)groupId groupManagementType:(DbxTeamCommonGroupManagementType * _Nonnull)groupManagementType groupType:(DbxTeamCommonGroupType * _Nonnull)groupType isOwner:(NSNumber * _Nonnull)isOwner sameTeam:(NSNumber * _Nonnull)sameTeam;

- (NSString * _Nonnull)description;

@end


@interface DbxSharingGroupInfoSerializer : NSObject 

+ (NSDictionary * _Nonnull)serialize:(DbxSharingGroupInfo * _Nonnull)obj;

+ (DbxSharingGroupInfo * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
