Deface::Override.new(:virtual_path => "spree/layouts/admin",
                     :name => "add_snippets_tab_to_admin",
                     :insert_bottom => "#main-sidebar",
                     :text => '<% if can? :admin, Spree::Snippet %>
                       <ul class="nav nav-sidebar">
                         <%= tab Spree::Snippet, url: spree.admin_snippets_url, icon: "file", label: Spree::Snippet.model_name.human(count: 1.1) %>
                       </ul>
                     <% end %>')
