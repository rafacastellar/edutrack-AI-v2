// Update a specific subject by ID
query "subjects/{id}" verb=PUT {
  api_group = "Subjects"

  input {
    int id?
    text name?
    text description?
    int account_id?
  }

  stack {
    // Update the subject record
    db.edit subjects {
      field_name = "id"
      field_value = $input.id
      data = {
        name       : $input.name
        description: $input.description
        account_id : $input.account_id
      }
    } as $subject
  
    // Check if subject was updated
    precondition ($subject != null) {
      error_type = "notfound"
      error = "Subject not found."
    }
  }

  response = $subject
}