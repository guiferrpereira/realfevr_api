require 'rails_helper'

RSpec.describe Api::NotificationsController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/api/v1/notifications').to route_to('api/notifications#index')
    end

    it 'routes to #show' do
      expect(get: '/api/v1/notifications/1').to route_to('api/notifications#show', id: '1')
    end

    it 'routes to #create' do
      expect(post: '/api/v1/notifications').to route_to('api/notifications#create')
    end

    it 'routes to #update via PUT' do
      expect(put: '/api/v1/notifications/1').to route_to('api/notifications#update', id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/api/v1/notifications/1').to route_to('api/notifications#update', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/api/v1/notifications/1').to route_to('api/notifications#destroy', id: '1')
    end
  end
end
