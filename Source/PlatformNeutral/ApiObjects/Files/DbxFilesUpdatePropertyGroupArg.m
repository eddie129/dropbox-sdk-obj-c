///
/// Auto-generated by Stone, do not modify.
///

#import "DbxFilesPropertyGroupUpdate.h"
#import "DbxFilesUpdatePropertyGroupArg.h"
#import "DbxStoneSerializers.h"
#import "DbxStoneValidators.h"

@implementation DbxFilesUpdatePropertyGroupArg 

- (instancetype)initWithPath:(NSString *)path updatePropertyGroups:(NSArray<DbxFilesPropertyGroupUpdate *> *)updatePropertyGroups {
    [DbxStoneValidators stringValidator:nil maxLength:nil pattern:@"/(.|[\\r\\n])*|id:.*|(ns:[0-9]+(/.*)?)"](path);
    [DbxStoneValidators arrayValidator:nil maxItems:nil itemValidator:nil](updatePropertyGroups);

    self = [super init];
    if (self != nil) {
        _path = path;
        _updatePropertyGroups = updatePropertyGroups;
    }
    return self;
}

+ (NSDictionary *)serialize:(id)obj {
    return [DbxFilesUpdatePropertyGroupArgSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DbxFilesUpdatePropertyGroupArgSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DbxFilesUpdatePropertyGroupArgSerializer serialize:self] description];
}

@end


@implementation DbxFilesUpdatePropertyGroupArgSerializer 

+ (NSDictionary *)serialize:(DbxFilesUpdatePropertyGroupArg *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    jsonDict[@"path"] = [DbxStringSerializer serialize:valueObj.path];
    jsonDict[@"update_property_groups"] = [DbxArraySerializer serialize:valueObj.updatePropertyGroups withBlock:^id(id elem) { return [DbxFilesPropertyGroupUpdateSerializer serialize:elem]; }];

    return jsonDict;
}

+ (DbxFilesUpdatePropertyGroupArg *)deserialize:(NSDictionary *)valueDict {
    NSString *path = [DbxStringSerializer deserialize:valueDict[@"path"]];
    NSArray<DbxFilesPropertyGroupUpdate *> *updatePropertyGroups = [DbxArraySerializer deserialize:valueDict[@"update_property_groups"] withBlock:^id(id elem) { return [DbxFilesPropertyGroupUpdateSerializer deserialize:elem]; }];

    return [[DbxFilesUpdatePropertyGroupArg alloc] initWithPath:path updatePropertyGroups:updatePropertyGroups];
}

@end
