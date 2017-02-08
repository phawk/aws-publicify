require 'aws-sdk-v1'
require 'dotenv'

Dotenv.load

AWS.config(access_key_id: ENV['AWS_ACCESS_KEY_ID'], secret_access_key: ENV['AWS_SECRET_ACCESS_KEY'], region: ENV['AWS_REGION'])

s3 = AWS::S3.new
bucket = s3.buckets[ENV['AWS_S3_BUCKET']]

bucket.objects.each do |obj|
  obj.acl = :public_read
  puts "Updated #{obj.key}"
end
