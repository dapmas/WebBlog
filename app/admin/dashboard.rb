ActiveAdmin.register_page "Dashboard" do
#ActiveAdmin::Dashboards.build do
  content :title => proc{ I18n.t("active_admin.dashboard") } do
    section do
      columns do
        panel "Recent Posts" do
          table_for Post.order("id desc").limit(5) do
            column :id
            column "Post Title", :title do |post|
              link_to post.title, [:admin, post]
            end
            column "Author", :admin_user
            column :category, :sortable => :category
            column :created_at
          end
          strong (link_to "Show All Posts" , :admin_posts )
        end
      end
    end

    section do
      columns do
        panel "Categories" do
          table_for Category.order("id desc").limit(5) do
            column :id
            column "Category Name", :name do |cat|
              link_to cat.name, [:admin, cat]
            end
            column :created_at
          end
          strong (link_to "Show All Categories" , :admin_categories )
        end
      end
    end

  end
end
