task enrich_bugsnag: :environment do
  org_id = '61081ca4cfd341000e7a1f27'
  project_id = '61808d189963eb001151960f'

  errors = Bugsnag::Api.errors(project_id)
  errors.each do |error|
    events = Bugsnag::Api.error_events(project_id, error[:id])
    binding.pry
  end
end
