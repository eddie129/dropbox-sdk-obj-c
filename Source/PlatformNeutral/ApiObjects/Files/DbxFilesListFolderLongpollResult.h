///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DbxStoneSerializers.h"

@class DbxFilesListFolderLongpollResult;

/// 
/// The DbxFilesListFolderLongpollResult struct.
/// 
@interface DbxFilesListFolderLongpollResult : NSObject <DbxSerializable> 

/// Indicates whether new changes are available. If true, call
/// listFolderContinue to retrieve the changes.
@property (nonatomic, copy) NSNumber * _Nonnull changes;
/// If present, backoff for at least this many seconds before calling
/// listFolderLongpoll again.
@property (nonatomic, copy) NSNumber * _Nullable backoff;

- (nonnull instancetype)initWithChanges:(NSNumber * _Nonnull)changes backoff:(NSNumber * _Nullable)backoff;

- (nonnull instancetype)initWithChanges:(NSNumber * _Nonnull)changes;

- (NSString * _Nonnull)description;

@end


@interface DbxFilesListFolderLongpollResultSerializer : NSObject 

+ (NSDictionary * _Nonnull)serialize:(DbxFilesListFolderLongpollResult * _Nonnull)obj;

+ (DbxFilesListFolderLongpollResult * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
