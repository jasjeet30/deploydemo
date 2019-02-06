# app/controllers/concerns/response.rb
module Response
  def json_response(object, message = "", code = 200, status = :ok)
    render json: {
    	'data' => object,
    	'message' => message,
    	'code' => code
    }, status: status
  end
end
