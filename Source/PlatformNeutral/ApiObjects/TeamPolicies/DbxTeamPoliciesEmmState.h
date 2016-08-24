///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DbxStoneSerializers.h"

@class DbxTeamPoliciesEmmState;

/// 
/// The DbxTeamPoliciesEmmState union.
/// 
@interface DbxTeamPoliciesEmmState : NSObject <DbxSerializable> 

typedef NS_ENUM(NSInteger, TeamPoliciesEmmStateTag) {
    /// Emm token is disabled
    TeamPoliciesEmmStateDisabled,
    /// Emm token is optional
    TeamPoliciesEmmStateOptional,
    /// Emm token is required
    TeamPoliciesEmmStateRequired,
    /// (no description)
    TeamPoliciesEmmStateOther,
};

- (nonnull instancetype)initWithDisabled;

- (nonnull instancetype)initWithOptional;

- (nonnull instancetype)initWithRequired;

- (nonnull instancetype)initWithOther;

- (BOOL)isDisabled;

- (BOOL)isOptional;

- (BOOL)isRequired;

- (BOOL)isOther;

- (NSString * _Nonnull)getTagName;

- (NSString * _Nonnull)description;

/// Current state of the DbxTeamPoliciesEmmState union type.
@property (nonatomic) TeamPoliciesEmmStateTag tag;

@end


@interface DbxTeamPoliciesEmmStateSerializer : NSObject 

+ (NSDictionary * _Nonnull)serialize:(DbxTeamPoliciesEmmState * _Nonnull)obj;

+ (DbxTeamPoliciesEmmState * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
