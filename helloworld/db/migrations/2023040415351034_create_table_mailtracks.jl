module CreateTableMailtracks

import SearchLight.Migrations: create_table, column, columns, pk, add_index, drop_table, add_indices

function up()
  create_table(:mailtracks) do
    [
      pk()
      column(:mail, :string)
      column(:name, :string)
      column(:counts, :integer)
  
     
    ]
  end

end

function down()
  drop_table(:mailtracks)
end

end
