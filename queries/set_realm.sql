-- name: SetRealm :exec
INSERT INTO token_data.realm (realm_id, iss, aud)
VALUES ($1, $2, $3)
ON CONFLICT (realm_id) DO UPDATE
   SET iss = EXCLUDED.iss,
       aud = EXCLUDED.aud;
