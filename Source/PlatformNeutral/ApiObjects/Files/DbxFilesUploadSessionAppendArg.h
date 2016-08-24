///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DbxStoneSerializers.h"

@class DbxFilesUploadSessionAppendArg;
@class DbxFilesUploadSessionCursor;

/// 
/// The DbxFilesUploadSessionAppendArg struct.
/// 
@interface DbxFilesUploadSessionAppendArg : NSObject <DbxSerializable> 

/// Contains the upload session ID and the offset.
@property (nonatomic) DbxFilesUploadSessionCursor * _Nonnull cursor;
/// If true, the current session will be closed, at which point you won't be
/// able to call uploadSessionAppendV2 anymore with the current session.
@property (nonatomic, copy) NSNumber * _Nonnull close;

- (nonnull instancetype)initWithCursor:(DbxFilesUploadSessionCursor * _Nonnull)cursor close:(NSNumber * _Nullable)close;

- (nonnull instancetype)initWithCursor:(DbxFilesUploadSessionCursor * _Nonnull)cursor;

- (NSString * _Nonnull)description;

@end


@interface DbxFilesUploadSessionAppendArgSerializer : NSObject 

+ (NSDictionary * _Nonnull)serialize:(DbxFilesUploadSessionAppendArg * _Nonnull)obj;

+ (DbxFilesUploadSessionAppendArg * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
