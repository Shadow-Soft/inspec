require 'rspec/core'
require 'rspec/core/formatters/html_formatter'

# Vanilla RSpec HTML formatter
class InspecRspecHtml < RSpec::Core::Formatters::HtmlFormatter
  RSpec::Core::Formatters.register self

  private

  def format_example(example)
    res = super(example)
    res[:id] = example.metadata[:id]
    res
  end
end
