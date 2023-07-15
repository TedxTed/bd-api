module V1::Member
  class Api < Grape::API
    resources :members do
      post '/register' do
        params do
          requires :user_name, type: String
          requires :password, type: String
        end
        user = User.create!(name: params[:user_name], password: params[:password])

        { status: 'success',
          user: }
      end
    end
  end
end
