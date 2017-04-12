	# Preview all emails at http://localhost:3000/rails/mailers/upload_mailer
class UploadMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/upload_mailer/new_upload
  def new_upload
  	upload = Upload.last
    UploadMailer.new_upload
  end

end
