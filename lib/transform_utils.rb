# Transform is an helper to transform raw data into active record models
module TransformUtils
  def self.process(data)
    data.teams.each do |team|
      team.players.each do |raw_player|
        player = Player.find_or_create_by(raw_player.to_h.slice(:name, :nationality, :birthdate))
        player&.update(raw_player.to_h.slice(:number, :position))
      end
    end
  end
end
