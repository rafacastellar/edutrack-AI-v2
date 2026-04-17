// Stores subject information for the educational tracking system
table subjects {
  auth = false

  schema {
    int id
    timestamp created_at?=now {
      visibility = "private"
    }
  
    text name filters=trim
    text description? filters=trim
  
    // Reference to the account the subject belongs to
    int account_id? {
      table = "account"
    }
  }

  index = [
    {type: "primary", field: [{name: "id"}]}
    {type: "btree", field: [{name: "created_at", op: "desc"}]}
    {type: "btree", field: [{name: "name", op: "asc"}]}
  ]
}