module MazeEscape
  MAZE = [
    [1, 1, 1, 1, 1, 1, 1, 1, 0, 1],
    [1, 3, 1, 0, 1, 0, 0, 0, 0, 1],
    [1, 0, 1, 0, 0, 0, 1, 1, 0, 1],
    [1, 0, 1, 1, 1, 1, 1, 0, 0, 1],
    [1, 0, 1, 0, 0, 0, 0, 0, 0, 1],
    [1, 0, 1, 0, 1, 0, 1, 0, 0, 1],
    [1, 0, 1, 0, 1, 0, 0, 0, 0, 0],
    [1, 0, 1, 0, 1, 0, 1, 1, 0, 1],
    [1, 0, 0, 0, 1, 0, 0, 0, 0, 1],
    [1, 1, 1, 0, 1, 1, 1, 1, 2, 1]
  ]

  def self.maze_steps(array)
    current_pos = [8, 9]

    array.each do |op|
      current_pos = update_pos(current_pos, op)

      current_value = maze_value(current_pos)

      return 'Dead' if current_value == 1

      return 'Finish' if current_value == 3
    end

    'Lost'
  end

  def self.update_pos(current_pos, operation)
    case operation
    when 'N' then [current_pos[0], current_pos[1] - 1]
    when 'E' then [current_pos[0] + 1, current_pos[1]]
    when 'W' then [current_pos[0] - 1, current_pos[1]]
    when 'S' then [current_pos[0], current_pos[1] + 1]
    end
  end

  def self.maze_value(position)
    x = position[0]
    y = position[1]

    MAZE[y][x]
  end
end

require 'rspec'

describe MazeEscape do
  describe '.maze_steps' do
    context 'when directions in maze lead to a wall' do
      let!(:array) { %w[N E E] }

      it 'returns "Dead"' do
        expect(MazeEscape.maze_steps(array)).to eq('Dead')
      end
    end

    context 'when directions in maze do not end in wall or end point' do
      let!(:array) { %w[N N N E] }

      it 'returns "Lost"' do
        expect(MazeEscape.maze_steps(array)).to eq('Lost')
      end
    end

    context 'when directions in maze lead to end point' do
      let!(:array) do
        %w[N W W W N N N N W W S S S S W W N N N N N N N]
      end

      it 'returns "Finish"' do
        expect(MazeEscape.maze_steps(array)).to eq('Finish')
      end
    end
  end
end