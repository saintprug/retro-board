require './config/environment'

use Rack::Session::Cookie, secret: ENV['WEB_SESSIONS_SECRET']
use OmniAuth::Builder do
  provider :github, ENV['GITHUB_KEY'], ENV['GITHUB_SECRET'],
           scope: 'read:user', provider_ignores_state: true
end

run Hanami.app
