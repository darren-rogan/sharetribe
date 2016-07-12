# Initialize LandingPageStore
#
# Decide which implementation to use, database or static.

CustomLandingPage::LandingPageStore =
  if APP_CONFIG.clp_static_enabled.to_s == "true"
    CustomLandingPage::LandingPageStoreStatic.new(APP_CONFIG.clp_static_released_version)
  else
    CustomLandingPage::LandingPageStoreDB
  end
