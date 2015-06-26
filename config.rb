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
    "Acme Inc"
  end

  def company_name_phone
    "888-888-8888"
  end

  def company_name_email
    "contact@company.com"
  end

  def company_url
    "company.com"
  end

  # FILL IN YOUR SECURITY OFFICER INFORMATION HERE
  def security_officer
    "John Smith, CTO"
  end

  def security_officer_phone
    "111-111-1111"
  end

  def security_officer_email
    "john.s@company.com"
  end

  # FILL IN YOUR PRIVACY OFFICER INFORMATION HERE
  def privacy_officer
    "Jane Doe, CEO"
  end

  def privacy_officer_phone
    "111-111-1111"
  end

  def privacy_officer_email
    "jane.d@company.com"
  end

 end