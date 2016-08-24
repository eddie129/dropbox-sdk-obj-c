///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DbxStoneSerializers.h"

@class DbxTeamListMembersAppsArg;

/// 
/// The DbxTeamListMembersAppsArg struct.
/// 
/// Arguments for linkedAppsListMembersLinkedApps.
/// 
@interface DbxTeamListMembersAppsArg : NSObject <DbxSerializable> 

/// At the first call to the linkedAppsListMembersLinkedApps the cursor
/// shouldn't be passed. Then, if the result of the call includes a cursor, the
/// following requests should include the received cursors in order to receive
/// the next sub list of the team applications
@property (nonatomic, copy) NSString * _Nullable cursor;

- (nonnull instancetype)initWithCursor:(NSString * _Nullable)cursor;

- (nonnull instancetype)init;

- (NSString * _Nonnull)description;

@end


@interface DbxTeamListMembersAppsArgSerializer : NSObject 

+ (NSDictionary * _Nonnull)serialize:(DbxTeamListMembersAppsArg * _Nonnull)obj;

+ (DbxTeamListMembersAppsArg * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
