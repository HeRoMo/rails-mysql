class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects, id: false, comment: 'プロジェクト' do |t|
      t.string :id, limit: 36, null: false, primary_key: true, comment: 'プライマリキー'
      t.string :name, null: false, comment: 'プロジェクト名'
      t.text :description, comment: '概要'
      t.date :start_on, comment: '開始日'
      t.date :end_on, comment: '終了日'

      t.timestamps
    end
  end
end
