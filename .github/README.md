# ![logo](https://raw.githubusercontent.com/azerothcore/azerothcore.github.io/master/images/logo-github.png) AzerothCore

## mod-account-mounts

The module's objective is to go through the list of characters on an account (which is activated when the player enters the server, with OnLogin), obtain the playerGuids, and store the mount spells that all the characters know. Then, said list is run through, and the character who does not know the spell is taught said spell. By default it shows mounts that are of the same race, however it can be enabled to show all mounts regardless of faction.

This specific fork is designed to span across multiple accounts shared by one user, which is determined by a shared email.  This data is then translated into `accountID` and `accountGroupID` within `acore_characters.account_wide_join`.

## Prerequisites
# BEFORE INSTALLING

This module will only share mounts across multiple accounts if the `email` column is populated within `acore_auth.account` is populated.  Otherwise, it will just go within the same account like the [official fork](https://github.com/azerothcore/mod-account-mounts).<br />
**You will need to either add email data to **`acore_auth.account`** for every account you wish to be included, or manually populate the **`acore_characters.account_wide_join`** table.**

## Installation
- Make a backup of your database before using this module.
- Clone the repository down to your *azerothcore-wotlk\modules* folder.
- Apply [the SQL query](https://github.com/ChromWolf/mod-account-mounts/blob/master/data/sql/db-characters/Account_Wide_Mounts.sql) to your `acore_characters` database.
- Enjoy!

<!--
- Latest build status with azerothcore:

[![Build Status](https://github.com/azerothcore/mod-account-mounts/workflows/core-build/badge.svg?branch=master&event=push)](https://github.com/azerothcore/mod-account-mounts)
-->

# Need help?

If you encounter a bug, please [open an issue](https://github.com/ChromWolf/mod-account-mounts/issues/new).
     

## Credits
Credits:
* [cgienau](https://github.com/cgienau)
* [pangolp](https://github.com/pangolp)
* [Estaira](https://github.com/Estaira)
* ConanHun513
