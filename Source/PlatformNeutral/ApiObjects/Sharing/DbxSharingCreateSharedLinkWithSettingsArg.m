///
/// Auto-generated by Stone, do not modify.
///

#import "DbxSharingCreateSharedLinkWithSettingsArg.h"
#import "DbxSharingSharedLinkSettings.h"
#import "DbxStoneSerializers.h"
#import "DbxStoneValidators.h"

@implementation DbxSharingCreateSharedLinkWithSettingsArg 

- (instancetype)initWithPath:(NSString *)path settings:(DbxSharingSharedLinkSettings *)settings {
    [DbxStoneValidators stringValidator:nil maxLength:nil pattern:@"(/(.|[\\r\\n])*|id:.*)|(rev:[0-9a-f]{9,})|(ns:[0-9]+(/.*)?)"](path);

    self = [super init];
    if (self != nil) {
        _path = path;
        _settings = settings;
    }
    return self;
}

- (instancetype)initWithPath:(NSString *)path {
    return [self initWithPath:path settings:nil];
}

+ (NSDictionary *)serialize:(id)obj {
    return [DbxSharingCreateSharedLinkWithSettingsArgSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DbxSharingCreateSharedLinkWithSettingsArgSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DbxSharingCreateSharedLinkWithSettingsArgSerializer serialize:self] description];
}

@end


@implementation DbxSharingCreateSharedLinkWithSettingsArgSerializer 

+ (NSDictionary *)serialize:(DbxSharingCreateSharedLinkWithSettingsArg *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    jsonDict[@"path"] = [DbxStringSerializer serialize:valueObj.path];
    if (valueObj.settings) {
        jsonDict[@"settings"] = [DbxSharingSharedLinkSettingsSerializer serialize:valueObj.settings];
    }

    return jsonDict;
}

+ (DbxSharingCreateSharedLinkWithSettingsArg *)deserialize:(NSDictionary *)valueDict {
    NSString *path = [DbxStringSerializer deserialize:valueDict[@"path"]];
    DbxSharingSharedLinkSettings *settings = valueDict[@"settings"] != nil ? [DbxSharingSharedLinkSettingsSerializer deserialize:valueDict[@"settings"]] : nil;

    return [[DbxSharingCreateSharedLinkWithSettingsArg alloc] initWithPath:path settings:settings];
}

@end
