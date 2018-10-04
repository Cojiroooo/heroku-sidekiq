class UsersController < ApplicationController
  def index
    @users = User.all
  end
  
  def test_send_mail
    @user = User.find(params[:id])
    
    ContractMailer.contracted(@user).deliver_later
    # deliver_now -> sidekiq使わない
    # deliver_later -> sidekiq使う
    
    @message = "成功しました。"
    
    ExampleJob.perform_later
    ExampleJob.set(wait: 10.second).perform_later
    
    # respond_to do |format|
    #   if @user.save
    #     # 保存後にUserMailerを使用してwelcomeメールを送信
    #     UserMailer.with(user: @user).welcome_email.deliver_later
 
    #     format.html { redirect_to(@user, notice: 'ユーザーが正常に作成されました。') }
    #     format.json { render json: @user, status: :created, location: @user }
    #   else
    #     format.html { render action: 'new' }
    #     format.json { render json: @user.errors, status: :unprocessable_entity }
    #   end
    # end
  end
end
