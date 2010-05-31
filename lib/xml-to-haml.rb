#!/usr/bin/ruby

# file: xml-to-haml.rb

require 'rexml/document'

class XMLtoHAML
  include REXML

  def initialize()
    doc = Document.new(s)
    xml_to_haml(doc)
  end

  def xml_to_haml(nodex, indent ='')

    nodex.elements.each do |node|

      attributex = ' '
      buffer = indent + '%' + node.name

      if node.attributes.size > 0 then
        alist = Array.new(node.attributes.size)
        i = 0
        node.attributes.each { |x, y|
          alist[i] = " :#{x} => '#{y}'"  
          i += 1
        }
        attributex = '{' + alist.join(",")  + '} ' 
      end
   
      buffer +=  attributex + node.text if not node.text.nil?  
      puts buffer
      xml_to_haml(node, indent + '  ')
    end
  end

end
