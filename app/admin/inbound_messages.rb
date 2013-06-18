ActiveAdmin.register InboundMessage do
  config.sort_order = 'id_asc'
  menu :priority => 3
  actions :all, :except => [:new, :destroy]


  filter :created_at, :as => :date_range
  filter :number_range_name,  :as => :check_boxes, :collection => proc { NumberRange.find(:all, :select => "name")}
  #filter :number_range, :label => "Number Range Starting With", :as => :starts_with
  #filter :number_range, :label => "Number Range Ending With", :as => :ends_with


  # InboundMessage.find(:all,
  #          :joins => "LEFT JOIN `number_ranges` ON number_ranges.id = inbound_messages.number_range_id" ,
  #          :select => "number_ranges.*", :group =>
  #          "number_ranges.id")}

  #InboundMessage.find_by_number_range(14000..14500)


  index do
    selectable_column
    column :number_range_id, :collection  => proc { NumberRange.find(:all, :select => "name")}
    column :message
    column :sender
    column :recipient
    column :created_at
    default_actions
  end
end
