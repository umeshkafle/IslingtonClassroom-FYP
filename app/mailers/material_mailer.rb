class MaterialMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.material_mailer.new_material.subject
  #
  def new_material(material)
   @material = material
   @subject = @material.subject

    mail to: @subject.user.email,
    	 subject: "New material for #{@subject.title}"
  end
end
