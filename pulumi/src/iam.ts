import * as pulumi from "@pulumi/pulumi";
import * as aws from "@pulumi/aws";

const lucianoWeslen = new aws.iam.User("luciano_weslen", {
	name: "luciano.weslen",
});

const lucianoWeslenUserLoginProfile = new aws.iam.UserLoginProfile(
	"luciano_weslen",
	{ user: lucianoWeslen.name },
);

const iamAccessPolicyDocument = aws.iam.getPolicyDocumentOutput({
	statements: [
		{
			actions: [
				"iam:*",
				"s3:*",
				"route53:*",
				"route53domains:*",
				"acm:*",
				"cloudfront:*",
				"rds:*",
				"vpc:*",
				"ec2:*",
			],
			resources: ["*"],
		},
	],
});

const lucianoWeslenUserPolicy = new aws.iam.UserPolicy("luciano_weslen", {
	name: "iam_access_policy_luciano_weslen",
	user: lucianoWeslen.name,
	policy: iamAccessPolicyDocument.apply(
		(iamAccessPolicyDocument) => iamAccessPolicyDocument.json,
	),
});

export {
	lucianoWeslen,
	lucianoWeslenUserLoginProfile,
	lucianoWeslenUserPolicy,
};
