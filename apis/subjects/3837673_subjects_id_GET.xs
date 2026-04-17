// Get a specific subject by ID
query "subjects/{id}" verb=GET {
  api_group = "Subjects"

  input {
    int id?
  }

  stack {
    // Get the subject record by ID
    db.get subjects {
      field_name = "id"
      field_value = $input.id
      output = ["id", "created_at", "name", "description", "account_id"]
    } as $subject
  
    // Check if subject exists
    precondition ($subject != null) {
      error_type = "notfound"
      error = "Subject not found."
    }
  }

  response = $subject
}