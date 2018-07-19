# require "spec_helper"
#
# describe "CLI Commands" do
#   let(:cli) { DriversProblem::CLI.new.call }
#   # let(:input) { 'cat input.txt | ./bin/drivers_problem'}
#
#   describe "'call'" do
#     it "triggers #making_objects, #sort_data, and #final_output, in that order" do
#       # allow(cli).to receive(:read).and_return("list songs", "exit")
#
#       expect(cli).to receive(:making_objects)
#       expect(cli).to receive(:sort_data)
#       expect(cli).to receive(:final_output)
#
#       capture_puts { cli.call }
#     end
#   end
#
#   describe "'making objects'" do
#     it "triggers #making_objects" do
#       # allow(cli).to receive(:read).and_return("list artists", "exit")
#
#       expect(cli).to receive(:making_objects)
#
#       capture_puts { cli.call }
#     end
#   end
#
#   describe "'sort data'" do
#     it "triggers #list_genres" do
#       # allow(cli).to receive(:read).and_return("list genres", "exit")
#
#       expect(cli).to receive(:sort_data)
#
#       capture_puts { cli.call }
#     end
#   end
#
#   describe "'final output'" do
#     it "triggers #final_output" do
#       # allow(cli).to receive(:read).and_return("list artist", "exit")
#
#       expect(cli).to receive(:final_output)
#
#       capture_puts { cli.call }
#     end
#   end
#
# end

# describe "'list genre'" do
#   it "triggers #list_songs_by_genre" do
#     allow(music_library_controller).to receive(:gets).and_return("list genre", "exit")
#
#     expect(cli).to receive(:list_songs_by_genre)
#
#     capture_puts { cli.call }
#   end
# end
#
# describe "'play song'" do
#   it "triggers #play_song" do
#     allow(cli).to receive(:gets).and_return("play song", "2", "exit")
#
#     expect(cli).to receive(:play_song)
#
#     capture_puts { cli.call }
#   end
# end
