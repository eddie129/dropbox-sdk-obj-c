///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DbxStoneSerializers.h"

@class DbxFilesMetadata;
@class DbxFilesSaveCopyReferenceResult;

/// 
/// The DbxFilesSaveCopyReferenceResult struct.
/// 
@interface DbxFilesSaveCopyReferenceResult : NSObject <DbxSerializable> 

/// The metadata of the saved file or folder in the user's Dropbox.
@property (nonatomic) DbxFilesMetadata * _Nonnull metadata;

- (nonnull instancetype)initWithMetadata:(DbxFilesMetadata * _Nonnull)metadata;

- (NSString * _Nonnull)description;

@end


@interface DbxFilesSaveCopyReferenceResultSerializer : NSObject 

+ (NSDictionary * _Nonnull)serialize:(DbxFilesSaveCopyReferenceResult * _Nonnull)obj;

+ (DbxFilesSaveCopyReferenceResult * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
