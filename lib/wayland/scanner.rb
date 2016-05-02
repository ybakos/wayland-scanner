require 'wayland/scanner/version'
require 'nokogiri'

module Wayland
  module Scanner

    class Scanner

      def initialize(xml, destination)
        @xml = xml
        @destination = destination
      end

      def xml_valid?
        doc = Nokogiri::XML::Document.parse(@xml, nil, nil, Nokogiri::XML::ParseOptions::DTDVALID)
        return doc.external_subset.validate(doc).empty?
      rescue Nokogiri::XML::SyntaxError => e
        puts "Error: #{e.message}"
        return false
      end

      def scan!
        puts "Whooopee scanning!"
      end

    end

  end
end
