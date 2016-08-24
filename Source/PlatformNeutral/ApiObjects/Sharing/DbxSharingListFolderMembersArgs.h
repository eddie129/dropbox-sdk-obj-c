///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DbxStoneSerializers.h"
#import "DbxSharingListFolderMembersCursorArg.h"

@class DbxSharingListFolderMembersArgs;
@class DbxSharingMemberAction;

/// 
/// The DbxSharingListFolderMembersArgs struct.
/// 
@interface DbxSharingListFolderMembersArgs : DbxSharingListFolderMembersCursorArg <DbxSerializable> 

/// The ID for the shared folder.
@property (nonatomic, copy) NSString * _Nonnull sharedFolderId;

- (nonnull instancetype)initWithSharedFolderId:(NSString * _Nonnull)sharedFolderId actions:(NSArray<DbxSharingMemberAction *> * _Nullable)actions limit:(NSNumber * _Nullable)limit;

- (nonnull instancetype)initWithSharedFolderId:(NSString * _Nonnull)sharedFolderId;

- (NSString * _Nonnull)description;

@end


@interface DbxSharingListFolderMembersArgsSerializer : NSObject 

+ (NSDictionary * _Nonnull)serialize:(DbxSharingListFolderMembersArgs * _Nonnull)obj;

+ (DbxSharingListFolderMembersArgs * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
