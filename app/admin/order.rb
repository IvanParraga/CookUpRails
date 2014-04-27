ActiveAdmin.register Order do

# See permitted parameters documentation:
# https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#  permitted = [:permitted, :attributes]
#  permitted << :other if resource.something?
#  permitted
# end
  form do |f|
    f.inputs "Details" do
      f.input :status, :as => :select, :collection => Order::STATUS_TYPE
      f.input :address
    end 
    f.actions
  end

  permit_params :status, :address
end
