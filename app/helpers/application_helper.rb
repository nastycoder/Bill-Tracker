module ApplicationHelper

  def table_helper(header, sub_header, columns, &block)
    table = ''
    table << "<div class='panel panel-primary'>"
    table << "<div class='panel-heading'><strong>#{header}</strong></div>"
    table << "<div class='panel-body'><p>#{sub_header}</p></div>"
    table << "<table class='table'><thead><tr>"

    columns.each do |column|
      table << "<th>#{column}</th>"
    end

    table << "</tr>"
    table << "</thead>"
    table << "<tbody>"

  end

  def end_table
    table = ''
    table << "</body>"
    table << "</table>"
    table << "</div>"
    table << "</div>"
    table << "</div>"
  end
end
