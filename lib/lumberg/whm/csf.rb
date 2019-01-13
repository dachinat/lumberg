module Lumberg
  module Whm
    class Csf < Base

      def grep(options = {})
        ip = options.delete(:ip)

        server.perform_request('configserver/csf.cgi', options.merge('csf': true,
                                                                     'ip': ip,
                                                                     'action': 'grep'))
      end

      def unblock(options = {})
        ip = options.delete(:ip)
        comment = options.delete(:comment) || ''

        server.perform_request('configserver/csf.cgi', options.merge('csf': true,
                                                                               'ip': ip,
                                                                               'action': 'kill',
                                                                               'comment': comment))
      end

      def allow(options = {})
        ip = options.delete(:ip)

        server.perform_request('configserver/csf.cgi', options.merge('csf': true,
                                                                               'ip': ip,
                                                                               'action': 'qallow',
                                                                               'comment': comment))
      end

      def deny(options = {})
        ip = options.delete(:ip)

        server.perform_request('configserver/csf.cgi', options.merge('csf': true,
                                                                               'ip': ip,
                                                                               'action': 'qdeny',
                                                                               'comment': comment))
      end

      def ignore(options = {})
        ip = options.delete(:ip)

        server.perform_request('configserver/csf.cgi', options.merge('csf': true,
                                                                               'ip': ip,
                                                                               'action': 'qignore',
                                                                               'comment': comment))
      end
    end
  end
end
