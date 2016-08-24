///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DbxStoneSerializers.h"

@class DbxFilesPropertyGroupWithPath;
@class DbxPropertiesPropertyGroup;

/// 
/// The DbxFilesPropertyGroupWithPath struct.
/// 
@interface DbxFilesPropertyGroupWithPath : NSObject <DbxSerializable> 

/// A unique identifier for the file.
@property (nonatomic, copy) NSString * _Nonnull path;
/// Filled custom property templates associated with a file.
@property (nonatomic) NSArray<DbxPropertiesPropertyGroup *> * _Nonnull propertyGroups;

- (nonnull instancetype)initWithPath:(NSString * _Nonnull)path propertyGroups:(NSArray<DbxPropertiesPropertyGroup *> * _Nonnull)propertyGroups;

- (NSString * _Nonnull)description;

@end


@interface DbxFilesPropertyGroupWithPathSerializer : NSObject 

+ (NSDictionary * _Nonnull)serialize:(DbxFilesPropertyGroupWithPath * _Nonnull)obj;

+ (DbxFilesPropertyGroupWithPath * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
