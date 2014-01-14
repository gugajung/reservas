ActiveAdmin.register Cliente do

  sexos = %w(masculino feminino)
  filter :nome
  filter :sexo, as: :select, collection: sexos

  index download_links: false do
    column :nome
    column "Data de nascimento",:data_nascimento
    column :sexo
    default_actions
  end

  form do |f|
    f.inputs do
      f.input :nome, input_html: { size: 20, placeholder: "Nome completo" }
      f.input :cpf, input_html: { size: 20, placeholder: "000.000.000-00" }
      f.input :sexo, as: :radio, collection: sexos
      f.input :data_nascimento , as: :datepicker, input_html: { size: 20, placeholder: "Selecione a data" }
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
