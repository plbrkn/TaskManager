# frozen_string_literal: true

require 'js-routes'

namespace :js_routes do
  desc 'Generate js routes for webpack'
  task generate: :environment do
    ROUTES_DIR = 'routes';
    ROUTES_DIR_PATH = File.join('app', 'javascript', ROUTES_DIR);
    FileUtils.mkdir_p(ROUTES_DIR_PATH)
    file_name = File.join(ROUTES_DIR, 'ApiRoutes.js')
    JsRoutes.generate!(file_name, camel_case: true)
  end
end

