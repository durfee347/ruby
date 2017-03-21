Gem::Specification.new do |s|
  s.name = %q{nas-yahoo_stock}
  s.version = "1.0.8"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Nasir Jamal"]
  s.date = %q{2011-05-25}
  s.description = %q{Yahoo Stock is a Ruby library for extracting information about stocks from yahoo finance}
  s.email = %q{nas35_in@yahoo.com}
  s.extra_rdoc_files = ["README.rdoc"]
  s.files = ["History.txt",
             "Manifest.txt",
             "README.rdoc",
             "Rakefile",
             "lib/yahoo_stock.rb",
             "lib/yahoo_stock/base.rb",
             "lib/yahoo_stock/history.rb",
             "lib/yahoo_stock/interface.rb",
             "lib/yahoo_stock/interface/history.rb",
             "lib/yahoo_stock/interface/quote.rb",
             "lib/yahoo_stock/interface/scrip_symbol.rb",
             "lib/yahoo_stock/quote.rb",
             "lib/yahoo_stock/result.rb",
             "lib/yahoo_stock/result/array_format.rb",
             "lib/yahoo_stock/result/hash_format.rb",
             "lib/yahoo_stock/result/xml_format.rb",
             "lib/yahoo_stock/scrip_symbol.rb"
             ]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/nas/yahoo_stock}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.0}
  s.summary = %q{Yahoo Stock is a Ruby library for extracting information about stocks from yahoo finance.}
  s.test_files = ["spec/spec_helper.rb",
                  "spec/yahoo_stock/base_spec.rb",
                  "spec/yahoo_stock/history_spec.rb",
                  "spec/yahoo_stock/interface_spec.rb",
                  "spec/yahoo_stock/interface/history_spec.rb",
                  "spec/yahoo_stock/interface/quote_spec.rb",
                  "spec/yahoo_stock/interface/scrip_symbol_spec.rb",
                  "spec/yahoo_stock/quote_spec.rb",
                  "spec/yahoo_stock/result_spec.rb",
                  "spec/yahoo_stock/result/array_format_spec.rb",
                  "spec/yahoo_stock/result/hash_format_spec.rb",
                  "spec/yahoo_stock/result/xml_format_spec.rb",
                  "spec/yahoo_stock/scrip_symbol_spec.rb",
                  "features/history.feature",
                  "features/quotes.feature",
                  "features/script_symbol.feature",
                  "features/step_definitions/history_steps.rb",
                  "features/step_definitions/quotes_steps.rb",
                  "features/step_definitions/script_symbol_steps.rb"
                  ]
  s.platform = Gem::Platform::RUBY 
  s.required_ruby_version = '>=1.8'
  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2
    
    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<builder>, [">= 2.1.2"])
    else
      s.add_dependency(%q<builder>, [">= 2.1.2"])
    end
  else
    s.add_dependency(%q<builder>, [">= 2.1.2"])
  end
end
