ActiveAdmin.register NumberRange do
  config.sort_order = 'id_asc'
	menu :label => "Client Statistics"
	menu :priority => 2

  filter :name, :as => :string
  filter :user, :label => 'Client', :collection => proc { User.all }
	filter :created_at, :as => :date_range
  filter :range_start, :label => "Number Range Starting With"#, :as => :number
  filter :range_end, :label => "Number Range Ending With"#, :as => :number

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
