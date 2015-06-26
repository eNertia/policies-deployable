require './lib/redcarpet_header_fix'

set :css_dir, 'assets/css/'
set :js_dir, 'assets/js'
set :images_dir, 'assets/img'
set :fonts_dir, 'assets/fonts'

set :markdown_engine, :redcarpet
set :markdown, :fenced_code_blocks => true, :smartypants => true, :disable_indented_code_blocks => true, :prettify => true, :tables => true, :with_toc_data => true, :no_intra_emphasis => true

activate :syntax

activate :relative_assets
set :relative_links, true

configure :build do
  activate :minify_css
  activate :minify_javascript
end

helpers do

  # FILL IN YOUR COMPANY INFORMATION HERE
  def company_name
    "Catalyze"
  end

  def company_name_phone
    "888-377-3184"
  end

  def company_name_email
    "888-377-3184"
  end

  # FILL IN YOUR SECURITY OFFICER INFORMATION HERE
  def security_officer
    "Ben Uphoff, CTO"
  end

  def security_officer_phone
    "414-335-0253"
  end

  def security_officer_email
    "ben@catalyze.io"
  end

  # FILL IN YOUR PRIVACY OFFICER INFORMATION HERE
  def privacy_officer
    "Travis Good, CEO"
  end

  def privacy_officer_phone
    "303-351-2640"
  end

  def privacy_officer_email
    "travis@catalyze.io"
  end

 end