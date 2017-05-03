# Preview all emails at http://localhost:3000/rails/mailers/material_mailer
class MaterialMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/material_mailer/new_material
  def new_material
  	material = Material.last
    MaterialMailer.new_material
  end

end
