ActiveAdmin.register Client do

  actions :index, :edit, :update, :create, :destroy

  permit_params :name, :address, :company, :phone_number

  menu label: "VIP Clients"

    index do
        column :name
        column :address
        column :company
        column :phone_number    
    end

   filter :name
   filter :company

   controller { actions :all, except: [:destroy] }
end