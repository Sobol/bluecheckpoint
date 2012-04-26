class DevicePhoto < ActiveRecord::Base
  has_attached_file :photo,
                    :styles => { :thumb => "84x84>",
                                 :large => "1024x768>",
                                 :admin_thumb => "120x120>" },
                    :storage => :s3,
                    :s3_credentials => {:access_key_id => ENV['S3_KEY'],
                                        :secret_access_key => ENV['S3_SECRET']},
                    :bucket => "bluecheckpoint-production",
                    :path => ":class/:id/:style.:extension",
                    :s3_headers => { :cache_control => "max-age=#{364.days.to_i}" },
                    :s3_permissions => :public_read
end
