ActiveAdmin.register Quarto do
  filter :numero
  filter :pessoas
  filter :tem_tv
  filter :tem_ar

  index :download_links => false do
    column :numero
    column "capacidade", :pessoas
    column "com tv", :tem_tv
    column "com ar condicionado", :tem_ar
    default_actions
  end

  
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
  
end
