class V1::HomeController < ApplicationController
    def index
        render json: {  :homes => [
        {
            :name => 'Rehearsal Hero'
        }
        ] }.to_json
    end
end