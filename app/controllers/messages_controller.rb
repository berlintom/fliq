class MessagesController < ApplicationController
  def create

    @match = Match.find(params[:match_id])
    @message = Message.new(message_params)
    @message.match = @match
    @message.user = current_user
    @participations = @match.participations
    @userparticipants = []
    @participations.each do |participation|
      @userparticipants << participation.user
    end
    @current_userparticipation = @participations.find_by(user: current_user)
    assignteams(@participations)
    matchdone?(@match)
    @score = Score.new(match: @match)
    if @message.save!
      ChatroomChannel.broadcast_to(
        @match,
        render_to_string(partial: "message", locals: { message: @message })
      )
      redirect_to match_path(@match, anchor: "message-#{@message.id}")
    else
      render "matches/show"
    end

  end

  private
  def assignteams(participations)
    @team1 = []
    @team2 = []
    participations.each do |participation|
      if participation.team == 1
        @team1 << participation
      else
        @team2 << participation
      end
    end
  end

  def matchdone?(match)
    @done = false
    if match.start_time.past? && match.user == current_user && match.score.nil?
      @done = true
    end
  end

  def message_params
    params.require(:message).permit(:content)
  end
end
