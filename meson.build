project(
  'io.github.ydalton.MayanCalculator', 
  'vala',
  version : '0.1'
)

gnome = import('gnome')

dependencies = [
    dependency('libadwaita-1')
]

conf = configuration_data()
conf.set_quoted('APP_ID', meson.project_name())
conf.set_quoted('VERSION', meson.project_version())

config_file = configure_file(
  input: 'src/Config.vala.in',
  output: '@BASENAME@',
  configuration: conf
)

sources = files()
sources += config_file

subdir('src')

executable(
  meson.project_name(), 
  sources,
  dependencies: dependencies,
  install: true
)
