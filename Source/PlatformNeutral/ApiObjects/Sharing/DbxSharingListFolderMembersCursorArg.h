///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DbxStoneSerializers.h"

@class DbxSharingListFolderMembersCursorArg;
@class DbxSharingMemberAction;

/// 
/// The DbxSharingListFolderMembersCursorArg struct.
/// 
@interface DbxSharingListFolderMembersCursorArg : NSObject <DbxSerializable> 

/// This is a list indicating whether each returned member will include a
/// boolean value allow in MemberPermission that describes whether the current
/// user can perform the MemberAction on the member.
@property (nonatomic) NSArray<DbxSharingMemberAction *> * _Nullable actions;
/// The maximum number of results that include members, groups and invitees to
/// return per request.
@property (nonatomic, copy) NSNumber * _Nonnull limit;

- (nonnull instancetype)initWithActions:(NSArray<DbxSharingMemberAction *> * _Nullable)actions limit:(NSNumber * _Nullable)limit;

- (nonnull instancetype)init;

- (NSString * _Nonnull)description;

@end


@interface DbxSharingListFolderMembersCursorArgSerializer : NSObject 

+ (NSDictionary * _Nonnull)serialize:(DbxSharingListFolderMembersCursorArg * _Nonnull)obj;

+ (DbxSharingListFolderMembersCursorArg * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
