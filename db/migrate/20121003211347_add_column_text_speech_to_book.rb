class AddColumnTextSpeechToBook < ActiveRecord::Migration
  def change
    add_column :books , :text_2_speech, :boolean
  end
end
