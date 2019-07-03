class AddSlugToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :slug, :string
    add_index :posts, :slug, unique: true

    say_with_time 'generating Post slugs' do 
      Post.find_each(&:save)
    end
  end
end
