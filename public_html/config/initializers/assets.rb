# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'
Rails.application.config.assets.precompile += %w( intranet.css )
Rails.application.config.assets.precompile += %w( intranet.js )
Rails.application.config.assets.precompile += %w( ckeditor/config.js )

Rails.application.config.assets.precompile += %w( footermanifest.js)
Rails.application.config.assets.precompile += %w( embed-api/components/view-selector2.js)
Rails.application.config.assets.precompile += %w( embed-api/components/date-range-selector.js)
Rails.application.config.assets.precompile += %w( embed-api/components/active-users.js)

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )
