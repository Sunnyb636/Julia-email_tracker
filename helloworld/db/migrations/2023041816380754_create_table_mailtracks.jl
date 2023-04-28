module CreateTableMailtracks

import SearchLight.Migrations: create_table, column, columns, pk, add_index, drop_table, add_indices

function up()
  create_table(:mailtracks) do
    [
      pk()
      column(:column_name, :column_type)
      columns([
        :column_name => :column_type
      ])
    ]
  end

  add_index(:mailtracks, :column_name)
  add_indices(:mailtracks, :column_name_1, :column_name_2)
end

function down()
  drop_table(:mailtracks)
end

end
