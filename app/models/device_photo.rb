class DevicePhoto < ActiveRecord::Base
  has_attached_file :photo,
                    :styles => { :medium => "300x300>",
                                 :thumb => "84x84>",
                                 :admin_thumb => "120x120>" },
                    :storage => :s3,
                    :s3_credentials => {:access_key_id => ENV['S3_KEY'],
                                        :secret_access_key => ENV['S3_SECRET']},
                    :bucket => "bluecheckpoint",
                    :path => ":class/:id/:style.:extension",
                    :url => ":s3_eu_url",
                    :s3_headers => { :cache_control => "max-age=#{364.days.to_i}" },
                    :s3_permissions => :public_read
end
