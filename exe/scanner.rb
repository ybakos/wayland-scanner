#!/usr/bin/env ruby

require 'nokogiri'

DTD_PATH = "wayland.dtd"
XML_PATH = "wayland.xml"

doc = Nokogiri::XML::Document.parse(File.read(XML_PATH), nil, nil, Nokogiri::XML::ParseOptions::DTDVALID)

unless doc.external_subset.validate(doc).empty?
  abort("Error: #{XML_PATH} failed validation with #{DTD_PATH}")
end
