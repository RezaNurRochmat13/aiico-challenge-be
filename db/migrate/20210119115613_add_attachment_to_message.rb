class AddAttachmentToMessage < ActiveRecord::Migration[5.2]
  def change
    add_column :messages, :attachment_file, :string
  end
end
