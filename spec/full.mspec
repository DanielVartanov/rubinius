load 'spec/default.mspec'

class MSpecScript
  # An ordered list of the directories containing specs to run
  # as the CI process.
  set :ci_files, [
    'spec/ruby/core',
    'spec/ruby/language',
    'spec/core',
    'spec/compiler',
    'spec/command_line',
    'spec/capi',
    'spec/ruby/library',
    'spec/library',

    'spec/build',

    # excluded because significantly broken
    '^spec/core/compiledmethod',
    '^spec/core/module',
    '^spec/capi/globals',
    '^spec/capi/module',
    '^spec/capi/proc',
    '^spec/capi/struct',

    '^spec/ruby/library/net/ftp',
    '^spec/ruby/library/net/http',
    '^spec/ruby/library/ping',
    '^spec/ruby/library/syslog',
  ] + get(:obsolete_library)
end
