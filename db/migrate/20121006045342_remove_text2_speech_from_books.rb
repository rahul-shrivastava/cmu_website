class RemoveText2SpeechFromBooks < ActiveRecord::Migration
  def change
    remove_column :books, :text_2_speech
  end
end
