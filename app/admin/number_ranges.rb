ActiveAdmin.register NumberRange do
  config.sort_order = 'id_asc'
	menu :label => "Client Statistics"
	menu :priority => 2


	#filter :created_at, :as => :date_range

	index do
    selectable_column
    column :name
    column "Client", :user
    column :range_start
    column :range_end
    column :created_at
    default_actions :name => "Actions"
  end

end
