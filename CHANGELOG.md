# Changelog
Following Semantic Versioning 2.
This project is in BETA, but going to be tested in production.

## next version:

## Version 0.0.5 (MINOR)
- Make gem compatible with Decidim v0.20 (tested against decidim v0.21)
- Remove initializer to force `Decidim::CurrentOrganization` to be executed before `Warden::Manager`. It is already done in Decidim since v0.16

## Version 0.0.4 (PATCH)
- Remove Gemfile.lock to avoid problems with apps using this gem and solving devise vulneravility: https://github.com/plataformatec/devise/issues/4981.

## Version 0.0.3 (PATCH)
- Copied icon from omniauth-idcat_mobil to be used since decidim v0.16.0.

## Version 0.0.2 (PATCH)
- [FIX] Require omniauth-idcat_mobil before actual egine.
- [REFACTOR] Remove dependency declaration from omniauth-idcat_mobil from Gemfile, already setted in gemspec file.

## Version 0.0.1 (PATCH)
- First release.
