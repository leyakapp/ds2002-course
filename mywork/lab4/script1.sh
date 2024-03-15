#!/bin/bash

#get image
curl https://cdn.britannica.com/45/5645-050-B9EC0205/head-treasure-flower-disk-flowers-inflorescence-ray.jpg > flower.jpg

#add to bucket
aws s3 cp  flower.jpg  s3://ds2002-mth8yq/

#create url
URL=$(aws s3 presign --expires-in 604800 s3://ds2002-mth8yq/flower.jpg)

#output url
echo $URL


#from learner lab: https://ds2002-mth8yq.s3.us-east-1.amazonaws.com/flower.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=ASIAVRUVV6B24QQNZWS4%2F20240315%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20240315T223050Z&X-Amz-Expires=604800&X-Amz-SignedHeaders=host&X-Amz-Security-Token=FwoGZXIvYXdzEJ7%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEaDPTY7lcDlorO4cE7ESLEAdyd0jqIpExphISBrZPUnKp9f9Ms2IAALCP70CMdAubIpW%2BfNdc0czOgUkj73XBPthR5ldNf2DJDpwG2DlbWTanRgLmIm3epb%2BnzOlTro1vnpvjSiK5lfDolIV%2Fe9LIWKQNjnNuyrjEAwOs8G8Y4%2BuPjKdliMWcY12QxeFuG3yiKCgu5bOVyWJW59VR220BPeq08exxV29XnUflhBY%2Fdk2VgCKqGN0AmavLbqG3Ew%2F%2FKINiz54nMMUC95t%2BqvekoDv3pFn8op%2B7SrwYyLfD60o3W2maZwuMrBTbqcLe0a3FKKbY9rLbwXidpMafSKfba5sp0Zs%2BRl8lPMA%3D%3D&X-Amz-Signature=01fc64e14aa9c5626b578b1cd8bdd8c9b42754bd673a9c78df01ebd36d8bd779
