///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DbxStoneSerializers.h"

@class DbxTeamListMembersDevicesArg;

/// 
/// The DbxTeamListMembersDevicesArg struct.
/// 
@interface DbxTeamListMembersDevicesArg : NSObject <DbxSerializable> 

/// At the first call to the devicesListMembersDevices the cursor shouldn't be
/// passed. Then, if the result of the call includes a cursor, the following
/// requests should include the received cursors in order to receive the next
/// sub list of team devices
@property (nonatomic, copy) NSString * _Nullable cursor;
/// Whether to list web sessions of the team members
@property (nonatomic, copy) NSNumber * _Nonnull includeWebSessions;
/// Whether to list desktop clients of the team members
@property (nonatomic, copy) NSNumber * _Nonnull includeDesktopClients;
/// Whether to list mobile clients of the team members
@property (nonatomic, copy) NSNumber * _Nonnull includeMobileClients;

- (nonnull instancetype)initWithCursor:(NSString * _Nullable)cursor includeWebSessions:(NSNumber * _Nullable)includeWebSessions includeDesktopClients:(NSNumber * _Nullable)includeDesktopClients includeMobileClients:(NSNumber * _Nullable)includeMobileClients;

- (nonnull instancetype)init;

- (NSString * _Nonnull)description;

@end


@interface DbxTeamListMembersDevicesArgSerializer : NSObject 

+ (NSDictionary * _Nonnull)serialize:(DbxTeamListMembersDevicesArg * _Nonnull)obj;

+ (DbxTeamListMembersDevicesArg * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
