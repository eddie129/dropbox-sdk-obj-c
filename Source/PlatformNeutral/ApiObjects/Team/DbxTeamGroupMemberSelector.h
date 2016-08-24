///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DbxStoneSerializers.h"

@class DbxTeamGroupMemberSelector;
@class DbxTeamGroupSelector;
@class DbxTeamUserSelectorArg;

/// 
/// The DbxTeamGroupMemberSelector struct.
/// 
/// Argument for selecting a group and a single user.
/// 
@interface DbxTeamGroupMemberSelector : NSObject <DbxSerializable> 

/// Specify a group.
@property (nonatomic) DbxTeamGroupSelector * _Nonnull group;
/// Identity of a user that is a member of group.
@property (nonatomic) DbxTeamUserSelectorArg * _Nonnull user;

- (nonnull instancetype)initWithGroup:(DbxTeamGroupSelector * _Nonnull)group user:(DbxTeamUserSelectorArg * _Nonnull)user;

- (NSString * _Nonnull)description;

@end


@interface DbxTeamGroupMemberSelectorSerializer : NSObject 

+ (NSDictionary * _Nonnull)serialize:(DbxTeamGroupMemberSelector * _Nonnull)obj;

+ (DbxTeamGroupMemberSelector * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
