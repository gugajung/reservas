ActiveAdmin.register Reserva do
  filter :quarto
  filter :inicio
  filter :fim
  filter :cliente

  index download_links: false do
    column :quarto
    column :inicio
    column :fim
    column :Cliente, index: true
    default_actions
  end

  form do |f|
    f.inputs do
      f.input :quarto, as: :select, collection: Quarto.uniq.pluck(:numero)
      f.input :cliente #, as: :select, collection: Cliente.all
      f.input :inicio , as: :datepicker
      f.input :fim , as: :datepicker
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
