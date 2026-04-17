// Delete a specific subject by ID
query "subjects/{id}" verb=DELETE {
  api_group = "Subjects"

  input {
    int id?
  }

  stack {
    // Delete the subject record
    db.del subjects {
      field_name = "id"
      field_value = $input.id
    }
  }

  response = {message: "Subject deleted successfully"}
}