import urllib.request
import boto3

# Ask for URL
url = input("enter image URL: ")

file_name = "lab4.jpg"

# Download the file from the URL
urllib.request.urlretrieve(url, file_name)

# S3 client
s3 = boto3.client('s3', region_name='us-east-1')

# Define bucket and the path where the file will be stored
bucket = 'ds2002-mth8yq'
s3_file_path = 'projects/lab4.jpg'

# Upload to S3
with open(file_name, 'rb') as file:
    s3.put_object(
        Body=file,
        Bucket=bucket,
        Key=s3_file_path,
        ACL='public-read',
        ContentType='image/jpeg'  # Correct content type for JPEG images
    )
# make url
response = s3.generate_presigned_url(
    'get_object',
    Params={
        'Bucket': bucket,
        'Key': s3_file_path
    },
    ExpiresIn=604800  # URL expires in 1 week
)

print("Presigned URL:", response)

