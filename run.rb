require 'aws-sdk-v1'
require 'dotenv'

Dotenv.load

AWS.config(access_key_id: ENV['AWS_ACCESS_KEY_ID'], secret_access_key: ENV['AWS_SECRET_ACCESS_KEY'], region: ENV['AWS_REGION'])
s3 = AWS::S3.new
bucket = s3.buckets[ENV['AWS_S3_BUCKET']]
obj = bucket.objects["store/51b8e514e7ef13af601b28c2903bb0df35ac987e455722080682e40c622d"]
bucket.objects.each do |obj|
  obj.acl = :public_read
  puts "Updated #{obj.key}"
end
