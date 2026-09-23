-- name: GetRealm :one
SELECT *
  FROM token_data.realm
 WHERE realm_id = $1;
