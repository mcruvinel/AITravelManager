class OpenAIService
    def initialize(api_key)
      @api_key = ENV['OPENAI_KEY']
    end
  
    def get_destination_info(destination)
        @destination = destination
    end
  
    def get_activity_suggestions(preferences)
    end


  end
  