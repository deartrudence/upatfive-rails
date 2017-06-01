# Make the connection.
Aws.config.update(
 access_key_id:      ENV['S3_KEY_ID'],
 secret_access_key:  ENV['S3_SECRET_KEY'],
 region: 'us-east-1' )

S3 = Aws::S3::Client.new
resp = S3.list_buckets
puts resp.buckets.map(&:name)