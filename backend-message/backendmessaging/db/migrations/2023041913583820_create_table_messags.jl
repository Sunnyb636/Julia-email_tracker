module CreateTableMessags

import SearchLight.Migrations: create_table, column, columns, pk, add_index, drop_table, add_indices

function up()
  create_table(:messags) do
    [
      pk()
      column(:message, :string)
      column(:Sid, :integer)
      column(:Rid, :integer)
      column(:Ts, :datetime)

    ]
  end
end

function down()
  drop_table(:messags)
end

end
