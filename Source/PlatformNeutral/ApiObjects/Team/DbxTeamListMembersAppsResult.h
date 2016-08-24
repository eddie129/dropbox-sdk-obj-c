///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DbxStoneSerializers.h"

@class DbxTeamListMembersAppsResult;
@class DbxTeamMemberLinkedApps;

/// 
/// The DbxTeamListMembersAppsResult struct.
/// 
/// Information returned by linkedAppsListMembersLinkedApps.
/// 
@interface DbxTeamListMembersAppsResult : NSObject <DbxSerializable> 

/// The linked applications of each member of the team
@property (nonatomic) NSArray<DbxTeamMemberLinkedApps *> * _Nonnull apps;
/// If true, then there are more apps available. Pass the cursor to
/// linkedAppsListMembersLinkedApps to retrieve the rest.
@property (nonatomic, copy) NSNumber * _Nonnull hasMore;
/// Pass the cursor into linkedAppsListMembersLinkedApps to receive the next sub
/// list of team's applications.
@property (nonatomic, copy) NSString * _Nullable cursor;

- (nonnull instancetype)initWithApps:(NSArray<DbxTeamMemberLinkedApps *> * _Nonnull)apps hasMore:(NSNumber * _Nonnull)hasMore cursor:(NSString * _Nullable)cursor;

- (nonnull instancetype)initWithApps:(NSArray<DbxTeamMemberLinkedApps *> * _Nonnull)apps hasMore:(NSNumber * _Nonnull)hasMore;

- (NSString * _Nonnull)description;

@end


@interface DbxTeamListMembersAppsResultSerializer : NSObject 

+ (NSDictionary * _Nonnull)serialize:(DbxTeamListMembersAppsResult * _Nonnull)obj;

+ (DbxTeamListMembersAppsResult * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
