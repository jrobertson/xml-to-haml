#!/usr/bin/ruby

# file: xml-to-haml.rb

require 'rexml/document'

class XMLtoHAML
  include REXML

  def initialize(s)
    doc = Document.new(s)
    @haml = xml_to_haml(doc)
  end

  def to_s
    @haml
  end

  def xml_to_haml(nodex, indent ='')

    buffer = nodex.elements.map do |node|

      attributex = ' '
      buffer = "%s" % [indent + '%' + node.name]

      if node.attributes.size > 0 then
        alist = Array.new(node.attributes.size)
        i = 0
        node.attributes.each { |x, y|
          alist[i] = " :#{x} => '#{y}'"  
          i += 1
        }
        attributex = '{' + alist.join(",")  + '} ' 
      end
   
      buffer +=  "%s" % [attributex + node.text] if not node.text.nil?  
      buffer += "\n"
      buffer += xml_to_haml(node, indent + '  ')

      buffer
    end

    buffer.join
  end

end

