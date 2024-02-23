import boto3


# create a client directly
s3 = boto3.client('s3', region_name="us-east-1")

# create a session client using a profile
# session = boto3.Session(profile_name='ds2002')
# s3 = session.client('s3')

# make the request
response = s3.list_buckets()

print(response)

# now iterate through the response:
for r in response['Buckets']:
  print(r['Name'])
