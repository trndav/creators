module ApplicationHelper
    def menu_items
        [{
          name: 'Dashboard',
          path: dashboard_path,
        }, {
          name: 'Accounts',
          path: '/accounts'
        }, {
          name: 'Products',
          path: root_path,
        }, {
          name: 'Store',
          path: root_path,
        }, {
          name: 'Customers',
          path: root_path,
        }, {
          name: 'Cardholders',
          path: root_path,
        }].map do |item|
          {
            name: item[:name],
            path: item[:path],
            active: current_page?(item[:path])
          }
        end
      end
    end
