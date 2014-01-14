ActiveAdmin.register Cliente do

  filter :nome
  filter :sexo, as: :select, collection: %w(masculino feminino)

  index download_links: false do
    column :nome
    column "Data de nascimento",:data_nascimento
    column :sexo
    default_actions
  end

  form do |f|
    f.inputs do
      f.input :nome
      f.input :sexo, as: :radio, collection: %w(masculino feminino)
      f.input :data_nascimento , as: :datepicker
    end
    f.actions
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
