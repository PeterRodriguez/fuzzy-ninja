ActiveAdmin.register_page "Dashboard" do

  menu :priority => 1, :label => proc{ I18n.t("active_admin.dashboard") }

  content :title => proc{ I18n.t("active_admin.dashboard") } do
    columns do
      column do
        panel "Last 10 sms" do
          ul do
            InboundMessage.order("created_at DESC").limit(10).map do |message|
              li link_to("Message : "+message.message+"  /  From : "+message.sender+"  / To : "+message.recipient , admin_inbound_messages_path)
            end
          end
        end
      end
      column do
        panel "Last Month" do
            render "showgraphic"
        end
      end
    end
  end
end
