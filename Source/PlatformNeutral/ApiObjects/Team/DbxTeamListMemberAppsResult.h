///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DbxStoneSerializers.h"

@class DbxTeamApiApp;
@class DbxTeamListMemberAppsResult;

/// 
/// The DbxTeamListMemberAppsResult struct.
/// 
@interface DbxTeamListMemberAppsResult : NSObject <DbxSerializable> 

/// List of third party applications linked by this team member
@property (nonatomic) NSArray<DbxTeamApiApp *> * _Nonnull linkedApiApps;

- (nonnull instancetype)initWithLinkedApiApps:(NSArray<DbxTeamApiApp *> * _Nonnull)linkedApiApps;

- (NSString * _Nonnull)description;

@end


@interface DbxTeamListMemberAppsResultSerializer : NSObject 

+ (NSDictionary * _Nonnull)serialize:(DbxTeamListMemberAppsResult * _Nonnull)obj;

+ (DbxTeamListMemberAppsResult * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
