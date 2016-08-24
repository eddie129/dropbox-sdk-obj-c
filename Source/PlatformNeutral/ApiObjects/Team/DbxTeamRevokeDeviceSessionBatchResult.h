///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DbxStoneSerializers.h"

@class DbxTeamRevokeDeviceSessionBatchResult;
@class DbxTeamRevokeDeviceSessionStatus;

/// 
/// The DbxTeamRevokeDeviceSessionBatchResult struct.
/// 
@interface DbxTeamRevokeDeviceSessionBatchResult : NSObject <DbxSerializable> 

/// (no description)
@property (nonatomic) NSArray<DbxTeamRevokeDeviceSessionStatus *> * _Nonnull revokeDevicesStatus;

- (nonnull instancetype)initWithRevokeDevicesStatus:(NSArray<DbxTeamRevokeDeviceSessionStatus *> * _Nonnull)revokeDevicesStatus;

- (NSString * _Nonnull)description;

@end


@interface DbxTeamRevokeDeviceSessionBatchResultSerializer : NSObject 

+ (NSDictionary * _Nonnull)serialize:(DbxTeamRevokeDeviceSessionBatchResult * _Nonnull)obj;

+ (DbxTeamRevokeDeviceSessionBatchResult * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
