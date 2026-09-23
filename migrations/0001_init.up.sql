CREATE SCHEMA token_data;

-- A realm's token configuration: the claims every token minted for it carries.
CREATE TABLE token_data.realm (
    realm_id UUID   PRIMARY KEY REFERENCES realm_data.realm (id) ON DELETE CASCADE,

    iss      TEXT   NOT NULL,
    aud      TEXT[] NOT NULL DEFAULT '{}'
);
