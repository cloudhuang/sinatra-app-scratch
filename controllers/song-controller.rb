class SongController < ApplicationController
	get '/' do
		slim :sabout
	end
end