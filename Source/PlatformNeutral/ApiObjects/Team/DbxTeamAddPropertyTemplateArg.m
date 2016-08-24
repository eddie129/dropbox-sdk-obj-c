///
/// Auto-generated by Stone, do not modify.
///

#import "DbxPropertiesPropertyFieldTemplate.h"
#import "DbxPropertiesPropertyGroupTemplate.h"
#import "DbxStoneSerializers.h"
#import "DbxStoneValidators.h"
#import "DbxTeamAddPropertyTemplateArg.h"

@implementation DbxTeamAddPropertyTemplateArg 

- (instancetype)initWithName:(NSString *)name description_:(NSString *)description_ fields:(NSArray<DbxPropertiesPropertyFieldTemplate *> *)fields {
    [DbxStoneValidators arrayValidator:nil maxItems:nil itemValidator:nil](fields);

    self = [super initWithName:name description_:description_ fields:fields];
    if (self != nil) {
    }
    return self;
}

+ (NSDictionary *)serialize:(id)obj {
    return [DbxTeamAddPropertyTemplateArgSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DbxTeamAddPropertyTemplateArgSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DbxTeamAddPropertyTemplateArgSerializer serialize:self] description];
}

@end


@implementation DbxTeamAddPropertyTemplateArgSerializer 

+ (NSDictionary *)serialize:(DbxTeamAddPropertyTemplateArg *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    jsonDict[@"name"] = [DbxStringSerializer serialize:valueObj.name];
    jsonDict[@"description"] = [DbxStringSerializer serialize:valueObj.description_];
    jsonDict[@"fields"] = [DbxArraySerializer serialize:valueObj.fields withBlock:^id(id elem) { return [DbxPropertiesPropertyFieldTemplateSerializer serialize:elem]; }];

    return jsonDict;
}

+ (DbxTeamAddPropertyTemplateArg *)deserialize:(NSDictionary *)valueDict {
    NSString *name = [DbxStringSerializer deserialize:valueDict[@"name"]];
    NSString *description_ = [DbxStringSerializer deserialize:valueDict[@"description"]];
    NSArray<DbxPropertiesPropertyFieldTemplate *> *fields = [DbxArraySerializer deserialize:valueDict[@"fields"] withBlock:^id(id elem) { return [DbxPropertiesPropertyFieldTemplateSerializer deserialize:elem]; }];

    return [[DbxTeamAddPropertyTemplateArg alloc] initWithName:name description_:description_ fields:fields];
}

@end
