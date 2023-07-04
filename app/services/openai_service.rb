require 'openai'
require 'dotenv/load'
require 'dotenv'

Dotenv.load

class OpenaiService
  def initialize
    api_key = ENV['OPENAI_API_KEY']
    @openai = OpenAI::Client.new(access_token: api_key)
  end

   def destination(destination)
     @destination = destination
   end

   def get_travel_itinerary(destination, dias)
    prompt = "Irei viajar para #{destination}, me traga as informações relevantes sobre o local e me faça roteiro de turismo para #{dias}."
    response = @openai.chat(
    parameters: {
      model: "gpt-3.5-turbo",
      messages: [
        { role: "user",
          content: prompt
        }
      ], 
      }
    )
    puts response.dig("choices", 0, "message", "content")
   end
end
