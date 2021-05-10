SUB_ID="c4774376-bc4c-48e6-93eb-c0ac26c6345d"
RG_NAME="joel-chan"

az ad sp create-for-rbac -n "serviceact2" --role Contributor --scopes /subscriptions/$SUB_ID/resourceGroups/$RG_NAME

export ARM_SUBSCRIPTION_ID=c4774376-bc4c-48e6-93eb-c0ac26c6345d
export ARM_TENANT_ID=c8cd0425-e7b7-4f3d-9215-7e5fa3f439e8
export ARM_CLIENT_ID=ca3b13e8-40c1-428c-8739-6b518b3aaffa
export ARM_CLIENT_SECRET=KoHTmXF7eOCcUWm-cQ~9jU02WYriZnrV6J
