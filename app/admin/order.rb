ActiveAdmin.register Order do
  form do |f|
    f.inputs "Details" do
      f.input :status, :as => :select, :collection => Order::STATUS_TYPE
      f.input :address
    end
    f.actions
  end

  show do |order|
    default_main_content

    panel 'Related meals' do
      ul
      Meal.where("order_id = #{order.id}").each do |meal|
        li link_to meal.name, admin_meal_path(meal)
      end
    end
  end

  permit_params :status, :address
end
