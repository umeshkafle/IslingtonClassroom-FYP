class UploadMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.upload_mailer.new_upload.subject
  #
  def new_upload(upload)
    @upload = upload
    @subject = @upload.subject

    @users = User.all
    @users = User.where(type: 'student')

    mail to: @users.where(type: 'student')
    	subject: "New upload#{@lecturer.email}"
  end
end
