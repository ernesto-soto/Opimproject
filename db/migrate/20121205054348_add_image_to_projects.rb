class AddImageToProjects < ActiveRecord::Migration
  def self.up
add_column :projects, :image_file_name,     :string
add_column :projects, :image_content_type,    :string
add_column :projects, :image_file_size,   :integer
add_column :projects, :image_updated_at,    :datetime

end


def self.down
	remove column :projects, :image_file_name
remove column :projects, :image_content_type
remove column :projects, :image_file_size
remove column :projects, :image_updated_at

	end
end	