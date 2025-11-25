DROP TABLE IF EXISTS acore_characters.account_wide_join;
CREATE TABLE acore_characters.account_wide_join (
	accountGroupID int not null,
	accountID int not null
);

INSERT INTO account_wide_join (accountGroupID, accountID)
SELECT
    DENSE_RANK() OVER (ORDER BY a.email) AS accountGroupID,
    a.id AS accountID
FROM acore_auth.account a
ORDER BY a.email, a.id;