///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DbxStoneSerializers.h"

@class DbxTeamPoliciesSharedLinkCreatePolicy;

/// 
/// The DbxTeamPoliciesSharedLinkCreatePolicy union.
/// 
/// Policy governing the visibility of newly created shared links.
/// 
@interface DbxTeamPoliciesSharedLinkCreatePolicy : NSObject <DbxSerializable> 

typedef NS_ENUM(NSInteger, TeamPoliciesSharedLinkCreatePolicyTag) {
    /// By default, anyone can access newly created shared links. No login will
    /// be required to access the shared links unless overridden.
    TeamPoliciesSharedLinkCreatePolicyDefaultPublic,
    /// By default, only members of the same team can access newly created
    /// shared links. Login will be required to access the shared links unless
    /// overridden.
    TeamPoliciesSharedLinkCreatePolicyDefaultTeamOnly,
    /// Only members of the same team can access newly created shared links.
    /// Login will be required to access the shared links.
    TeamPoliciesSharedLinkCreatePolicyTeamOnly,
    /// (no description)
    TeamPoliciesSharedLinkCreatePolicyOther,
};

- (nonnull instancetype)initWithDefaultPublic;

- (nonnull instancetype)initWithDefaultTeamOnly;

- (nonnull instancetype)initWithTeamOnly;

- (nonnull instancetype)initWithOther;

- (BOOL)isDefaultPublic;

- (BOOL)isDefaultTeamOnly;

- (BOOL)isTeamOnly;

- (BOOL)isOther;

- (NSString * _Nonnull)getTagName;

- (NSString * _Nonnull)description;

/// Current state of the DbxTeamPoliciesSharedLinkCreatePolicy union type.
@property (nonatomic) TeamPoliciesSharedLinkCreatePolicyTag tag;

@end


@interface DbxTeamPoliciesSharedLinkCreatePolicySerializer : NSObject 

+ (NSDictionary * _Nonnull)serialize:(DbxTeamPoliciesSharedLinkCreatePolicy * _Nonnull)obj;

+ (DbxTeamPoliciesSharedLinkCreatePolicy * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
