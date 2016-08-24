///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DbxStoneSerializers.h"

@class DbxFilesGetMetadataError;
@class DbxFilesLookupError;

/// 
/// The DbxFilesGetMetadataError union.
/// 
@interface DbxFilesGetMetadataError : NSObject <DbxSerializable> 

typedef NS_ENUM(NSInteger, FilesGetMetadataErrorTag) {
    /// (no description)
    FilesGetMetadataErrorPath,
};

- (nonnull instancetype)initWithPath:(DbxFilesLookupError * _Nonnull)path;

- (BOOL)isPath;

- (NSString * _Nonnull)getTagName;

- (NSString * _Nonnull)description;

/// Current state of the DbxFilesGetMetadataError union type.
@property (nonatomic) FilesGetMetadataErrorTag tag;
@property (nonatomic) DbxFilesLookupError * _Nonnull path;

@end


@interface DbxFilesGetMetadataErrorSerializer : NSObject 

+ (NSDictionary * _Nonnull)serialize:(DbxFilesGetMetadataError * _Nonnull)obj;

+ (DbxFilesGetMetadataError * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
