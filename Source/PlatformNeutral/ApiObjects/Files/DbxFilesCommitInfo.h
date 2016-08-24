///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DbxStoneSerializers.h"

@class DbxFilesCommitInfo;
@class DbxFilesWriteMode;

/// 
/// The DbxFilesCommitInfo struct.
/// 
@interface DbxFilesCommitInfo : NSObject <DbxSerializable> 

/// Path in the user's Dropbox to save the file.
@property (nonatomic, copy) NSString * _Nonnull path;
/// Selects what to do if the file already exists.
@property (nonatomic) DbxFilesWriteMode * _Nonnull mode;
/// If there's a conflict, as determined by mode, have the Dropbox server try to
/// autorename the file to avoid conflict.
@property (nonatomic, copy) NSNumber * _Nonnull autorename;
/// The value to store as the clientModified timestamp. Dropbox automatically
/// records the time at which the file was written to the Dropbox servers. It
/// can also record an additional timestamp, provided by Dropbox desktop
/// clients, mobile clients, and API apps of when the file was actually created
/// or modified.
@property (nonatomic) NSDate * _Nullable clientModified;
/// Normally, users are made aware of any file modifications in their Dropbox
/// account via notifications in the client software. If true, this tells the
/// clients that this modification shouldn't result in a user notification.
@property (nonatomic, copy) NSNumber * _Nonnull mute;

- (nonnull instancetype)initWithPath:(NSString * _Nonnull)path mode:(DbxFilesWriteMode * _Nullable)mode autorename:(NSNumber * _Nullable)autorename clientModified:(NSDate * _Nullable)clientModified mute:(NSNumber * _Nullable)mute;

- (nonnull instancetype)initWithPath:(NSString * _Nonnull)path;

- (NSString * _Nonnull)description;

@end


@interface DbxFilesCommitInfoSerializer : NSObject 

+ (NSDictionary * _Nonnull)serialize:(DbxFilesCommitInfo * _Nonnull)obj;

+ (DbxFilesCommitInfo * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
