# spec/requests/tasks_spec.rb
require 'rails_helper'

RSpec.describe 'Tasks API' do
  # Initialize the test data
  let!(:member) { create(:member) }
  let!(:tasks) { create_list(:task, 20, member_id: member.id) }
  let(:member_id) { member.id }
  let(:id) { tasks.first.id }

  # Test suite for GET /members/:member_id/tasks
  describe 'GET /members/:member_id/tasks' do
    before { get "/members/#{member_id}/tasks" }

    context 'when member exists' do
      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end

      it 'returns all member tasks' do
        expect(json.size).to eq(20)
      end
    end

    context 'when todo does not exist' do
      let(:member_id) { 0 }

      it 'returns status code 404' do
        expect(response).to have_http_status(404)
      end

      it 'returns a not found message' do
        expect(response.body).to match(/Couldn't find Member/)
      end
    end
  end

  # Test suite for GET /members/:member_id/tasks/:id
  describe 'GET /members/:member_id/tasks/:id' do
    before { get "/members/#{member_id}/tasks/#{id}" }

    context 'when member item exists' do
      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end

      it 'returns the task' do
        expect(json['id']).to eq(id)
      end
    end

    context 'when todo item does not exist' do
      let(:id) { 0 }

      it 'returns status code 404' do
        expect(response).to have_http_status(404)
      end

      it 'returns a not found message' do
        expect(response.body).to match(/Couldn't find Item/)
      end
    end
  end

  # Test suite for PUT /members/:member_id/tasks
  describe 'POST /members/:member_id/tasks' do
    let(:valid_attributes) { { name: 'Load Dishwasher', done: false } }

    context 'when request attributes are valid' do
      before { post "/members/#{member_id}/tasks", params: valid_attributes }

      it 'returns status code 201' do
        expect(response).to have_http_status(201)
      end
    end

    context 'when an invalid request' do
      before { post "/members/#{member_id}/tasks", params: {} }

      it 'returns status code 422' do
        expect(response).to have_http_status(422)
      end

      it 'returns a failure message' do
        expect(response.body).to match(/Validation failed: Name can't be blank/)
      end
    end
  end

  # Test suite for PUT /members/:member_id/tasks/:id
  describe 'PUT /members/:member_id/tasks/:id' do
    let(:valid_attributes) { { title: 'Hard coding' } }

    before { put "/members/#{member_id}/tasks/#{id}", params: valid_attributes }

    context 'when task exists' do
      it 'returns status code 204' do
        expect(response).to have_http_status(204)
      end

      it 'updates the task' do
        updated_task = Task.find(id)
        expect(updated_task.name).to match(/Load Dishwasher/)
      end
    end

    context 'when the item does not exist' do
      let(:id) { 0 }

      it 'returns status code 404' do
        expect(response).to have_http_status(404)
      end

      it 'returns a not found message' do
        expect(response.body).to match(/Couldn't find Task/)
      end
    end
  end

  # Test suite for DELETE /todos/:id
  describe 'DELETE /members/:id' do
    before { delete "/members/#{member_id}/tasks/#{id}" }

    it 'returns status code 204' do
      expect(response).to have_http_status(204)
    end
  end
end