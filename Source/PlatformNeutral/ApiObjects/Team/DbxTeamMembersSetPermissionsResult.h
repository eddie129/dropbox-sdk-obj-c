///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DbxStoneSerializers.h"

@class DbxTeamAdminTier;
@class DbxTeamMembersSetPermissionsResult;

/// 
/// The DbxTeamMembersSetPermissionsResult struct.
/// 
@interface DbxTeamMembersSetPermissionsResult : NSObject <DbxSerializable> 

/// The member ID of the user to which the change was applied.
@property (nonatomic, copy) NSString * _Nonnull teamMemberId;
/// The role after the change.
@property (nonatomic) DbxTeamAdminTier * _Nonnull role;

- (nonnull instancetype)initWithTeamMemberId:(NSString * _Nonnull)teamMemberId role:(DbxTeamAdminTier * _Nonnull)role;

- (NSString * _Nonnull)description;

@end


@interface DbxTeamMembersSetPermissionsResultSerializer : NSObject 

+ (NSDictionary * _Nonnull)serialize:(DbxTeamMembersSetPermissionsResult * _Nonnull)obj;

+ (DbxTeamMembersSetPermissionsResult * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
