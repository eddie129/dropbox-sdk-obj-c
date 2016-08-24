///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DbxStoneSerializers.h"
#import "DbxTeamMembersDeactivateError.h"

@class DbxTeamMembersUnsuspendError;

/// 
/// The DbxTeamMembersUnsuspendError union.
/// 
@interface DbxTeamMembersUnsuspendError : NSObject <DbxSerializable> 

typedef NS_ENUM(NSInteger, TeamMembersUnsuspendErrorTag) {
    /// No matching user found. The provided team_member_id, email, or
    /// external_id does not exist on this team.
    TeamMembersUnsuspendErrorUserNotFound,
    /// The user is not a member of the team.
    TeamMembersUnsuspendErrorUserNotInTeam,
    /// (no description)
    TeamMembersUnsuspendErrorOther,
    /// The user is unsuspended, so it cannot be unsuspended again.
    TeamMembersUnsuspendErrorUnsuspendNonSuspendedMember,
    /// Team is full. The organization has no available licenses.
    TeamMembersUnsuspendErrorTeamLicenseLimit,
};

- (nonnull instancetype)initWithUserNotFound;

- (nonnull instancetype)initWithUserNotInTeam;

- (nonnull instancetype)initWithOther;

- (nonnull instancetype)initWithUnsuspendNonSuspendedMember;

- (nonnull instancetype)initWithTeamLicenseLimit;

- (BOOL)isUserNotFound;

- (BOOL)isUserNotInTeam;

- (BOOL)isOther;

- (BOOL)isUnsuspendNonSuspendedMember;

- (BOOL)isTeamLicenseLimit;

- (NSString * _Nonnull)getTagName;

- (NSString * _Nonnull)description;

/// Current state of the DbxTeamMembersUnsuspendError union type.
@property (nonatomic) TeamMembersUnsuspendErrorTag tag;

@end


@interface DbxTeamMembersUnsuspendErrorSerializer : NSObject 

+ (NSDictionary * _Nonnull)serialize:(DbxTeamMembersUnsuspendError * _Nonnull)obj;

+ (DbxTeamMembersUnsuspendError * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
