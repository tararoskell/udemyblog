ActiveAdmin::Dashboards.build do
section "Recent Post", :priority => 1 do
  table_for Post.order("id desc").limit(15) do
    column :id
    column "Post Title", :title do |post|
      link_to post.title, [:admin,post]
    end
    column :category, :sortable => :category
    column :created_at  
  end
  strong {link_to "Show All Posts", :admin_posts }
end
section "Categories" do
  table_for Category.order("id desc").limit(15) do
    column :id
    column "Category Title", :name do |category|
      link_to category.name, [:admin,category]
    end
    column :created_at  
  end
  strong {link_to "Show All Categories", :admin_categories }
end
end
