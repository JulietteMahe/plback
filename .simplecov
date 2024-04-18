# frozen_string_literal: true

SimpleCov.start 'rails' do
  add_group 'API', 'app/api'
  add_group 'Channels', 'app/channels'
  add_group 'Controllers', 'app/controllers'
  add_group 'Helpers', 'app/helpers'
  add_group 'Jobs', 'app/jobs'
  add_group 'Mailers', 'app/mailers'
  add_group 'Models', 'app/models'
  add_group 'Policies', 'app/policies'
  add_group 'Serializers', 'app/serializers'
  add_group 'Views', 'app/views'
end
