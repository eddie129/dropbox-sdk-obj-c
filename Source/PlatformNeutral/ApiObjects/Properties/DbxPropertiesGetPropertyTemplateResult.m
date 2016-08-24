///
/// Auto-generated by Stone, do not modify.
///

#import "DbxPropertiesGetPropertyTemplateResult.h"
#import "DbxPropertiesPropertyFieldTemplate.h"
#import "DbxPropertiesPropertyGroupTemplate.h"
#import "DbxStoneSerializers.h"
#import "DbxStoneValidators.h"

@implementation DbxPropertiesGetPropertyTemplateResult 

- (instancetype)initWithName:(NSString *)name description_:(NSString *)description_ fields:(NSArray<DbxPropertiesPropertyFieldTemplate *> *)fields {
    [DbxStoneValidators arrayValidator:nil maxItems:nil itemValidator:nil](fields);

    self = [super initWithName:name description_:description_ fields:fields];
    if (self != nil) {
    }
    return self;
}

+ (NSDictionary *)serialize:(id)obj {
    return [DbxPropertiesGetPropertyTemplateResultSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DbxPropertiesGetPropertyTemplateResultSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DbxPropertiesGetPropertyTemplateResultSerializer serialize:self] description];
}

@end


@implementation DbxPropertiesGetPropertyTemplateResultSerializer 

+ (NSDictionary *)serialize:(DbxPropertiesGetPropertyTemplateResult *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    jsonDict[@"name"] = [DbxStringSerializer serialize:valueObj.name];
    jsonDict[@"description"] = [DbxStringSerializer serialize:valueObj.description_];
    jsonDict[@"fields"] = [DbxArraySerializer serialize:valueObj.fields withBlock:^id(id elem) { return [DbxPropertiesPropertyFieldTemplateSerializer serialize:elem]; }];

    return jsonDict;
}

+ (DbxPropertiesGetPropertyTemplateResult *)deserialize:(NSDictionary *)valueDict {
    NSString *name = [DbxStringSerializer deserialize:valueDict[@"name"]];
    NSString *description_ = [DbxStringSerializer deserialize:valueDict[@"description"]];
    NSArray<DbxPropertiesPropertyFieldTemplate *> *fields = [DbxArraySerializer deserialize:valueDict[@"fields"] withBlock:^id(id elem) { return [DbxPropertiesPropertyFieldTemplateSerializer deserialize:elem]; }];

    return [[DbxPropertiesGetPropertyTemplateResult alloc] initWithName:name description_:description_ fields:fields];
}

@end
