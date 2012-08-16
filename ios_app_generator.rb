class IosAppGenerator < Rails::Generators::Base
  source_root File.expand_path('../templates', __FILE__)

  argument :model_name, :type => :string

 	def generate_controller
 		template 'ViewController.h', "xcode_project/controllers/#{file_name}ViewController.h"
  end

  private

  def file_name
  	model_name
  end
end
