module Slack::Users
    def self.get_presence(user)
        uri = URI.parse('https://slack.com/api/users.getPresence')

        https = Net::HTTP.new(uri.host, uri.port)
        https.use_ssl = true

        request = Net::HTTP::Post.new(uri.path)

        params = {
            'token' => Slack.token,
            'user' => user
        }

        request.body = URI.encode_www_form(params)

        response = https.request(request)

        return JSON.parse(response.body)
    end

    def self.info(user)
        uri = URI.parse('https://slack.com/api/users.getPresence')

        https = Net::HTTP.new(uri.host, uri.port)
        https.use_ssl = true

        request = Net::HTTP::Post.new(uri.path)

        params = {
            'token' => Slack.token,
            'user' => user
        }

        request.body = URI.encode_www_form(params)

        response = https.request(request)

        return JSON.parse(response.body)
    end

    def self.list
        uri = URI.parse('https://slack.com/api/users.getPresence')

        https = Net::HTTP.new(uri.host, uri.port)
        https.use_ssl = true

        request = Net::HTTP::Post.new(uri.path)

        params = {
            'token' => Slack.token
        }

        request.body = URI.encode_www_form(params)

        response = https.request(request)

        return JSON.parse(response.body)
    end

    def self.set_presence(presence)
        uri = URI.parse('https://slack.com/api/users.setPresence')

        https = Net::HTTP.new(uri.host, uri.port)
        https.use_ssl = true

        request = Net::HTTP::Post.new(uri.path)

        params = {
            'token' => Slack.token,
            'presence' => presence
        }

        request.body = URI.encode_www_form(params)

        response = https.request(request)

        return JSON.parse(response.body)
    end
end
