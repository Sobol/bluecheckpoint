Paperclip.interpolates(:s3_eu_url) do |attachment, style|
   "#{attachment.s3_protocol(:original)}://s3-eu-west-1.amazonaws.com/#{attachment.bucket_name}/#{attachment.path(style).gsub(%r{^/},
"")}"
end
