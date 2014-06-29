module ApplicationHelper

  def table_helper(header = '', sub_header = '', columns = [], &block)
    table = ''
    table << "<div class='panel panel-primary'>"
    table << "<div class='panel-heading'><strong>#{header}</strong></div>"
    table << "<div class='panel-body'><p>#{sub_header}</p></div>" unless sub_header.empty?
    table << "<table class='table'><thead><tr>"

    columns.each do |column|
      table << "<th>#{column}</th>"
    end

    table << capture(&block) if block_given?

    table << "</tr>"
    table << "</thead>"
    table << "<tbody>"

    table << "</body>"
    table << "</table>"
    table << "</div>"
    table << "</div>"
    table << "</div>"
    table
  end

end
