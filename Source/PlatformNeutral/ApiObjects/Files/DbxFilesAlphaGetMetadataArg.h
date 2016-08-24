///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DbxStoneSerializers.h"
#import "DbxFilesGetMetadataArg.h"

@class DbxFilesAlphaGetMetadataArg;

/// 
/// The DbxFilesAlphaGetMetadataArg struct.
/// 
@interface DbxFilesAlphaGetMetadataArg : DbxFilesGetMetadataArg <DbxSerializable> 

/// If true, propertyGroups in FileMetadata is set for files with custom
/// properties.
@property (nonatomic) NSArray<NSString *> * _Nullable includePropertyTemplates;

- (nonnull instancetype)initWithPath:(NSString * _Nonnull)path includeMediaInfo:(NSNumber * _Nullable)includeMediaInfo includeDeleted:(NSNumber * _Nullable)includeDeleted includeHasExplicitSharedMembers:(NSNumber * _Nullable)includeHasExplicitSharedMembers includePropertyTemplates:(NSArray<NSString *> * _Nullable)includePropertyTemplates;

- (nonnull instancetype)initWithPath:(NSString * _Nonnull)path;

- (NSString * _Nonnull)description;

@end


@interface DbxFilesAlphaGetMetadataArgSerializer : NSObject 

+ (NSDictionary * _Nonnull)serialize:(DbxFilesAlphaGetMetadataArg * _Nonnull)obj;

+ (DbxFilesAlphaGetMetadataArg * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
