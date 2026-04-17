// List all subjects
query subjects verb=GET {
  api_group = "Subjects"

  input {
  }

  stack {
    // Get all subject records
    db.query subjects {
      return = {type: "list"}
      output = ["id", "created_at", "name", "description", "account_id"]
    } as $subjects
  }

  response = $subjects
}