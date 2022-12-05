desktop_file = i18n.merge_file(
        input: 'org.vanillaos.VanillaDevNotice.desktop.in',
       output: 'org.vanillaos.VanillaDevNotice.desktop',
         type: 'desktop',
       po_dir: '../po',
      install: true,
  install_dir: join_paths(get_option('datadir'), 'applications')
)

desktop_utils = find_program('desktop-file-validate', required: false)
if desktop_utils.found()
  test('Validate desktop file', desktop_utils, args: [desktop_file])
endif

install_data(
  'org.vanillaos.VanillaDevNotice.autostart.desktop',
  install_dir: join_paths(get_option('sysconfdir'), 'xdg', 'autostart')
)

appstream_file = i18n.merge_file(
        input: 'org.vanillaos.VanillaDevNotice.appdata.xml.in',
       output: 'org.vanillaos.VanillaDevNotice.appdata.xml',
       po_dir: '../po',
      install: true,
  install_dir: join_paths(get_option('datadir'), 'appdata')
)

appstream_util = find_program('appstream-util', required: false)
if appstream_util.found()
  test('Validate appstream file', appstream_util, args: ['validate', appstream_file])
endif

install_data('org.vanillaos.VanillaDevNotice.gschema.xml',
  install_dir: join_paths(get_option('datadir'), 'glib-2.0/schemas')
)

compile_schemas = find_program('glib-compile-schemas', required: false)
if compile_schemas.found()
  test('Validate schema file',
       compile_schemas,
       args: ['--strict', '--dry-run', meson.current_source_dir()])
endif

subdir('icons')
