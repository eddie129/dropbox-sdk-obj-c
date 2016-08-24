///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DbxStoneSerializers.h"

@class DbxPropertiesPropertyFieldTemplate;
@class DbxPropertiesPropertyType;

/// 
/// The DbxPropertiesPropertyFieldTemplate struct.
/// 
/// Describe a single property field type which that can be part of a property
/// template.
/// 
@interface DbxPropertiesPropertyFieldTemplate : NSObject <DbxSerializable> 

/// This is the name or key of a custom property in a property template. File
/// property names can be up to 256 bytes.
@property (nonatomic, copy) NSString * _Nonnull name;
/// This is the description for a custom property in a property template. File
/// property description can be up to 1024 bytes.
@property (nonatomic, copy) NSString * _Nonnull description_;
/// This is the data type of the value of this property. This type will be
/// enforced upon property creation and modifications.
@property (nonatomic) DbxPropertiesPropertyType * _Nonnull type;

- (nonnull instancetype)initWithName:(NSString * _Nonnull)name description_:(NSString * _Nonnull)description_ type:(DbxPropertiesPropertyType * _Nonnull)type;

- (NSString * _Nonnull)description;

@end


@interface DbxPropertiesPropertyFieldTemplateSerializer : NSObject 

+ (NSDictionary * _Nonnull)serialize:(DbxPropertiesPropertyFieldTemplate * _Nonnull)obj;

+ (DbxPropertiesPropertyFieldTemplate * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
