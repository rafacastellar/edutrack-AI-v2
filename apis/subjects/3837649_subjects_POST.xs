// Add subjects record
query subjects verb=POST {
  api_group = "Subjects"

  input {
    text name?
    text description?
    int account_id?
  }

  stack {
    db.add subjects {
      data = {
        name       : $input.name
        description: $input.description
        account_id : $input.account_id
      }
    } as $model
  }

  response = $model
}