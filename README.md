#Introducing the XML-to-HAML gem

    require 'xml-to-haml'

    fruit=<<FRUIT
    <fruit>
      <apple country="france" month="august">tasty<gdelicious/></apple>
      <pear/>
    </fruit>
    FRUIT

    haml = XMLtoHAML.new(fruit).to_s
    puts haml

output:


    %fruit

      %apple{ :country => 'france', :month => 'august'} tasty

        %gdelicious

      %pear

