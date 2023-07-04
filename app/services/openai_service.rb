require 'openai'
require 'dotenv/load'

class OpenaiService
  def initialize
    api_key = ENV['OPENAI_KEY']
    @openai = OpenAI::Client.new(api_key: api_key)
  end

  def destination(destination)
    @destination = destination
  end

  def get_destination_info(destination)
    prompt = "Irei viajar para #{destination}, me traga as informações relevantes sobre o local."
    response = @openai.completions.create_engine("davinci-codex").prompt(prompt).generate(n: 1, stop: nil, temperature: 0.5)
    destination_info = response.choices.first.text.strip

    return { destination_info: destination_info }
  end

  def get_activity_suggestions(destination)
    prompt = "Estarei viajando para #{destination}, traga me um roteiro de atividades para turismo."
    response = @openai.completions.create_engine("davinci-codex").prompt(prompt).generate(n: 5, stop: nil, temperature: 0.7)
    activity_suggestions = response.choices.map(&:text).map(&:strip)

    return { activity_suggestions: activity_suggestions }
  end
end
