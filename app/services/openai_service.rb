require 'openai'
require 'dotenv/load'
require 'dotenv'

Dotenv.load

class OpenaiService
  def initialize
    api_key = ENV['OPENAI_API_KEY']
    @openai = OpenAI::Client.new(access_token: api_key)
  end

   def get_travel_itinerary(city, country, dias)
    prompt = "Irei viajar para #{city} #{country}, me traga as informações relevantes sobre o local e me faça roteiro de turismo para #{dias} dias."
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
