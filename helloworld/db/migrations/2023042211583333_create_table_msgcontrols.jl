module CreateTableMsgcontrols

import SearchLight.Migrations: create_table, column, columns, pk, add_index, drop_table, add_indices

function up()
  create_table(:msgcontrols) do
    [
      pk()
      column(:messages, :string)
    ]
  end
end

function down()
  drop_table(:msgcontrols)
end

end
