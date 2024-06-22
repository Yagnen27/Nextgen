ActiveAdmin.register_page "Dashboard" do
  menu priority: 1, label: proc { I18n.t("active_admin.dashboard") }

  content title: proc { I18n.t("active_admin.dashboard") } do
    div class: "blank_slate_container", id: "dashboard_default_message" do
      span class: "blank_slate" do
        span I18n.t("active_admin.dashboard_welcome.welcome")
        small I18n.t("active_admin.dashboard_welcome.call_to_action")
      end
    end

    section "Recent Employees" do
      table_for Employee.order("created_at desc").limit(5) do
        column :id
        column :name
        column :department
        column :address
        column :salary
        column :email
        column :created_at
      end
      strong { link_to "View All Employees", admin_employees_path }
    end

    section "Statistics" do
      div do
        "Total Employees: #{Employee.count}"
      end
    end
  end
end