# AWS Publicifiy

**Simple script to convert all files in an s3 bucket to be public-read ACL**

#### Usage

```sh
$ bundle install
$ printf "AWS_REGION=us-east-1\nAWS_ACCESS_KEY_ID=XXX\nAWS_SECRET_ACCESS_KEY=YYY\nAWS_S3_BUCKET=my-bucket-name\n" > .env
$ ruby run.rb
```

## License

See the [LICENSE](LICENSE.md) file for license rights and limitations (MIT).
