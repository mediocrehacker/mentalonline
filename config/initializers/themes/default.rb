# Theme configuration file
# ========================
# This file is used for all theme configuration.
# It's where you define everything that's editable in Spina CMS.

Spina::Theme.register do |theme|
  # All views are namespaced based on the theme's name
  theme.name = 'default'
  theme.title = 'Тема по умолчанию'

  # Parts
  # Define all editable parts you want to use in your view templates
  #
  # Built-in part types:
  # - Line
  # - MultiLine
  # - Text (Rich text editor)
  # - Image
  # - ImageCollection
  # - Attachment
  # - Option
  # - Repeater
  theme.parts = [{
    name: 'content',
    title: 'Content',
    part_type: 'Spina::Parts::Text'
  }, {
    name: 'portfolio', # added this part
    title: 'Portfolio',
    part_type: 'Spina::Parts::Text'
  }, {
    name: 'header_image',
    title: 'Header image',
    part_type: 'Spina::Parts::Image'
  }, {
    name: 'header',
    title: 'header',
    part_type: 'Spina::Parts::Text'
  }]

  # View templates
  # Every page has a view template stored in app/views/my_theme/pages/*
  # You define which parts you want to enable for every view template
  # by referencing them from the theme.parts configuration above.
  theme.view_templates = [{
    name: 'homepage',
    title: 'Homepage',
    parts: %w[content header_image]
  }, {
    name: 'show',
    title: 'Default',
    description: 'A simple page',
    usage: 'Use for your content',
    parts: %w[content portfolio] # added 'portfolio'
  }]

  # Custom pages
  # Some pages should not be created by the user, but generated automatically.
  # By naming them you can reference them in your code.
  theme.custom_pages = [
    { name: 'homepage', title: 'Главная', deletable: false, view_template: 'homepage' }
  ]

  # Navigations (optional)
  # If your project has multiple navigations, it can be useful to configure multiple
  # navigations.
  theme.navigations = [
    { name: 'main', label: 'Главное Меню' },
    { name: 'footer', label: 'Меню Футера' }
  ]

  # Layout parts (optional)
  # You can create global content that doesn't belong to one specific page. We call these layout parts.
  # You only have to reference the name of the parts you want to have here.
  theme.layout_parts = %w(header)

  # Resources (optional)
  # Think of resources as a collection of pages. They are managed separately in Spina
  # allowing you to separate these pages from the 'main' collection of pages.
  theme.resources = []

  # Plugins (optional)
  theme.plugins = []

  # Embeds (optional)
  theme.embeds = []
end
