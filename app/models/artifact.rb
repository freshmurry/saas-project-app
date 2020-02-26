class Artifact < ActiveRecord::Base
  
  before_save :upload_to_s3
  attr_accessor :upload
  belongs_to :project
  
  MAX_FILESIZE = 10.megabytes
  validates_presence_of :name, :upload
  validates_uniqueness_of :name
  
<<<<<<< HEAD
  validate :uploaded_fize_size
  
=======
  validate :uploaded_file_size

>>>>>>> eff0416e2aa769ee2885a41d4ec1ab475e8c8198
  private
  
  def upload_to_s3
    s3 = Aws::S3::Resource.new
    tenant_name = Tenant.find(Thread.current[:tenant_id]).name
<<<<<<< HEAD
    obj = s3.bucket(ENV['S3_BUCKET']).object("#{tenant_name}/#{upload.original_filename}")
    obj.upload_file(upload.path, acl:'public-read')
    self.key = obj.public_url
  end
  
  def uploaded_fize_size
    if upload 
=======
    obj = s3.bucket(ENV['AWS_S3_BUCKET']).object("#{tenant_name}/#{upload.original_filename}")
    obj.upload_file(upload.path, acl:'public-read')
    self.key = obj.public_url
  end  
  
  def uploaded_file_size
    if upload
>>>>>>> eff0416e2aa769ee2885a41d4ec1ab475e8c8198
      errors.add(:upload, "File size must be less than #{self.class::MAX_FILESIZE}") unless upload.size <= self.class::MAX_FILESIZE
    end
  end
end
