///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DbxStoneSerializers.h"

@class DbxSharingFolderAction;
@class DbxSharingListFoldersArgs;

/// 
/// The DbxSharingListFoldersArgs struct.
/// 
@interface DbxSharingListFoldersArgs : NSObject <DbxSerializable> 

/// The maximum number of results to return per request.
@property (nonatomic, copy) NSNumber * _Nonnull limit;
/// This is a list indicating whether each returned folder data entry will
/// include a boolean field allow in FolderPermission that describes whether the
/// current user can perform the `FolderAction` on the folder.
@property (nonatomic) NSArray<DbxSharingFolderAction *> * _Nullable actions;

- (nonnull instancetype)initWithLimit:(NSNumber * _Nullable)limit actions:(NSArray<DbxSharingFolderAction *> * _Nullable)actions;

- (nonnull instancetype)init;

- (NSString * _Nonnull)description;

@end


@interface DbxSharingListFoldersArgsSerializer : NSObject 

+ (NSDictionary * _Nonnull)serialize:(DbxSharingListFoldersArgs * _Nonnull)obj;

+ (DbxSharingListFoldersArgs * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
