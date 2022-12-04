vanilla_dev_notice_sources = [
  'main.vala',
  'application.vala',
  'window.vala',
]

vanilla_dev_notice_deps = [
  dependency('gtk4'),
  dependency('libadwaita-1'),
]

vanilla_dev_notice_sources += gnome.compile_resources('vanilla-dev-notice-resources',
  'vanilla-dev-notice.gresource.xml',
  c_name: 'vanilla_dev_notice'
)

executable('vanilla-dev-notice', vanilla_dev_notice_sources,
  dependencies: vanilla_dev_notice_deps,
       install: true,
)
