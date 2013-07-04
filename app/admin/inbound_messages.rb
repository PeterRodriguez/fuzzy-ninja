ActiveAdmin.register InboundMessage do
  config.sort_order = 'id_asc'
  menu :priority => 3
  actions :all, :except => [:new, :destroy]


  filter :created_at, :as => :date_range
  filter :number_range,  :as => :check_boxes


  # InboundMessage.find(:all,
  #          :joins => "LEFT JOIN `number_ranges` ON number_ranges.id = inbound_messages.number_range_id" ,
  #          :select => "number_ranges.*", :group =>
  #          "number_ranges.id")}

  #InboundMessage.find_by_number_range(14000..14500)


  index do
    selectable_column
    column :number_range
    column :message
    column :sender
    column :recipient
    column :created_at
    default_actions
  end
end
