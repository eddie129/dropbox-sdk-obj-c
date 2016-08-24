///
/// Auto-generated by Stone, do not modify.
///

#import "DbxSharingGetFileMetadataBatchResult.h"
#import "DbxSharingGetFileMetadataIndividualResult.h"
#import "DbxStoneSerializers.h"
#import "DbxStoneValidators.h"

@implementation DbxSharingGetFileMetadataBatchResult 

- (instancetype)initWithFile:(NSString *)file result:(DbxSharingGetFileMetadataIndividualResult *)result {
    [DbxStoneValidators stringValidator:[NSNumber numberWithInt:1] maxLength:nil pattern:@"((/|id:).*|nspath:[^:]*:[^:]*)"](file);

    self = [super init];
    if (self != nil) {
        _file = file;
        _result = result;
    }
    return self;
}

+ (NSDictionary *)serialize:(id)obj {
    return [DbxSharingGetFileMetadataBatchResultSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DbxSharingGetFileMetadataBatchResultSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DbxSharingGetFileMetadataBatchResultSerializer serialize:self] description];
}

@end


@implementation DbxSharingGetFileMetadataBatchResultSerializer 

+ (NSDictionary *)serialize:(DbxSharingGetFileMetadataBatchResult *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    jsonDict[@"file"] = [DbxStringSerializer serialize:valueObj.file];
    jsonDict[@"result"] = [DbxSharingGetFileMetadataIndividualResultSerializer serialize:valueObj.result];

    return jsonDict;
}

+ (DbxSharingGetFileMetadataBatchResult *)deserialize:(NSDictionary *)valueDict {
    NSString *file = [DbxStringSerializer deserialize:valueDict[@"file"]];
    DbxSharingGetFileMetadataIndividualResult *result = [DbxSharingGetFileMetadataIndividualResultSerializer deserialize:valueDict[@"result"]];

    return [[DbxSharingGetFileMetadataBatchResult alloc] initWithFile:file result:result];
}

@end
