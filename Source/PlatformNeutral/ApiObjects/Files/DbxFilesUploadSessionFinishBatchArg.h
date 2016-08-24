///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DbxStoneSerializers.h"

@class DbxFilesUploadSessionFinishArg;
@class DbxFilesUploadSessionFinishBatchArg;

/// 
/// The DbxFilesUploadSessionFinishBatchArg struct.
/// 
@interface DbxFilesUploadSessionFinishBatchArg : NSObject <DbxSerializable> 

/// Commit information for each file in the batch.
@property (nonatomic) NSArray<DbxFilesUploadSessionFinishArg *> * _Nonnull entries;

- (nonnull instancetype)initWithEntries:(NSArray<DbxFilesUploadSessionFinishArg *> * _Nonnull)entries;

- (NSString * _Nonnull)description;

@end


@interface DbxFilesUploadSessionFinishBatchArgSerializer : NSObject 

+ (NSDictionary * _Nonnull)serialize:(DbxFilesUploadSessionFinishBatchArg * _Nonnull)obj;

+ (DbxFilesUploadSessionFinishBatchArg * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
