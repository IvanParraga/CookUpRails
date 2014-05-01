ActiveAdmin.register Meal do
  permit_params :name, :description, :price, :available_time, :cook_id, :order_id, :picture

  # form do |f|
  #   f.inputs "Details" do
  #     f.input :picture, :as => :file, :hint => f.template.image_tag(f.object.picture.url)
  #   end
  #   f.actions
  # end
end
